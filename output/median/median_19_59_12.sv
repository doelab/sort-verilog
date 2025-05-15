typedef logic [31:0] data_t;


module median_19_59_12 (
    input logic clk,
    input data_t data_0,
    input data_t data_1,
    input data_t data_2,
    input data_t data_3,
    input data_t data_4,
    input data_t data_5,
    input data_t data_6,
    input data_t data_7,
    input data_t data_8,
    input data_t data_9,
    input data_t data_10,
    input data_t data_11,
    input data_t data_12,
    input data_t data_13,
    input data_t data_14,
    input data_t data_15,
    input data_t data_16,
    input data_t data_17,
    input data_t data_18,
    output data_t sort_0,
    output data_t sort_1,
    output data_t sort_2,
    output data_t sort_3,
    output data_t sort_4,
    output data_t sort_5,
    output data_t sort_6,
    output data_t sort_7,
    output data_t sort_8,
    output data_t sort_9,
    output data_t sort_10,
    output data_t sort_11,
    output data_t sort_12,
    output data_t sort_13,
    output data_t sort_14,
    output data_t sort_15,
    output data_t sort_16,
    output data_t sort_17,
    output data_t sort_18
);

     logic [31:0] stage_0_out_0;
     logic [31:0] stage_0_out_1;
     logic [31:0] stage_0_out_2;
     logic [31:0] stage_0_out_3;
     logic [31:0] stage_0_out_4;
     logic [31:0] stage_0_out_5;
     logic [31:0] stage_0_out_6;
     logic [31:0] stage_0_out_7;
     logic [31:0] stage_0_out_8;
     logic [31:0] stage_0_out_9;
     logic [31:0] stage_0_out_10;
     logic [31:0] stage_0_out_11;
     logic [31:0] stage_0_out_12;
     logic [31:0] stage_0_out_13;
     logic [31:0] stage_0_out_14;
     logic [31:0] stage_0_out_15;
     logic [31:0] stage_0_out_16;
     logic [31:0] stage_0_out_17;
     logic [31:0] stage_0_out_18;
     logic [31:0] stage_1_out_0;
     logic [31:0] stage_1_out_1;
     logic [31:0] stage_1_out_2;
     logic [31:0] stage_1_out_3;
     logic [31:0] stage_1_out_4;
     logic [31:0] stage_1_out_5;
     logic [31:0] stage_1_out_6;
     logic [31:0] stage_1_out_7;
     logic [31:0] stage_1_out_8;
     logic [31:0] stage_1_out_9;
     logic [31:0] stage_1_out_10;
     logic [31:0] stage_1_out_11;
     logic [31:0] stage_1_out_12;
     logic [31:0] stage_1_out_13;
     logic [31:0] stage_1_out_14;
     logic [31:0] stage_1_out_15;
     logic [31:0] stage_1_out_16;
     logic [31:0] stage_1_out_17;
     logic [31:0] stage_1_out_18;
     logic [31:0] stage_2_out_0;
     logic [31:0] stage_2_out_1;
     logic [31:0] stage_2_out_2;
     logic [31:0] stage_2_out_3;
     logic [31:0] stage_2_out_4;
     logic [31:0] stage_2_out_5;
     logic [31:0] stage_2_out_6;
     logic [31:0] stage_2_out_7;
     logic [31:0] stage_2_out_8;
     logic [31:0] stage_2_out_9;
     logic [31:0] stage_2_out_10;
     logic [31:0] stage_2_out_11;
     logic [31:0] stage_2_out_12;
     logic [31:0] stage_2_out_13;
     logic [31:0] stage_2_out_14;
     logic [31:0] stage_2_out_15;
     logic [31:0] stage_2_out_16;
     logic [31:0] stage_2_out_17;
     logic [31:0] stage_2_out_18;
     logic [31:0] stage_3_out_0;
     logic [31:0] stage_3_out_1;
     logic [31:0] stage_3_out_2;
     logic [31:0] stage_3_out_3;
     logic [31:0] stage_3_out_4;
     logic [31:0] stage_3_out_5;
     logic [31:0] stage_3_out_6;
     logic [31:0] stage_3_out_7;
     logic [31:0] stage_3_out_8;
     logic [31:0] stage_3_out_9;
     logic [31:0] stage_3_out_10;
     logic [31:0] stage_3_out_11;
     logic [31:0] stage_3_out_12;
     logic [31:0] stage_3_out_13;
     logic [31:0] stage_3_out_14;
     logic [31:0] stage_3_out_15;
     logic [31:0] stage_3_out_16;
     logic [31:0] stage_3_out_17;
     logic [31:0] stage_3_out_18;
     logic [31:0] stage_4_out_0;
     logic [31:0] stage_4_out_1;
     logic [31:0] stage_4_out_2;
     logic [31:0] stage_4_out_3;
     logic [31:0] stage_4_out_4;
     logic [31:0] stage_4_out_5;
     logic [31:0] stage_4_out_6;
     logic [31:0] stage_4_out_7;
     logic [31:0] stage_4_out_8;
     logic [31:0] stage_4_out_9;
     logic [31:0] stage_4_out_10;
     logic [31:0] stage_4_out_11;
     logic [31:0] stage_4_out_12;
     logic [31:0] stage_4_out_13;
     logic [31:0] stage_4_out_14;
     logic [31:0] stage_4_out_15;
     logic [31:0] stage_4_out_16;
     logic [31:0] stage_4_out_17;
     logic [31:0] stage_4_out_18;
     logic [31:0] stage_5_out_0;
     logic [31:0] stage_5_out_1;
     logic [31:0] stage_5_out_2;
     logic [31:0] stage_5_out_3;
     logic [31:0] stage_5_out_4;
     logic [31:0] stage_5_out_5;
     logic [31:0] stage_5_out_6;
     logic [31:0] stage_5_out_7;
     logic [31:0] stage_5_out_8;
     logic [31:0] stage_5_out_9;
     logic [31:0] stage_5_out_10;
     logic [31:0] stage_5_out_11;
     logic [31:0] stage_5_out_12;
     logic [31:0] stage_5_out_13;
     logic [31:0] stage_5_out_14;
     logic [31:0] stage_5_out_15;
     logic [31:0] stage_5_out_16;
     logic [31:0] stage_5_out_17;
     logic [31:0] stage_5_out_18;
     logic [31:0] stage_6_out_0;
     logic [31:0] stage_6_out_1;
     logic [31:0] stage_6_out_2;
     logic [31:0] stage_6_out_3;
     logic [31:0] stage_6_out_4;
     logic [31:0] stage_6_out_5;
     logic [31:0] stage_6_out_6;
     logic [31:0] stage_6_out_7;
     logic [31:0] stage_6_out_8;
     logic [31:0] stage_6_out_9;
     logic [31:0] stage_6_out_10;
     logic [31:0] stage_6_out_11;
     logic [31:0] stage_6_out_12;
     logic [31:0] stage_6_out_13;
     logic [31:0] stage_6_out_14;
     logic [31:0] stage_6_out_15;
     logic [31:0] stage_6_out_16;
     logic [31:0] stage_6_out_17;
     logic [31:0] stage_6_out_18;
     logic [31:0] stage_7_out_0;
     logic [31:0] stage_7_out_1;
     logic [31:0] stage_7_out_2;
     logic [31:0] stage_7_out_3;
     logic [31:0] stage_7_out_4;
     logic [31:0] stage_7_out_5;
     logic [31:0] stage_7_out_6;
     logic [31:0] stage_7_out_7;
     logic [31:0] stage_7_out_8;
     logic [31:0] stage_7_out_9;
     logic [31:0] stage_7_out_10;
     logic [31:0] stage_7_out_11;
     logic [31:0] stage_7_out_12;
     logic [31:0] stage_7_out_13;
     logic [31:0] stage_7_out_14;
     logic [31:0] stage_7_out_15;
     logic [31:0] stage_7_out_16;
     logic [31:0] stage_7_out_17;
     logic [31:0] stage_7_out_18;
     logic [31:0] stage_8_out_0;
     logic [31:0] stage_8_out_1;
     logic [31:0] stage_8_out_2;
     logic [31:0] stage_8_out_3;
     logic [31:0] stage_8_out_4;
     logic [31:0] stage_8_out_5;
     logic [31:0] stage_8_out_6;
     logic [31:0] stage_8_out_7;
     logic [31:0] stage_8_out_8;
     logic [31:0] stage_8_out_9;
     logic [31:0] stage_8_out_10;
     logic [31:0] stage_8_out_11;
     logic [31:0] stage_8_out_12;
     logic [31:0] stage_8_out_13;
     logic [31:0] stage_8_out_14;
     logic [31:0] stage_8_out_15;
     logic [31:0] stage_8_out_16;
     logic [31:0] stage_8_out_17;
     logic [31:0] stage_8_out_18;
     logic [31:0] stage_9_out_0;
     logic [31:0] stage_9_out_1;
     logic [31:0] stage_9_out_2;
     logic [31:0] stage_9_out_3;
     logic [31:0] stage_9_out_4;
     logic [31:0] stage_9_out_5;
     logic [31:0] stage_9_out_6;
     logic [31:0] stage_9_out_7;
     logic [31:0] stage_9_out_8;
     logic [31:0] stage_9_out_9;
     logic [31:0] stage_9_out_10;
     logic [31:0] stage_9_out_11;
     logic [31:0] stage_9_out_12;
     logic [31:0] stage_9_out_13;
     logic [31:0] stage_9_out_14;
     logic [31:0] stage_9_out_15;
     logic [31:0] stage_9_out_16;
     logic [31:0] stage_9_out_17;
     logic [31:0] stage_9_out_18;
     logic [31:0] stage_10_out_0;
     logic [31:0] stage_10_out_1;
     logic [31:0] stage_10_out_2;
     logic [31:0] stage_10_out_3;
     logic [31:0] stage_10_out_4;
     logic [31:0] stage_10_out_5;
     logic [31:0] stage_10_out_6;
     logic [31:0] stage_10_out_7;
     logic [31:0] stage_10_out_8;
     logic [31:0] stage_10_out_9;
     logic [31:0] stage_10_out_10;
     logic [31:0] stage_10_out_11;
     logic [31:0] stage_10_out_12;
     logic [31:0] stage_10_out_13;
     logic [31:0] stage_10_out_14;
     logic [31:0] stage_10_out_15;
     logic [31:0] stage_10_out_16;
     logic [31:0] stage_10_out_17;
     logic [31:0] stage_10_out_18;
     logic [31:0] stage_11_out_0;
     logic [31:0] stage_11_out_1;
     logic [31:0] stage_11_out_2;
     logic [31:0] stage_11_out_3;
     logic [31:0] stage_11_out_4;
     logic [31:0] stage_11_out_5;
     logic [31:0] stage_11_out_6;
     logic [31:0] stage_11_out_7;
     logic [31:0] stage_11_out_8;
     logic [31:0] stage_11_out_9;
     logic [31:0] stage_11_out_10;
     logic [31:0] stage_11_out_11;
     logic [31:0] stage_11_out_12;
     logic [31:0] stage_11_out_13;
     logic [31:0] stage_11_out_14;
     logic [31:0] stage_11_out_15;
     logic [31:0] stage_11_out_16;
     logic [31:0] stage_11_out_17;
     logic [31:0] stage_11_out_18;
    assign stage_0_out_0 = (data_0 <= data_1) ? data_0 : data_1;
    assign stage_0_out_1 = (data_0 <= data_1) ? data_1 : data_0;
    assign stage_0_out_2 = (data_2 <= data_3) ? data_2 : data_3;
    assign stage_0_out_3 = (data_2 <= data_3) ? data_3 : data_2;
    assign stage_0_out_4 = (data_4 <= data_5) ? data_4 : data_5;
    assign stage_0_out_5 = (data_4 <= data_5) ? data_5 : data_4;
    assign stage_0_out_6 = (data_6 <= data_7) ? data_6 : data_7;
    assign stage_0_out_7 = (data_6 <= data_7) ? data_7 : data_6;
    assign stage_0_out_8 = (data_8 <= data_9) ? data_8 : data_9;
    assign stage_0_out_9 = (data_8 <= data_9) ? data_9 : data_8;
    assign stage_0_out_10 = (data_10 <= data_11) ? data_10 : data_11;
    assign stage_0_out_11 = (data_10 <= data_11) ? data_11 : data_10;
    assign stage_0_out_12 = (data_12 <= data_13) ? data_12 : data_13;
    assign stage_0_out_13 = (data_12 <= data_13) ? data_13 : data_12;
    assign stage_0_out_14 = (data_14 <= data_15) ? data_14 : data_15;
    assign stage_0_out_15 = (data_14 <= data_15) ? data_15 : data_14;
    assign stage_0_out_16 = (data_16 <= data_17) ? data_16 : data_17;
    assign stage_0_out_17 = (data_16 <= data_17) ? data_17 : data_16;
    assign stage_0_out_18 = data_18;
    assign stage_1_out_0 = (stage_0_out_0 <= stage_0_out_2) ? stage_0_out_0 : stage_0_out_2;
    assign stage_1_out_2 = (stage_0_out_0 <= stage_0_out_2) ? stage_0_out_2 : stage_0_out_0;
    assign stage_1_out_1 = (stage_0_out_1 <= stage_0_out_3) ? stage_0_out_1 : stage_0_out_3;
    assign stage_1_out_3 = (stage_0_out_1 <= stage_0_out_3) ? stage_0_out_3 : stage_0_out_1;
    assign stage_1_out_4 = (stage_0_out_4 <= stage_0_out_6) ? stage_0_out_4 : stage_0_out_6;
    assign stage_1_out_6 = (stage_0_out_4 <= stage_0_out_6) ? stage_0_out_6 : stage_0_out_4;
    assign stage_1_out_5 = (stage_0_out_5 <= stage_0_out_7) ? stage_0_out_5 : stage_0_out_7;
    assign stage_1_out_7 = (stage_0_out_5 <= stage_0_out_7) ? stage_0_out_7 : stage_0_out_5;
    assign stage_1_out_8 = (stage_0_out_8 <= stage_0_out_10) ? stage_0_out_8 : stage_0_out_10;
    assign stage_1_out_10 = (stage_0_out_8 <= stage_0_out_10) ? stage_0_out_10 : stage_0_out_8;
    assign stage_1_out_9 = (stage_0_out_9 <= stage_0_out_11) ? stage_0_out_9 : stage_0_out_11;
    assign stage_1_out_11 = (stage_0_out_9 <= stage_0_out_11) ? stage_0_out_11 : stage_0_out_9;
    assign stage_1_out_12 = (stage_0_out_12 <= stage_0_out_14) ? stage_0_out_12 : stage_0_out_14;
    assign stage_1_out_14 = (stage_0_out_12 <= stage_0_out_14) ? stage_0_out_14 : stage_0_out_12;
    assign stage_1_out_13 = (stage_0_out_13 <= stage_0_out_15) ? stage_0_out_13 : stage_0_out_15;
    assign stage_1_out_15 = (stage_0_out_13 <= stage_0_out_15) ? stage_0_out_15 : stage_0_out_13;
    assign stage_1_out_16 = stage_0_out_16;
    assign stage_1_out_17 = stage_0_out_17;
    assign stage_1_out_18 = stage_0_out_18;
    assign stage_2_out_0 = (stage_1_out_0 <= stage_1_out_4) ? stage_1_out_0 : stage_1_out_4;
    assign stage_2_out_4 = (stage_1_out_0 <= stage_1_out_4) ? stage_1_out_4 : stage_1_out_0;
    assign stage_2_out_1 = (stage_1_out_1 <= stage_1_out_5) ? stage_1_out_1 : stage_1_out_5;
    assign stage_2_out_5 = (stage_1_out_1 <= stage_1_out_5) ? stage_1_out_5 : stage_1_out_1;
    assign stage_2_out_2 = (stage_1_out_2 <= stage_1_out_6) ? stage_1_out_2 : stage_1_out_6;
    assign stage_2_out_6 = (stage_1_out_2 <= stage_1_out_6) ? stage_1_out_6 : stage_1_out_2;
    assign stage_2_out_3 = (stage_1_out_3 <= stage_1_out_7) ? stage_1_out_3 : stage_1_out_7;
    assign stage_2_out_7 = (stage_1_out_3 <= stage_1_out_7) ? stage_1_out_7 : stage_1_out_3;
    assign stage_2_out_8 = (stage_1_out_8 <= stage_1_out_12) ? stage_1_out_8 : stage_1_out_12;
    assign stage_2_out_12 = (stage_1_out_8 <= stage_1_out_12) ? stage_1_out_12 : stage_1_out_8;
    assign stage_2_out_9 = (stage_1_out_9 <= stage_1_out_13) ? stage_1_out_9 : stage_1_out_13;
    assign stage_2_out_13 = (stage_1_out_9 <= stage_1_out_13) ? stage_1_out_13 : stage_1_out_9;
    assign stage_2_out_10 = (stage_1_out_10 <= stage_1_out_14) ? stage_1_out_10 : stage_1_out_14;
    assign stage_2_out_14 = (stage_1_out_10 <= stage_1_out_14) ? stage_1_out_14 : stage_1_out_10;
    assign stage_2_out_11 = (stage_1_out_11 <= stage_1_out_15) ? stage_1_out_11 : stage_1_out_15;
    assign stage_2_out_15 = (stage_1_out_11 <= stage_1_out_15) ? stage_1_out_15 : stage_1_out_11;
    assign stage_2_out_16 = stage_1_out_16;
    assign stage_2_out_17 = stage_1_out_17;
    assign stage_2_out_18 = stage_1_out_18;
    assign stage_3_out_0 = (stage_2_out_0 <= stage_2_out_8) ? stage_2_out_0 : stage_2_out_8;
    assign stage_3_out_8 = (stage_2_out_0 <= stage_2_out_8) ? stage_2_out_8 : stage_2_out_0;
    assign stage_3_out_1 = (stage_2_out_1 <= stage_2_out_9) ? stage_2_out_1 : stage_2_out_9;
    assign stage_3_out_9 = (stage_2_out_1 <= stage_2_out_9) ? stage_2_out_9 : stage_2_out_1;
    assign stage_3_out_2 = (stage_2_out_2 <= stage_2_out_10) ? stage_2_out_2 : stage_2_out_10;
    assign stage_3_out_10 = (stage_2_out_2 <= stage_2_out_10) ? stage_2_out_10 : stage_2_out_2;
    assign stage_3_out_3 = (stage_2_out_3 <= stage_2_out_11) ? stage_2_out_3 : stage_2_out_11;
    assign stage_3_out_11 = (stage_2_out_3 <= stage_2_out_11) ? stage_2_out_11 : stage_2_out_3;
    assign stage_3_out_4 = (stage_2_out_4 <= stage_2_out_12) ? stage_2_out_4 : stage_2_out_12;
    assign stage_3_out_12 = (stage_2_out_4 <= stage_2_out_12) ? stage_2_out_12 : stage_2_out_4;
    assign stage_3_out_5 = (stage_2_out_5 <= stage_2_out_13) ? stage_2_out_5 : stage_2_out_13;
    assign stage_3_out_13 = (stage_2_out_5 <= stage_2_out_13) ? stage_2_out_13 : stage_2_out_5;
    assign stage_3_out_6 = (stage_2_out_6 <= stage_2_out_14) ? stage_2_out_6 : stage_2_out_14;
    assign stage_3_out_14 = (stage_2_out_6 <= stage_2_out_14) ? stage_2_out_14 : stage_2_out_6;
    assign stage_3_out_7 = (stage_2_out_7 <= stage_2_out_15) ? stage_2_out_7 : stage_2_out_15;
    assign stage_3_out_15 = (stage_2_out_7 <= stage_2_out_15) ? stage_2_out_15 : stage_2_out_7;
    assign stage_3_out_16 = stage_2_out_16;
    assign stage_3_out_17 = stage_2_out_17;
    assign stage_3_out_18 = stage_2_out_18;
    assign stage_4_out_1 = (stage_3_out_1 <= stage_3_out_8) ? stage_3_out_1 : stage_3_out_8;
    assign stage_4_out_8 = (stage_3_out_1 <= stage_3_out_8) ? stage_3_out_8 : stage_3_out_1;
    assign stage_4_out_3 = (stage_3_out_3 <= stage_3_out_12) ? stage_3_out_3 : stage_3_out_12;
    assign stage_4_out_12 = (stage_3_out_3 <= stage_3_out_12) ? stage_3_out_12 : stage_3_out_3;
    assign stage_4_out_5 = (stage_3_out_5 <= stage_3_out_10) ? stage_3_out_5 : stage_3_out_10;
    assign stage_4_out_10 = (stage_3_out_5 <= stage_3_out_10) ? stage_3_out_10 : stage_3_out_5;
    assign stage_4_out_6 = (stage_3_out_6 <= stage_3_out_9) ? stage_3_out_6 : stage_3_out_9;
    assign stage_4_out_9 = (stage_3_out_6 <= stage_3_out_9) ? stage_3_out_9 : stage_3_out_6;
    assign stage_4_out_11 = (stage_3_out_11 <= stage_3_out_14) ? stage_3_out_11 : stage_3_out_14;
    assign stage_4_out_14 = (stage_3_out_11 <= stage_3_out_14) ? stage_3_out_14 : stage_3_out_11;
    assign stage_4_out_0 = stage_3_out_0;
    assign stage_4_out_2 = stage_3_out_2;
    assign stage_4_out_4 = stage_3_out_4;
    assign stage_4_out_7 = stage_3_out_7;
    assign stage_4_out_13 = stage_3_out_13;
    assign stage_4_out_15 = stage_3_out_15;
    assign stage_4_out_16 = stage_3_out_16;
    assign stage_4_out_17 = stage_3_out_17;
    assign stage_4_out_18 = stage_3_out_18;
    assign stage_5_out_2 = (stage_4_out_2 <= stage_4_out_8) ? stage_4_out_2 : stage_4_out_8;
    assign stage_5_out_8 = (stage_4_out_2 <= stage_4_out_8) ? stage_4_out_8 : stage_4_out_2;
    assign stage_5_out_3 = (stage_4_out_3 <= stage_4_out_5) ? stage_4_out_3 : stage_4_out_5;
    assign stage_5_out_5 = (stage_4_out_3 <= stage_4_out_5) ? stage_4_out_5 : stage_4_out_3;
    assign stage_5_out_10 = (stage_4_out_10 <= stage_4_out_12) ? stage_4_out_10 : stage_4_out_12;
    assign stage_5_out_12 = (stage_4_out_10 <= stage_4_out_12) ? stage_4_out_12 : stage_4_out_10;
    assign stage_5_out_11 = (stage_4_out_11 <= stage_4_out_13) ? stage_4_out_11 : stage_4_out_13;
    assign stage_5_out_13 = (stage_4_out_11 <= stage_4_out_13) ? stage_4_out_13 : stage_4_out_11;
    assign stage_5_out_0 = stage_4_out_0;
    assign stage_5_out_1 = stage_4_out_1;
    assign stage_5_out_4 = stage_4_out_4;
    assign stage_5_out_6 = stage_4_out_6;
    assign stage_5_out_7 = stage_4_out_7;
    assign stage_5_out_9 = stage_4_out_9;
    assign stage_5_out_14 = stage_4_out_14;
    assign stage_5_out_15 = stage_4_out_15;
    assign stage_5_out_16 = stage_4_out_16;
    assign stage_5_out_17 = stage_4_out_17;
    assign stage_5_out_18 = stage_4_out_18;
    assign stage_6_out_3 = (stage_5_out_3 <= stage_5_out_6) ? stage_5_out_3 : stage_5_out_6;
    assign stage_6_out_6 = (stage_5_out_3 <= stage_5_out_6) ? stage_5_out_6 : stage_5_out_3;
    assign stage_6_out_4 = (stage_5_out_4 <= stage_5_out_8) ? stage_5_out_4 : stage_5_out_8;
    assign stage_6_out_8 = (stage_5_out_4 <= stage_5_out_8) ? stage_5_out_8 : stage_5_out_4;
    assign stage_6_out_5 = (stage_5_out_5 <= stage_5_out_17) ? stage_5_out_5 : stage_5_out_17;
    assign stage_6_out_17 = (stage_5_out_5 <= stage_5_out_17) ? stage_5_out_17 : stage_5_out_5;
    assign stage_6_out_7 = (stage_5_out_7 <= stage_5_out_11) ? stage_5_out_7 : stage_5_out_11;
    assign stage_6_out_11 = (stage_5_out_7 <= stage_5_out_11) ? stage_5_out_11 : stage_5_out_7;
    assign stage_6_out_9 = (stage_5_out_9 <= stage_5_out_12) ? stage_5_out_9 : stage_5_out_12;
    assign stage_6_out_12 = (stage_5_out_9 <= stage_5_out_12) ? stage_5_out_12 : stage_5_out_9;
    assign stage_6_out_10 = (stage_5_out_10 <= stage_5_out_16) ? stage_5_out_10 : stage_5_out_16;
    assign stage_6_out_16 = (stage_5_out_10 <= stage_5_out_16) ? stage_5_out_16 : stage_5_out_10;
    assign stage_6_out_0 = stage_5_out_0;
    assign stage_6_out_1 = stage_5_out_1;
    assign stage_6_out_2 = stage_5_out_2;
    assign stage_6_out_13 = stage_5_out_13;
    assign stage_6_out_14 = stage_5_out_14;
    assign stage_6_out_15 = stage_5_out_15;
    assign stage_6_out_18 = stage_5_out_18;
    assign stage_7_out_5 = (stage_6_out_5 <= stage_6_out_8) ? stage_6_out_5 : stage_6_out_8;
    assign stage_7_out_8 = (stage_6_out_5 <= stage_6_out_8) ? stage_6_out_8 : stage_6_out_5;
    assign stage_7_out_6 = (stage_6_out_6 <= stage_6_out_10) ? stage_6_out_6 : stage_6_out_10;
    assign stage_7_out_10 = (stage_6_out_6 <= stage_6_out_10) ? stage_6_out_10 : stage_6_out_6;
    assign stage_7_out_7 = (stage_6_out_7 <= stage_6_out_16) ? stage_6_out_7 : stage_6_out_16;
    assign stage_7_out_16 = (stage_6_out_7 <= stage_6_out_16) ? stage_6_out_16 : stage_6_out_7;
    assign stage_7_out_9 = (stage_6_out_9 <= stage_6_out_17) ? stage_6_out_9 : stage_6_out_17;
    assign stage_7_out_17 = (stage_6_out_9 <= stage_6_out_17) ? stage_6_out_17 : stage_6_out_9;
    assign stage_7_out_0 = stage_6_out_0;
    assign stage_7_out_1 = stage_6_out_1;
    assign stage_7_out_2 = stage_6_out_2;
    assign stage_7_out_3 = stage_6_out_3;
    assign stage_7_out_4 = stage_6_out_4;
    assign stage_7_out_11 = stage_6_out_11;
    assign stage_7_out_12 = stage_6_out_12;
    assign stage_7_out_13 = stage_6_out_13;
    assign stage_7_out_14 = stage_6_out_14;
    assign stage_7_out_15 = stage_6_out_15;
    assign stage_7_out_18 = stage_6_out_18;
    assign stage_8_out_7 = (stage_7_out_7 <= stage_7_out_18) ? stage_7_out_7 : stage_7_out_18;
    assign stage_8_out_18 = (stage_7_out_7 <= stage_7_out_18) ? stage_7_out_18 : stage_7_out_7;
    assign stage_8_out_8 = (stage_7_out_8 <= stage_7_out_10) ? stage_7_out_8 : stage_7_out_10;
    assign stage_8_out_10 = (stage_7_out_8 <= stage_7_out_10) ? stage_7_out_10 : stage_7_out_8;
    assign stage_8_out_0 = stage_7_out_0;
    assign stage_8_out_1 = stage_7_out_1;
    assign stage_8_out_2 = stage_7_out_2;
    assign stage_8_out_3 = stage_7_out_3;
    assign stage_8_out_4 = stage_7_out_4;
    assign stage_8_out_5 = stage_7_out_5;
    assign stage_8_out_6 = stage_7_out_6;
    assign stage_8_out_9 = stage_7_out_9;
    assign stage_8_out_11 = stage_7_out_11;
    assign stage_8_out_12 = stage_7_out_12;
    assign stage_8_out_13 = stage_7_out_13;
    assign stage_8_out_14 = stage_7_out_14;
    assign stage_8_out_15 = stage_7_out_15;
    assign stage_8_out_16 = stage_7_out_16;
    assign stage_8_out_17 = stage_7_out_17;
    assign stage_9_out_7 = (stage_8_out_7 <= stage_8_out_8) ? stage_8_out_7 : stage_8_out_8;
    assign stage_9_out_8 = (stage_8_out_7 <= stage_8_out_8) ? stage_8_out_8 : stage_8_out_7;
    assign stage_9_out_9 = (stage_8_out_9 <= stage_8_out_10) ? stage_8_out_9 : stage_8_out_10;
    assign stage_9_out_10 = (stage_8_out_9 <= stage_8_out_10) ? stage_8_out_10 : stage_8_out_9;
    assign stage_9_out_0 = stage_8_out_0;
    assign stage_9_out_1 = stage_8_out_1;
    assign stage_9_out_2 = stage_8_out_2;
    assign stage_9_out_3 = stage_8_out_3;
    assign stage_9_out_4 = stage_8_out_4;
    assign stage_9_out_5 = stage_8_out_5;
    assign stage_9_out_6 = stage_8_out_6;
    assign stage_9_out_11 = stage_8_out_11;
    assign stage_9_out_12 = stage_8_out_12;
    assign stage_9_out_13 = stage_8_out_13;
    assign stage_9_out_14 = stage_8_out_14;
    assign stage_9_out_15 = stage_8_out_15;
    assign stage_9_out_16 = stage_8_out_16;
    assign stage_9_out_17 = stage_8_out_17;
    assign stage_9_out_18 = stage_8_out_18;
    assign stage_10_out_8 = (stage_9_out_8 <= stage_9_out_10) ? stage_9_out_8 : stage_9_out_10;
    assign stage_10_out_10 = (stage_9_out_8 <= stage_9_out_10) ? stage_9_out_10 : stage_9_out_8;
    assign stage_10_out_9 = (stage_9_out_9 <= stage_9_out_18) ? stage_9_out_9 : stage_9_out_18;
    assign stage_10_out_18 = (stage_9_out_9 <= stage_9_out_18) ? stage_9_out_18 : stage_9_out_9;
    assign stage_10_out_0 = stage_9_out_0;
    assign stage_10_out_1 = stage_9_out_1;
    assign stage_10_out_2 = stage_9_out_2;
    assign stage_10_out_3 = stage_9_out_3;
    assign stage_10_out_4 = stage_9_out_4;
    assign stage_10_out_5 = stage_9_out_5;
    assign stage_10_out_6 = stage_9_out_6;
    assign stage_10_out_7 = stage_9_out_7;
    assign stage_10_out_11 = stage_9_out_11;
    assign stage_10_out_12 = stage_9_out_12;
    assign stage_10_out_13 = stage_9_out_13;
    assign stage_10_out_14 = stage_9_out_14;
    assign stage_10_out_15 = stage_9_out_15;
    assign stage_10_out_16 = stage_9_out_16;
    assign stage_10_out_17 = stage_9_out_17;
    assign stage_11_out_8 = (stage_10_out_8 <= stage_10_out_9) ? stage_10_out_8 : stage_10_out_9;
    assign stage_11_out_9 = (stage_10_out_8 <= stage_10_out_9) ? stage_10_out_9 : stage_10_out_8;
    assign stage_11_out_0 = stage_10_out_0;
    assign stage_11_out_1 = stage_10_out_1;
    assign stage_11_out_2 = stage_10_out_2;
    assign stage_11_out_3 = stage_10_out_3;
    assign stage_11_out_4 = stage_10_out_4;
    assign stage_11_out_5 = stage_10_out_5;
    assign stage_11_out_6 = stage_10_out_6;
    assign stage_11_out_7 = stage_10_out_7;
    assign stage_11_out_10 = stage_10_out_10;
    assign stage_11_out_11 = stage_10_out_11;
    assign stage_11_out_12 = stage_10_out_12;
    assign stage_11_out_13 = stage_10_out_13;
    assign stage_11_out_14 = stage_10_out_14;
    assign stage_11_out_15 = stage_10_out_15;
    assign stage_11_out_16 = stage_10_out_16;
    assign stage_11_out_17 = stage_10_out_17;
    assign stage_11_out_18 = stage_10_out_18;
    assign sort_0 = stage_11_out_0;
    assign sort_1 = stage_11_out_1;
    assign sort_2 = stage_11_out_2;
    assign sort_3 = stage_11_out_3;
    assign sort_4 = stage_11_out_4;
    assign sort_5 = stage_11_out_5;
    assign sort_6 = stage_11_out_6;
    assign sort_7 = stage_11_out_7;
    assign sort_8 = stage_11_out_8;
    assign sort_9 = stage_11_out_9;
    assign sort_10 = stage_11_out_10;
    assign sort_11 = stage_11_out_11;
    assign sort_12 = stage_11_out_12;
    assign sort_13 = stage_11_out_13;
    assign sort_14 = stage_11_out_14;
    assign sort_15 = stage_11_out_15;
    assign sort_16 = stage_11_out_16;
    assign sort_17 = stage_11_out_17;
    assign sort_18 = stage_11_out_18;
