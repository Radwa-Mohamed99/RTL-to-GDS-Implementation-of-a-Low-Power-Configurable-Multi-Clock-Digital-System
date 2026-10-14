`timescale 1ns/1ps

module Reg_File_tb();

parameter Data_Width_tb = 8;
parameter Depth_tb      = 16;
parameter Addr_Width_tb = 4;

reg  [Data_Width_tb-1:0] WrData_tb;
reg  [Addr_Width_tb-1:0] Address_tb;
reg                      WrEn_tb;
reg                      RdEn_tb;
reg                      CLK_tb;
reg                      rst_n_tb;

wire [Data_Width_tb-1:0] RdData_tb;
wire                     RdData_Valid_tb;

wire [Data_Width_tb-1:0] Reg_0_tb;
wire [Data_Width_tb-1:0] Reg_1_tb;
wire [Data_Width_tb-1:0] Reg_2_tb;
wire [Data_Width_tb-1:0] Reg_3_tb;


initial begin

    CLK_tb     = 0;
    rst_n_tb   = 0;
    WrEn_tb    = 0;
    RdEn_tb    = 0;
    Address_tb = 0;
    WrData_tb  = 0;

    //==========================
    // Reset
    //==========================
    #8;
    rst_n_tb = 1;

    //==========================
    // Scenario 1 : Check REG2 Default Value
    // REG2 = 8'b10000001
    //==========================
    #2;

    if(Reg_2_tb == 8'h81)
        $display("REG2 Default Value : PASS");
    else
        $display("REG2 Default Value : FAIL");

    //==========================
    // Scenario 2 : Check REG3 Default Value
    // REG3 = 32
    //==========================
    if(Reg_3_tb == 8'h20)
        $display("REG3 Default Value : PASS");
    else
        $display("REG3 Default Value : FAIL");


    //==========================
    // Scenario 3 : Write Reg[2]
    //==========================
    WrEn_tb    = 1;
    RdEn_tb    = 0;
    Address_tb = 4'd2;
    WrData_tb  = 8'h34;

    #10;

    WrEn_tb = 0;


    //==========================
    // Scenario 4 : Write Reg[5]
    //==========================
    Address_tb = 4'd5;
    WrData_tb  = 8'hCD;
    WrEn_tb    = 1;

    #10;

    WrEn_tb = 0;


    //==========================
    // Scenario 5 : Read Reg[2]
    //==========================
    RdEn_tb    = 1;
    Address_tb = 4'd2;

    #10;

    $display("Reg[2] = %h, Valid = %b",
             RdData_tb, RdData_Valid_tb);

    if((RdData_tb == 8'h34) && (RdData_Valid_tb == 1'b1))
        $display("Read Reg[2] : PASS");
    else
        $display("Read Reg[2] : FAIL");


    //==========================
    // Scenario 6 : Read Reg[5]
    //==========================
    Address_tb = 4'd5;

    #10;

    $display("Reg[5] = %h, Valid = %b",
             RdData_tb, RdData_Valid_tb);

    if((RdData_tb == 8'hCD) && (RdData_Valid_tb == 1'b1))
        $display("Read Reg[5] : PASS");
    else
        $display("Read Reg[5] : FAIL");


    //==========================
    // Scenario 7 : Disable Read
    // RdData_Valid should be 0
    //==========================
    RdEn_tb = 0;

    #10;

    if(RdData_Valid_tb == 1'b0)
        $display("Read Data Valid Reset : PASS");
    else
        $display("Read Data Valid Reset : FAIL");


    #10;
    $stop;

end


//==========================
// Clock Generation
//==========================

always #5 CLK_tb = ~CLK_tb;


//==========================
// DUT
//==========================

Reg_File #(
    .Data_Width(Data_Width_tb),
    .Depth(Depth_tb),
    .Addr_Width(Addr_Width_tb)
) Register (

    .WrData(WrData_tb),
    .Address(Address_tb),
    .WrEn(WrEn_tb),
    .RdEn(RdEn_tb),
    .CLK(CLK_tb),
    .rst_n(rst_n_tb),

    .RdData(RdData_tb),
    .RdData_Valid(RdData_Valid_tb),

    .Reg_0(Reg_0_tb),
    .Reg_1(Reg_1_tb),
    .Reg_2(Reg_2_tb),
    .Reg_3(Reg_3_tb)
);

endmodule