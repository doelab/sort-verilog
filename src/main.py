import argparse
import json
import sys
import os

def group_comparisons(nw, d):
    """
    Group comparison pairs into stages based on the existing grouping in the JSON file.
    Each line in the JSON file represents a stage.
    
    Args:
        nw (list): List of comparison pairs, e.g., [[0,8], [1,9], [2,7], ...]
        d (int): Expected number of stages
    
    Returns:
        list: List of stages, each containing the pairs from the corresponding line in the JSON
    """
    # The JSON file already has the pairs grouped by line
    # We need to split them into stages based on the line breaks in the JSON
    stages = []
    current_stage = []
    prev_first = None
    
    for pair in nw:
        # If we hit a new line in the JSON (indicated by a smaller first number
        # and we have a previous number to compare against), start a new stage
        if prev_first is not None and pair[0] < prev_first:
            stages.append(current_stage)
            current_stage = []
        current_stage.append(pair)
        prev_first = pair[0]
    
    # Add the last stage
    if current_stage:
        stages.append(current_stage)
    
    # Verify the number of stages matches the expected depth
    if len(stages) != d:
        raise ValueError(f"Number of stages {len(stages)} does not match expected {d}")
    
    return stages

def generate_systemverilog(data, pipeline_hex, data_type, width, module_name):
    # Extract and validate JSON data
    n = data['N']
    nw = data['nw']
    d = data['D']
    is_symmetric = data.get('symmetric', False)
    stages = group_comparisons(nw, d)
    
    if len(nw) != data['L']:
        raise ValueError("Number of pairs in 'nw' does not match 'L'")
    for pair in nw:
        if not (isinstance(pair, list) and len(pair) == 2 and
                0 <= pair[0] < n and 0 <= pair[1] < n and pair[0] != pair[1]):
            raise ValueError("Invalid pair in 'nw'")

    # Convert pipeline_hex to a list of booleans
    pipeline_bin = bin(int(pipeline_hex, 16))[2:].zfill(d)
    pipeline = [bool(int(c)) for c in pipeline_bin[-d:]]
    latency = sum(pipeline)

    # Define data type
    data_t = f"logic [{'signed ' if data_type == 'signed' else ''}{width-1}:0]"

    code = []
    code.append(f"typedef {data_t} data_t;\n")

    # Sorting Network Module
    code.append(f"module {module_name} (")
    code.append("    input logic clk,")
    for i in range(n):
        code.append(f"    input data_t data_{i},")
    for i in range(n-1):
        code.append(f"    output data_t sort_{i},")
    code.append(f"    output data_t sort_{n-1}")
    code.append(");\n")

    # Declare intermediate signals
    for i in range(d):
        for j in range(n):
            signal_type = ""
            code.append(f"    {signal_type} {data_t} stage_{i}_out_{j};")

    # Generate logic for each stage
    for i in range(d):
        inputs = [f"data_{j}" if i == 0 else f"stage_{i-1}_out_{j}" for j in range(n)]
        outputs = [f"stage_{i}_out_{j}" for j in range(n)]
        
        if is_symmetric and i >= d//2:
            # For symmetric networks, mirror the first half stages
            mirror_stage = d - 1 - i
            for a, b in stages[mirror_stage]:
                # Mirror the indices for the second half
                a_mirror = n - 1 - a
                b_mirror = n - 1 - b
                if pipeline[i]:
                    code.append(f"    always_ff @(posedge clk) begin")
                    code.append(f"        if ({inputs[a_mirror]} <= {inputs[b_mirror]}) begin")
                    code.append(f"            {outputs[a_mirror]} <= {inputs[a_mirror]};")
                    code.append(f"            {outputs[b_mirror]} <= {inputs[b_mirror]};")
                    code.append(f"        end else begin")
                    code.append(f"            {outputs[a_mirror]} <= {inputs[b_mirror]};")
                    code.append(f"            {outputs[b_mirror]} <= {inputs[a_mirror]};")
                    code.append(f"        end")
                    code.append("    end")
                else:
                    code.append(f"    assign {outputs[a_mirror]} = ({inputs[a_mirror]} <= {inputs[b_mirror]}) ? {inputs[a_mirror]} : {inputs[b_mirror]};")
                    code.append(f"    assign {outputs[b_mirror]} = ({inputs[a_mirror]} <= {inputs[b_mirror]}) ? {inputs[b_mirror]} : {inputs[a_mirror]};")
        else:
            # Original stage generation
            if pipeline[i]:
                code.append(f"    always_ff @(posedge clk) begin")
                for a, b in stages[i]:
                    code.append(f"        if ({inputs[a]} <= {inputs[b]}) begin")
                    code.append(f"            {outputs[a]} <= {inputs[a]};")
                    code.append(f"            {outputs[b]} <= {inputs[b]};")
                    code.append(f"        end else begin")
                    code.append(f"            {outputs[a]} <= {inputs[b]};")
                    code.append(f"            {outputs[b]} <= {inputs[a]};")
                    code.append(f"        end")
                compared = set(a for pair in stages[i] for a in pair)
                for k in range(n):
                    if k not in compared:
                        code.append(f"        {outputs[k]} <= {inputs[k]};")
                code.append("    end")
            else:
                for a, b in stages[i]:
                    code.append(f"    assign {outputs[a]} = ({inputs[a]} <= {inputs[b]}) ? {inputs[a]} : {inputs[b]};")
                    code.append(f"    assign {outputs[b]} = ({inputs[a]} <= {inputs[b]}) ? {inputs[b]} : {inputs[a]};")
                compared = set(a for pair in stages[i] for a in pair)
                for k in range(n):
                    if k not in compared:
                        code.append(f"    assign {outputs[k]} = {inputs[k]};")

    # Connect final stage to outputs
    for j in range(n):
        code.append(f"    assign sort_{j} = stage_{d-1}_out_{j};")
    code.append("endmodule\n")

    # Testbench Module
    code.append(f"module {module_name}_tb;\n")
    code.append("    logic clk;")
    for i in range(n):
        code.append(f"    data_t data_{i};")
    for i in range(n):
        code.append(f"    data_t sort_{i};")
    code.append("\n    // Clock generation")
    code.append("    initial begin")
    code.append("        clk = 0;")
    code.append("        forever #5 clk = ~clk;")
    code.append("    end\n")
    code.append("    // Instantiate DUT")
    code.append(f"    {module_name} dut (")
    code.append("        .clk(clk),")
    for i in range(n):
        code.append(f"        .data_{i}(data_{i}),")
    for i in range(n-1):
        code.append(f"        .sort_{i}(sort_{i}),")
    code.append(f"        .sort_{n-1}(sort_{n-1})")
    code.append("    );\n")
    code.append("    // Apply random inputs")
    code.append("    initial begin")
    code.append("        repeat (100) begin")
    code.append("            @(posedge clk);")
    for i in range(n):
        code.append(f"            data_{i} = $urandom;")
    code.append("        end")
    code.append("        #100 $finish;")
    code.append("    end\n")
    code.append("    // Verification logic")
    code.append(f"    localparam int latency = {latency};")
    code.append("    integer cycle_count = 0;")
    code.append("    integer success_count = 0;")
    code.append("    integer failure_count = 0;")
    code.append("    always @(posedge clk) begin")
    code.append("        cycle_count <= cycle_count + 1;")
    code.append("        if (cycle_count > latency) begin")
    condition = " && ".join([f"sort_{i} <= sort_{i+1}" for i in range(n-1)])
    code.append(f"            if ({condition}) begin")
    code.append("                success_count <= success_count + 1;")
    code.append("            end else begin")
    code.append("                failure_count <= failure_count + 1;")
    code.append("            end")
    code.append("            $display(\"Cycle: %0d, Success: %0d, Failure: %0d\", cycle_count, success_count, failure_count);")
    code.append("        end")
    code.append("    end\n")
    code.append("endmodule")

    return "\n".join(code)

def main():
    parser = argparse.ArgumentParser(description='Generate SystemVerilog for sorting networks.')
    parser.add_argument('--file', type=str, help='Input JSON file (default: stdin)')
    parser.add_argument('--data-type', choices=['unsigned', 'signed'], default='unsigned', help='Data type')
    parser.add_argument('--width', type=int, default=32, help='Data width in bits')
    parser.add_argument('--pipeline', type=str, default='0x0', help='Pipeline stages in hex')
    parser.add_argument('--output-file', type=str, help='Output SystemVerilog file')
    args = parser.parse_args()

    if args.file:
        with open(args.file, 'r') as f:
            data = json.load(f)
        # Get module name from input file (without extension)
        module_name = os.path.splitext(os.path.basename(args.file))[0].lower()
    else:
        data = json.load(sys.stdin)
        module_name = "sorting_network"  # Default name if reading from stdin

    sv_code = generate_systemverilog(data, args.pipeline, args.data_type, args.width, module_name)

    if args.output_file:
        with open(args.output_file, 'w') as f:
            f.write(sv_code)
    else:
        print(sv_code)

if __name__ == "__main__":
    main()