endmodule

module median_19_59_12_tb;

    logic clk;
    data_t data_0;
    data_t data_1;
    data_t data_2;
    data_t data_3;
    data_t data_4;
    data_t data_5;
    data_t data_6;
    data_t data_7;
    data_t data_8;
    data_t data_9;
    data_t data_10;
    data_t data_11;
    data_t data_12;
    data_t data_13;
    data_t data_14;
    data_t data_15;
    data_t data_16;
    data_t data_17;
    data_t data_18;
    data_t sort_0;
    data_t sort_1;
    data_t sort_2;
    data_t sort_3;
    data_t sort_4;
    data_t sort_5;
    data_t sort_6;
    data_t sort_7;
    data_t sort_8;
    data_t sort_9;
    data_t sort_10;
    data_t sort_11;
    data_t sort_12;
    data_t sort_13;
    data_t sort_14;
    data_t sort_15;
    data_t sort_16;
    data_t sort_17;
    data_t sort_18;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Instantiate DUT
    median_19_59_12 dut (
        .clk(clk),
        .data_0(data_0),
        .data_1(data_1),
        .data_2(data_2),
        .data_3(data_3),
        .data_4(data_4),
        .data_5(data_5),
        .data_6(data_6),
        .data_7(data_7),
        .data_8(data_8),
        .data_9(data_9),
        .data_10(data_10),
        .data_11(data_11),
        .data_12(data_12),
        .data_13(data_13),
        .data_14(data_14),
        .data_15(data_15),
        .data_16(data_16),
        .data_17(data_17),
        .data_18(data_18),
        .sort_0(sort_0),
        .sort_1(sort_1),
        .sort_2(sort_2),
        .sort_3(sort_3),
        .sort_4(sort_4),
        .sort_5(sort_5),
        .sort_6(sort_6),
        .sort_7(sort_7),
        .sort_8(sort_8),
        .sort_9(sort_9),
        .sort_10(sort_10),
        .sort_11(sort_11),
        .sort_12(sort_12),
        .sort_13(sort_13),
        .sort_14(sort_14),
        .sort_15(sort_15),
        .sort_16(sort_16),
        .sort_17(sort_17),
        .sort_18(sort_18)
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
            data_6 = $urandom;
            data_7 = $urandom;
            data_8 = $urandom;
            data_9 = $urandom;
            data_10 = $urandom;
            data_11 = $urandom;
            data_12 = $urandom;
            data_13 = $urandom;
            data_14 = $urandom;
            data_15 = $urandom;
            data_16 = $urandom;
            data_17 = $urandom;
            data_18 = $urandom;
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
            if (sort_0 <= sort_1 && sort_1 <= sort_2 && sort_2 <= sort_3 && sort_3 <= sort_4 && sort_4 <= sort_5 && sort_5 <= sort_6 && sort_6 <= sort_7 && sort_7 <= sort_8 && sort_8 <= sort_9 && sort_9 <= sort_10 && sort_10 <= sort_11 && sort_11 <= sort_12 && sort_12 <= sort_13 && sort_13 <= sort_14 && sort_14 <= sort_15 && sort_15 <= sort_16 && sort_16 <= sort_17 && sort_17 <= sort_18) begin
                success_count <= success_count + 1;
            end else begin
                failure_count <= failure_count + 1;
            end
            $display("Cycle: %0d, Success: %0d, Failure: %0d", cycle_count, success_count, failure_count);
        end
    end

endmodule