typedef logic [31:0] data_t;

// Network is vertically symmetric

module sort_6_12_5 (
    input logic clk,
    input data_t data_0,
    input data_t data_1,
    input data_t data_2,
    input data_t data_3,
    input data_t data_4,
    input data_t data_5,
    output data_t sort_0,
    output data_t sort_1,
    output data_t sort_2,
    output data_t sort_3,
    output data_t sort_4,
    output data_t sort_5
);

     logic [31:0] stage_0_out_0;
     logic [31:0] stage_0_out_1;
     logic [31:0] stage_0_out_2;
     logic [31:0] stage_0_out_3;
     logic [31:0] stage_0_out_4;
     logic [31:0] stage_0_out_5;
     logic [31:0] stage_1_out_0;
     logic [31:0] stage_1_out_1;
     logic [31:0] stage_1_out_2;
     logic [31:0] stage_1_out_3;
     logic [31:0] stage_1_out_4;
     logic [31:0] stage_1_out_5;
     logic [31:0] stage_2_out_0;
     logic [31:0] stage_2_out_1;
     logic [31:0] stage_2_out_2;
     logic [31:0] stage_2_out_3;
     logic [31:0] stage_2_out_4;
     logic [31:0] stage_2_out_5;
     logic [31:0] stage_3_out_0;
     logic [31:0] stage_3_out_1;
     logic [31:0] stage_3_out_2;
     logic [31:0] stage_3_out_3;
     logic [31:0] stage_3_out_4;
     logic [31:0] stage_3_out_5;
     logic [31:0] stage_4_out_0;
     logic [31:0] stage_4_out_1;
     logic [31:0] stage_4_out_2;
     logic [31:0] stage_4_out_3;
     logic [31:0] stage_4_out_4;
     logic [31:0] stage_4_out_5;
    assign stage_0_out_0 = (data_0 <= data_5) ? data_0 : data_5;
    assign stage_0_out_5 = (data_0 <= data_5) ? data_5 : data_0;
    assign stage_0_out_1 = (data_1 <= data_3) ? data_1 : data_3;
    assign stage_0_out_3 = (data_1 <= data_3) ? data_3 : data_1;
    assign stage_0_out_2 = (data_2 <= data_4) ? data_2 : data_4;
    assign stage_0_out_4 = (data_2 <= data_4) ? data_4 : data_2;
    assign stage_1_out_1 = (stage_0_out_1 <= stage_0_out_2) ? stage_0_out_1 : stage_0_out_2;
    assign stage_1_out_2 = (stage_0_out_1 <= stage_0_out_2) ? stage_0_out_2 : stage_0_out_1;
    assign stage_1_out_3 = (stage_0_out_3 <= stage_0_out_4) ? stage_0_out_3 : stage_0_out_4;
    assign stage_1_out_4 = (stage_0_out_3 <= stage_0_out_4) ? stage_0_out_4 : stage_0_out_3;
    assign stage_1_out_0 = stage_0_out_0;
    assign stage_1_out_5 = stage_0_out_5;
    assign stage_2_out_5 = (stage_1_out_5 <= stage_1_out_2) ? stage_1_out_5 : stage_1_out_2;
    assign stage_2_out_2 = (stage_1_out_5 <= stage_1_out_2) ? stage_1_out_2 : stage_1_out_5;
    assign stage_2_out_3 = (stage_1_out_3 <= stage_1_out_0) ? stage_1_out_3 : stage_1_out_0;
    assign stage_2_out_0 = (stage_1_out_3 <= stage_1_out_0) ? stage_1_out_0 : stage_1_out_3;
    assign stage_3_out_4 = (stage_2_out_4 <= stage_2_out_3) ? stage_2_out_4 : stage_2_out_3;
    assign stage_3_out_3 = (stage_2_out_4 <= stage_2_out_3) ? stage_2_out_3 : stage_2_out_4;
    assign stage_3_out_2 = (stage_2_out_2 <= stage_2_out_1) ? stage_2_out_2 : stage_2_out_1;
    assign stage_3_out_1 = (stage_2_out_2 <= stage_2_out_1) ? stage_2_out_1 : stage_2_out_2;
    assign stage_4_out_5 = (stage_3_out_5 <= stage_3_out_0) ? stage_3_out_5 : stage_3_out_0;
    assign stage_4_out_0 = (stage_3_out_5 <= stage_3_out_0) ? stage_3_out_0 : stage_3_out_5;
    assign stage_4_out_4 = (stage_3_out_4 <= stage_3_out_2) ? stage_3_out_4 : stage_3_out_2;
    assign stage_4_out_2 = (stage_3_out_4 <= stage_3_out_2) ? stage_3_out_2 : stage_3_out_4;
    assign stage_4_out_3 = (stage_3_out_3 <= stage_3_out_1) ? stage_3_out_3 : stage_3_out_1;
    assign stage_4_out_1 = (stage_3_out_3 <= stage_3_out_1) ? stage_3_out_1 : stage_3_out_3;
    assign sort_0 = stage_4_out_0;
    assign sort_1 = stage_4_out_1;
    assign sort_2 = stage_4_out_2;
    assign sort_3 = stage_4_out_3;
    assign sort_4 = stage_4_out_4;
    assign sort_5 = stage_4_out_5;
endmodule

module sort_6_12_5_tb;

    logic clk;
    data_t data_0;
    data_t data_1;
    data_t data_2;
    data_t data_3;
    data_t data_4;
    data_t data_5;
    data_t sort_0;
    data_t sort_1;
    data_t sort_2;
    data_t sort_3;
    data_t sort_4;
    data_t sort_5;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Instantiate DUT
    sort_6_12_5 dut (
        .clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .data_2(data_2),
        .data_3(data_3),
        .data_4(data_4),
        .data_5(data_5),
        .sort_0(sort_0),
        .sort_1(sort_1),
        .sort_2(sort_2),
        .sort_3(sort_3),
        .sort_4(sort_4),
        .sort_5(sort_5)
    );

    // Apply random inputs
    initial begin
        repeat (100) begin
            @(posedge clk);
            data_0 = $urandom;
            data_1 = $urandom;
            data_2 = $urandom;
            data_3 = $urandom;
            data_4 = $urandom;
            data_5 = $urandom;
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
            if (sort_0 <= sort_1 && sort_1 <= sort_2 && sort_2 <= sort_3 && sort_3 <= sort_4 && sort_4 <= sort_5) begin
                success_count <= success_count + 1;
            end else begin
                failure_count <= failure_count + 1;
            end
            $display("Cycle: %0d, Success: %0d, Failure: %0d", cycle_count, success_count, failure_count);
        end
    end

endmodule