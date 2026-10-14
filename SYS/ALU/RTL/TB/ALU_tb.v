`timescale 1ns/1ps

module ALU_tb();

parameter DATA_WIDTH    = 8;
parameter ALU_FUN_WIDTH = 4;

//====================================================
// Signals
//====================================================

reg                         CLK_tb;
reg                         RST_tb;

reg  [DATA_WIDTH-1:0]      A_tb;
reg  [DATA_WIDTH-1:0]      B_tb;
reg  [ALU_FUN_WIDTH-1:0]   ALU_FUN_tb;

reg                         Enable_tb;

wire [DATA_WIDTH-1:0]      ALU_OUT_tb;
wire                        OUT_VALID_tb;


//====================================================
// Clock Generation
//====================================================

always #5 CLK_tb = ~CLK_tb;


//====================================================
// DUT
//====================================================

ALU #(
    .DATA_WIDTH(DATA_WIDTH),
    .ALU_FUN_WIDTH(ALU_FUN_WIDTH)
) DUT (

    .CLK(CLK_tb),
    .RST(RST_tb),

    .A(A_tb),
    .B(B_tb),
    .ALU_FUN(ALU_FUN_tb),

    .Enable(Enable_tb),

    .ALU_OUT(ALU_OUT_tb),
    .OUT_VALID(OUT_VALID_tb)
);


//====================================================
// Test
//====================================================

initial begin

    // Initial Values
    CLK_tb     = 0;
    RST_tb     = 0;
    A_tb       = 0;
    B_tb       = 0;
    ALU_FUN_tb = 0;
    Enable_tb  = 0;

    //================================================
    // Reset
    //================================================

    #10;
    RST_tb = 1;

    //================================================
    // Addition
    // 10 + 5 = 15
    //================================================

    A_tb       = 8'd10;
    B_tb       = 8'd5;
    ALU_FUN_tb = 4'b0000;
    Enable_tb  = 1;

    #10;

    if((ALU_OUT_tb == 8'd15) && (OUT_VALID_tb == 1'b1))
        $display("ADD : PASS");
    else
        $display("ADD : FAIL");


    //================================================
    // Subtraction
    // 10 - 5 = 5
    //================================================

    ALU_FUN_tb = 4'b0001;

    #10;

    if((ALU_OUT_tb == 8'd5) && (OUT_VALID_tb == 1'b1))
        $display("SUB : PASS");
    else
        $display("SUB : FAIL");


    //================================================
    // Multiplication
    // 10 * 5 = 50
    //================================================

    ALU_FUN_tb = 4'b0010;

    #10;

    if((ALU_OUT_tb == 8'd50) && (OUT_VALID_tb == 1'b1))
        $display("MUL : PASS");
    else
        $display("MUL : FAIL");


    //================================================
    // Division
    // 10 / 5 = 2
    //================================================

    ALU_FUN_tb = 4'b0011;

    #10;

    if((ALU_OUT_tb == 8'd2) && (OUT_VALID_tb == 1'b1))
        $display("DIV : PASS");
    else
        $display("DIV : FAIL");


    //================================================
    // AND
    //================================================

    A_tb = 8'b10101010;
    B_tb = 8'b11001100;

    ALU_FUN_tb = 4'b0100;

    #10;

    if((ALU_OUT_tb == (A_tb & B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("AND : PASS");
    else
        $display("AND : FAIL");


    //================================================
    // OR
    //================================================

    ALU_FUN_tb = 4'b0101;

    #10;

    if((ALU_OUT_tb == (A_tb | B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("OR : PASS");
    else
        $display("OR : FAIL");


    //================================================
    // NAND
    //================================================

    ALU_FUN_tb = 4'b0110;

    #10;

    if((ALU_OUT_tb == ~(A_tb & B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("NAND : PASS");
    else
        $display("NAND : FAIL");


    //================================================
    // NOR
    //================================================

    ALU_FUN_tb = 4'b0111;

    #10;

    if((ALU_OUT_tb == ~(A_tb | B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("NOR : PASS");
    else
        $display("NOR : FAIL");


    //================================================
    // XOR
    //================================================

    ALU_FUN_tb = 4'b1000;

    #10;

    if((ALU_OUT_tb == (A_tb ^ B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("XOR : PASS");
    else
        $display("XOR : FAIL");


    //================================================
    // XNOR
    //================================================

    ALU_FUN_tb = 4'b1001;

    #10;

    if((ALU_OUT_tb == ~(A_tb ^ B_tb)) && (OUT_VALID_tb == 1'b1))
        $display("XNOR : PASS");
    else
        $display("XNOR : FAIL");


    //================================================
    // CMP Equal
    // A = B
    //================================================

    A_tb = 8'd20;
    B_tb = 8'd20;

    ALU_FUN_tb = 4'b1010;

    #10;

    if((ALU_OUT_tb == 8'd1) && (OUT_VALID_tb == 1'b1))
        $display("CMP Equal : PASS");
    else
        $display("CMP Equal : FAIL");


    //================================================
    // CMP Greater
    // A > B
    //================================================

    A_tb = 8'd20;
    B_tb = 8'd10;

    ALU_FUN_tb = 4'b1011;

    #10;

    if((ALU_OUT_tb == 8'd1) && (OUT_VALID_tb == 1'b1))
        $display("CMP Greater : PASS");
    else
        $display("CMP Greater : FAIL");


    //================================================
    // Shift Right
    // 20 >> 1 = 10
    //================================================

    A_tb = 8'd20;

    ALU_FUN_tb = 4'b1100;

    #10;

    if((ALU_OUT_tb == 8'd10) && (OUT_VALID_tb == 1'b1))
        $display("SHIFT RIGHT : PASS");
    else
        $display("SHIFT RIGHT : FAIL");


    //================================================
    // Shift Left
    // 20 << 1 = 40
    //================================================

    ALU_FUN_tb = 4'b1101;

    #10;

    if((ALU_OUT_tb == 8'd40) && (OUT_VALID_tb == 1'b1))
        $display("SHIFT LEFT : PASS");
    else
        $display("SHIFT LEFT : FAIL");


    //================================================
    // Disable ALU
    // OUT_VALID should be 0
    //================================================

    Enable_tb = 0;

    #10;

    if(OUT_VALID_tb == 1'b0)
        $display("ALU Disable : PASS");
    else
        $display("ALU Disable : FAIL");


    //================================================
    // Finish
    //================================================

    #10;
    $stop;

end

endmodule