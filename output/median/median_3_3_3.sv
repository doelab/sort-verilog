typedef logic [31:0] data_t;

module median_3_3_3 (
    input logic clk,
    input data_t data_0,
    input data_t data_1,
    input data_t data_2,
    output data_t sort_0,
    output data_t sort_1,
    output data_t sort_2
);

     logic [31:0] stage_0_out_0;
     logic [31:0] stage_0_out_1;
     logic [31:0] stage_0_out_2;
     logic [31:0] stage_1_out_0;
     logic [31:0] stage_1_out_1;
     logic [31:0] stage_1_out_2;
     logic [31:0] stage_2_out_0;
     logic [31:0] stage_2_out_1;
     logic [31:0] stage_2_out_2;
    assign stage_0_out_0 = (data_0 <= data_1) ? data_0 : data_1;
    assign stage_0_out_1 = (data_0 <= data_1) ? data_1 : data_0;
    assign stage_0_out_2 = data_2;
    assign stage_1_out_1 = (stage_0_out_1 <= stage_0_out_2) ? stage_0_out_1 : stage_0_out_2;
    assign stage_1_out_2 = (stage_0_out_1 <= stage_0_out_2) ? stage_0_out_2 : stage_0_out_1;
    assign stage_1_out_0 = stage_0_out_0;
    assign stage_2_out_0 = stage_1_out_0;
    assign stage_2_out_1 = stage_1_out_1;
    assign stage_2_out_2 = stage_1_out_2;
    assign sort_0 = stage_2_out_0;
    assign sort_1 = stage_2_out_1;
    assign sort_2 = stage_2_out_2;
endmodule

module median_3_3_3_tb;

    logic clk;
    data_t data_0;
    data_t data_1;
    data_t data_2;
    data_t sort_0;
    data_t sort_1;
    data_t sort_2;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Instantiate DUT
    median_3_3_3 dut (
        .clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .data_2(data_2),
        .sort_0(sort_0),
        .sort_1(sort_1),
        .sort_2(sort_2)
    );

    // Apply random inputs
    initial begin
        repeat (100) begin
            @(posedge clk);
            data_0 = $urandom;
            data_1 = $urandom;
            data_2 = $urandom;
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
            if (sort_0 <= sort_1 && sort_1 <= sort_2) begin
                success_count <= success_count + 1;
            end else begin
                failure_count <= failure_count + 1;
            end
            $display("Cycle: %0d, Success: %0d, Failure: %0d", cycle_count, success_count, failure_count);
        end
    end

endmodule