`timescale 1ns/1ps

module UART_TX_tb;

parameter DATA_WIDTH = 8;

//====================================================
// Signals
//====================================================
reg  [DATA_WIDTH-1:0] P_DATA;
reg                   clk;
reg                   rst_n;
reg                   DATA_VALID;
reg                   PAR_EN;
reg                   PAR_TYP;

wire                  TX_OUT;
wire                  Busy;

//====================================================
// DUT
//====================================================
UART_TX #(
    .DATA_WIDTH(DATA_WIDTH)
) DUT (
    .P_DATA(P_DATA),
    .clk(clk),
    .rst_n(rst_n),
    .DATA_VALID(DATA_VALID),
    .PAR_EN(PAR_EN),
    .PAR_TYP(PAR_TYP),
    .TX_OUT(TX_OUT),
    .Busy(Busy)
);

//====================================================
// 200 MHz Clock
//====================================================
initial begin
    clk = 0;
    forever #2.5 clk = ~clk;
end

//====================================================
// Reset Task
//====================================================
task RESET_TEST;
begin

    $display("\n========== RESET TEST ==========");

    @(negedge clk);
    rst_n = 0;

    repeat(2) @(posedge clk);

    if(TX_OUT==1'b1 && Busy==1'b0)
        $display("RESET TEST PASSED");
    else
        $display("RESET TEST FAILED");

    @(negedge clk);
    rst_n = 1;

end
endtask

//====================================================
// Idle Test
//====================================================
task IDLE_TEST;
begin

    $display("\n========== IDLE TEST ==========");

    repeat(2) @(posedge clk);

    if(TX_OUT==1'b1)
        $display("IDLE TEST PASSED");
    else
        $display("IDLE TEST FAILED");

end
endtask

//====================================================
// No Parity Test
//====================================================
task NO_PARITY_TEST;

integer i;
reg [7:0] expected;

begin

    $display("\n====== NO PARITY TEST ======");

    expected = 8'hA5;

    // Drive Inputs
    @(negedge clk);
    PAR_EN     = 0;
    PAR_TYP    = 0;
    P_DATA     = expected;
    DATA_VALID = 1;

    @(negedge clk);
    DATA_VALID = 0;

    //=========================
    // Check Start Bit
    //=========================
    @(posedge clk);

    if(TX_OUT == 1'b0)
        $display("Start Bit PASS");
    else
        $display("Start Bit FAIL");

    @(posedge clk);

    //=========================
    // Check Data Bits
    //=========================
    for(i=0; i<8; i=i+1) begin

        if(TX_OUT == expected[i])
            $display("Bit %0d PASS", i);
        else
            $display("Bit %0d FAIL (Expected=%b, Got=%b)",
                     i, expected[i], TX_OUT);

        @(posedge clk);
    end

    @(posedge clk);
    //=========================
    // Check Stop Bit
    //=========================
    if(TX_OUT == 1'b1)
        $display("Stop Bit PASS");
    else
        $display("Stop Bit FAIL");
    
    wait(Busy == 0);
    @(posedge clk);

end
endtask

//====================================================
// Odd Parity Test
//====================================================
task ODD_PARITY_TEST;

integer i;
reg [7:0] expected;
reg parity;

begin

    $display("\n====== ODD PARITY TEST ======");

    expected = 8'hF3;
    parity = ~(^expected);

    @(negedge clk);
    PAR_EN     = 1;
    PAR_TYP    = 1;
    P_DATA     = expected;
    DATA_VALID = 1;

    @(negedge clk);
    DATA_VALID = 0;

    @(posedge clk); // start

    for(i=0;i<8;i=i+1)
        @(posedge clk);

    // Parity Bit
    @(posedge clk);
    #1;

    if(TX_OUT==parity)
        $display("Odd Parity PASS");
    else begin
        $display("Odd Parity FAIL");
        $display("Expected Odd = %b , TX_OUT = %b", parity, TX_OUT);
    end

    // Stop
    @(posedge clk);
    #1;

    if(TX_OUT==1)
        $display("Stop PASS");
    else
        $display("Stop FAIL");

    wait(Busy == 0);
    @(posedge clk);

end
endtask

//====================================================
// Even Parity Test
//====================================================
task EVEN_PARITY_TEST;

integer i;
reg [7:0] expected;
reg parity;

begin

    $display("\n====== EVEN PARITY TEST ======");

    expected = 8'h3C;
    parity = ^expected;

    @(negedge clk);

    PAR_EN     = 1;
    PAR_TYP    = 0;
    P_DATA     = expected;
    DATA_VALID = 1;

    @(negedge clk);
    DATA_VALID = 0;

    @(posedge clk);

    for(i=0;i<8;i=i+1)
        @(posedge clk);

    @(posedge clk);

    if(TX_OUT==parity)
        $display("Even Parity PASS");
    else
        $display("Even Parity FAIL");

    @(posedge clk);
    @(posedge clk);

    if(TX_OUT==1)
        $display("Stop PASS");
    else
        $display("Stop FAIL");
    
    wait(Busy == 0);
    @(posedge clk);

end
endtask

//====================================================
// Monitor
//====================================================
initial begin
    $monitor("T=%0t | Busy=%b | TX=%b | DV=%b | PAR_EN=%b | PAR_TYP=%b | DATA=%h",
             $time,Busy,TX_OUT,DATA_VALID,PAR_EN,PAR_TYP,P_DATA);
end

//====================================================
// Main Test Sequence
//====================================================
initial begin

    rst_n      = 1;
    DATA_VALID = 0;
    PAR_EN     = 0;
    PAR_TYP    = 0;
    P_DATA      = 0;

    RESET_TEST();

    IDLE_TEST();

    NO_PARITY_TEST();

    ODD_PARITY_TEST();

    EVEN_PARITY_TEST();

    #20;

    $display("\n================================");
    $display("Simulation Finished");
    $display("================================");

    $stop;

end

endmodule