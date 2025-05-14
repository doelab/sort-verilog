typedef logic [31:0] data_t;

module sort_2_1_1 (
    input logic clk,
    input data_t data_0,
    input data_t data_1,
    output data_t sort_0,
    output data_t sort_1
);

     logic [31:0] stage_0_out_0;
     logic [31:0] stage_0_out_1;
    assign stage_0_out_1 = (data_1 <= data_0) ? data_1 : data_0;
    assign stage_0_out_0 = (data_1 <= data_0) ? data_0 : data_1;
    assign sort_0 = stage_0_out_0;
    assign sort_1 = stage_0_out_1;
endmodule

module sort_2_1_1_tb;

    logic clk;
    data_t data_0;
    data_t data_1;
    data_t sort_0;
    data_t sort_1;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Instantiate DUT
    sort_2_1_1 dut (
        .clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .sort_0(sort_0),
        .sort_1(sort_1)
    );

    // Apply random inputs
    initial begin
        repeat (100) begin
            @(posedge clk);
            data_0 = $urandom;
            data_1 = $urandom;
        end
        #100 $finish;
    end

    // Verification logic
    localparam int latency = 0;
    integer cycle_count = 0;
    integer success_count = 0;
    integer failure_count = 0;
    always @(posedge clk) begin
        cycle_count <= cycle_count + 1;
        if (cycle_count > latency) begin
            if (sort_0 <= sort_1) begin
                success_count <= success_count + 1;
            end else begin
                failure_count <= failure_count + 1;
            end
            $display("Cycle: %0d, Success: %0d, Failure: %0d", cycle_count, success_count, failure_count);
        end
    end

endmodule