`timescale 1ns/1ps

module SYS_TB_1S;

    //============================================================
    // PARAMETERS
    //============================================================

    parameter integer DATA_WIDTH = 8;
    parameter integer RF_ADDR    = 4;

    parameter real REF_CLK_PERIOD  = 20.0;
    parameter real UART_CLK_PERIOD = 271.27;
    parameter real TX_CLK_PERIOD   = 8680.56;

    // ALU function codes (match the RTL):
    // 0 ADD, 1 SUB, 2 MUL, 3 DIV, 4 AND, 5 OR, 6 NAND, 7 NOR, 8 XOR,
    // 9 XNOR, 10 A==B, 11 A>B, 12 A>>1, 13 A<<1


    //============================================================
    // SIGNALS
    //============================================================

    reg  RST_N_TB;
    reg  UART_CLK;
    reg  REF_CLK;
    reg  UART_RX_IN;

    wire UART_TX_OUT;
    wire parity_error;
    wire framing_error;


    //============================================================
    // COUNTERS / MODEL
    //============================================================

    integer PASS_CNT;
    integer FAIL_CNT;
    integer TOTAL_CNT;
    integer SUITE_NUM;

    reg [7:0] RF_MODEL [0:15];

    reg PAR_ERR_SEEN;
    reg FRM_ERR_SEEN;


    //============================================================
    // CLOCK GENERATION
    //============================================================

    always #(REF_CLK_PERIOD/2.0)
        REF_CLK = ~REF_CLK;

    always #(UART_CLK_PERIOD/2.0)
        UART_CLK = ~UART_CLK;


    //============================================================
    // ERROR FLAG MONITORS (works for pulse or level flags)
    //============================================================

    always @(posedge parity_error)  PAR_ERR_SEEN = 1'b1;
    always @(posedge framing_error) FRM_ERR_SEEN = 1'b1;


    //============================================================
    // DUT
    //============================================================

    SYS_TOP DUT (
        .REF_CLK       (REF_CLK),
        .UART_CLK      (UART_CLK),
        .UART_RX_IN    (UART_RX_IN),
        .RST           (RST_N_TB),

        .UART_TX_OUT   (UART_TX_OUT),
        .parity_error  (parity_error),
        .framing_error (framing_error)
    );


    //============================================================
    // INITIAL TEST  (ONE SUITE ONLY)
    //============================================================

    initial begin

        initialize();

        // Dump waveform : DUT only, separate file name
        $dumpfile("SYS_TB_1S.vcd");
        $dumpvars(0, SYS_TB_1S.DUT);

        //========================================================
        // SUITE 1 only : PRESCALE = 32 , even parity
        //========================================================
        //         PRESCALE   PAR_EN   PAR_TYP
        RUN_SUITE(6'd32,      1'b1,    1'b0);

        //========================================================
        // END
        //========================================================

        #(TX_CLK_PERIOD * 20);

        $display("");
        $display("======================================================");
        $display("SIMULATION FINISHED");
        $display("======================================================");
        $display("TOTAL TEST CASES  = %0d", TOTAL_CNT);
        $display("PASSED            = %0d", PASS_CNT);
        $display("FAILED            = %0d", FAIL_CNT);
        $display("======================================================");

        if (FAIL_CNT == 0)
            $display("RESULT : ALL TESTS PASSED");
        else
            $display("RESULT : SOME TESTS FAILED");

        $display("======================================================");

        $stop;

    end


    //============================================================
    // INITIALIZE
    //============================================================

    task initialize;
    begin

        RST_N_TB   = 1'b1;
        UART_CLK   = 1'b0;
        REF_CLK    = 1'b0;
        UART_RX_IN = 1'b1;

        PASS_CNT     = 0;
        FAIL_CNT     = 0;
        TOTAL_CNT    = 0;
        SUITE_NUM    = 0;
        PAR_ERR_SEEN = 1'b0;
        FRM_ERR_SEEN = 1'b0;

    end
    endtask


    //============================================================
    // RESET
    //============================================================

    task reset;
    begin

        #(TX_CLK_PERIOD);

        RST_N_TB = 1'b0;

        #(TX_CLK_PERIOD * 2);

        RST_N_TB = 1'b1;

        #(TX_CLK_PERIOD * 2);

    end
    endtask


    //============================================================
    // REGISTER FILE MODEL (reset values)
    //============================================================

    task INIT_MODEL;
        integer j;
    begin

        for (j = 0; j < 16; j = j + 1)
            RF_MODEL[j] = 8'h00;

        RF_MODEL[2] = 8'h81;   // UART config : prescale 32, even parity enabled
        RF_MODEL[3] = 8'h20;   // TX divider ratio = 32

    end
    endtask


    //============================================================
    // FUNCTIONS
    //============================================================

    // Parity bit : TYP = 0 -> even , TYP = 1 -> odd
    function PAR_BIT;
        input [7:0] D;
        input       TYP;
    begin
        PAR_BIT = (^D) ^ TYP;
    end
    endfunction

    // Low byte of the ALU result (reference model)
    function [7:0] ALU_LOW;
        input [7:0] A;
        input [7:0] B;
        input [3:0] F;
        reg   [15:0] R;
    begin

        case (F)
            4'd0  : R = A + B;
            4'd1  : R = A - B;
            4'd2  : R = A * B;
            4'd3  : R = (B == 8'd0) ? 16'd0 : (A / B);
            4'd4  : R = A & B;
            4'd5  : R = A | B;
            4'd6  : R = ~(A & B);
            4'd7  : R = ~(A | B);
            4'd8  : R = A ^ B;
            4'd9  : R = ~(A ^ B);
            4'd10 : R = (A == B) ? 16'd1 : 16'd0;
            4'd11 : R = (A >  B) ? 16'd1 : 16'd0;
            4'd12 : R = A >> 1;
            4'd13 : R = {8'd0, A[6:0], 1'b0};
            default : R = 16'd0;
        endcase

        ALU_LOW = R[7:0];

    end
    endfunction


    //============================================================
    // SEND FRAME
    //============================================================

    task send_frame;

        input [10:0] DATA_IN;
        input        PAR_EN;

        reg [10:0] IN_EN;
        reg [9:0]  IN_DIS;

        integer i;

        begin

            if (PAR_EN) begin

                IN_EN = DATA_IN;

                $display(
                    "TIME = %0t ps : Sending frame (PAR_EN=1) = %b",
                    $time,
                    IN_EN
                );

                for (i = 0; i < 11; i = i + 1) begin

                    @(negedge DUT.UART_INST.TX_CLK);
                    UART_RX_IN = IN_EN[i];

                    @(posedge DUT.UART_INST.TX_CLK);

                end

            end
            else begin

                IN_DIS = DATA_IN[9:0];

                $display(
                    "TIME = %0t ps : Sending frame (PAR_EN=0) = %b",
                    $time,
                    IN_DIS
                );

                for (i = 0; i < 10; i = i + 1) begin

                    @(negedge DUT.UART_INST.TX_CLK);
                    UART_RX_IN = IN_DIS[i];

                    @(posedge DUT.UART_INST.TX_CLK);

                end

            end

            // Hold the last bit (stop) for a FULL bit period
            @(negedge DUT.UART_INST.TX_CLK);

            // Leave line HIGH between frames
            UART_RX_IN = 1'b1;

            // Small guard time between frames
            #(TX_CLK_PERIOD);

        end

    endtask


    //============================================================
    // SEND BYTE
    //============================================================

    task SEND_BYTE;

        input [7:0] D;
        input       PAR_EN;
        input       PAR_TYP;

        begin

            if (PAR_EN)
                send_frame({1'b1, PAR_BIT(D, PAR_TYP), D, 1'b0}, 1'b1);
            else
                send_frame({2'b01, D, 1'b0}, 1'b0);

        end

    endtask


    //============================================================
    // COUNT RESULT
    //============================================================

    task COUNT;

        input OK;

        begin

            TOTAL_CNT = TOTAL_CNT + 1;

            if (OK)
                PASS_CNT = PASS_CNT + 1;
            else
                FAIL_CNT = FAIL_CNT + 1;

        end

    endtask


    //============================================================
    // CHECK OUTPUT (works for parity enabled / disabled)
    //============================================================

    task CHECK_BYTE;

        input [7:0]        EXPEC_DATA;
        input              PAR_EN;
        input              PAR_TYP;
        input [8*40-1:0]   NAME;

        reg [10:0] EXPEC_FRAME;
        reg [10:0] CHK_FRAME;
        reg        GOT;

        integer i;
        integer NBITS;

        begin

            if (PAR_EN) begin
                EXPEC_FRAME = {1'b1, PAR_BIT(EXPEC_DATA, PAR_TYP), EXPEC_DATA, 1'b0};
                NBITS       = 11;
            end
            else begin
                EXPEC_FRAME = {2'b01, EXPEC_DATA, 1'b0};
                NBITS       = 10;
            end

            CHK_FRAME = 11'b0;
            GOT       = 1'b0;

            // Wait until UART TX starts (with timeout)
            begin : WAIT_TX

                fork

                    begin
                        @(posedge DUT.UART_INST.TX_OUT_V);
                        GOT = 1'b1;
                        disable WAIT_TX;
                    end

                    begin
                        #(TX_CLK_PERIOD * 80);
                        disable WAIT_TX;
                    end

                join

            end

            if (GOT) begin

                $display(
                    "READ/ALU : TX started at TIME=%0t",
                    $time
                );

                for (i = 0; i < NBITS; i = i + 1) begin

                    @(negedge DUT.UART_INST.TX_CLK);

                    #1;

                    CHK_FRAME[i] = UART_TX_OUT;

                end

                $display("EXPECTED = %b", EXPEC_FRAME);
                $display("ACTUAL   = %b", CHK_FRAME);

                if (CHK_FRAME === EXPEC_FRAME) begin
                    COUNT(1'b1);
                    $display("TEST CASE %0d (%0s) is Passed", TOTAL_CNT, NAME);
                end
                else begin
                    COUNT(1'b0);
                    $display("TEST CASE %0d (%0s) is FAILED", TOTAL_CNT, NAME);
                end

            end
            else begin

                COUNT(1'b0);
                $display("TEST CASE %0d (%0s) is FAILED : no TX response (timeout)", TOTAL_CNT, NAME);

            end

        end

    endtask


    //============================================================
    // WRITE REGISTER
    //============================================================

    task WRITE_REG;

        input [3:0] ADDR;
        input [7:0] DATA;
        input       PAR_EN;
        input       PAR_TYP;

        begin

            SEND_BYTE(8'hAA,        PAR_EN, PAR_TYP);
            SEND_BYTE({4'b0, ADDR}, PAR_EN, PAR_TYP);
            SEND_BYTE(DATA,         PAR_EN, PAR_TYP);

            RF_MODEL[ADDR] = DATA;

        end

    endtask


    //============================================================
    // READ REGISTER
    //============================================================

    task READ_REG;

        input [3:0]      ADDR;
        input            PAR_EN;
        input            PAR_TYP;
        input [8*40-1:0] NAME;

        begin

            SEND_BYTE(8'hBB,        PAR_EN, PAR_TYP);
            SEND_BYTE({4'b0, ADDR}, PAR_EN, PAR_TYP);

            CHECK_BYTE(RF_MODEL[ADDR], PAR_EN, PAR_TYP, NAME);

        end

    endtask


    //============================================================
    // ALU WITH OPERANDS
    //============================================================

    task ALU_OPS;

        input [7:0]      A;
        input [7:0]      B;
        input [3:0]      F;
        input            PAR_EN;
        input            PAR_TYP;
        input [8*40-1:0] NAME;

        begin

            SEND_BYTE(8'hCC,       PAR_EN, PAR_TYP);
            SEND_BYTE(A,           PAR_EN, PAR_TYP);
            SEND_BYTE(B,           PAR_EN, PAR_TYP);
            SEND_BYTE({4'b0, F},   PAR_EN, PAR_TYP);

            RF_MODEL[0] = A;
            RF_MODEL[1] = B;

            CHECK_BYTE(ALU_LOW(A, B, F), PAR_EN, PAR_TYP, NAME);

            // let the second (MSB) byte finish transmitting
            #(TX_CLK_PERIOD * 14);

        end

    endtask


    //============================================================
    // ALU WITHOUT OPERANDS (uses REG0 / REG1)
    //============================================================

    task ALU_NOOPS;

        input [3:0]      F;
        input            PAR_EN;
        input            PAR_TYP;
        input [8*40-1:0] NAME;

        begin

            SEND_BYTE(8'hDD,       PAR_EN, PAR_TYP);
            SEND_BYTE({4'b0, F},   PAR_EN, PAR_TYP);

            CHECK_BYTE(ALU_LOW(RF_MODEL[0], RF_MODEL[1], F), PAR_EN, PAR_TYP, NAME);

            // let the second (MSB) byte finish transmitting
            #(TX_CLK_PERIOD * 14);

        end

    endtask


    //============================================================
    // FULL TEST SUITE FOR ONE (PRESCALE , PARITY) CONFIGURATION
    //============================================================

    task RUN_SUITE;

        input [5:0] PRESC;
        input       PAR_EN;
        input       PAR_TYP;

        reg [7:0] CFG;

        begin

            SUITE_NUM = SUITE_NUM + 1;

            CFG = {PRESC, PAR_TYP, PAR_EN};

            $display("");
            $display("======================================================");
            $display("SUITE %0d : PRESCALE = %0d , PAR_EN = %0b , PAR_TYP = %0s",
                     SUITE_NUM, PRESC, PAR_EN,
                     (PAR_EN ? (PAR_TYP ? "ODD" : "EVEN") : "N/A"));
            $display("======================================================");

            reset();
            INIT_MODEL();

            //----------------------------------------------------
            // Configuration (reset default = even parity, prescale 32)
            //----------------------------------------------------

            $display("");
            $display("write operation : change UART configuration (REG2 = %b)", CFG);

            WRITE_REG(4'd2, CFG, 1'b1, 1'b0);

            #(TX_CLK_PERIOD * 2);

            PAR_ERR_SEEN = 1'b0;
            FRM_ERR_SEEN = 1'b0;

            //----------------------------------------------------
            // Read configuration / divider registers
            //----------------------------------------------------

            $display("");
            $display("READ CONFIG / DIVIDER REGISTERS");

            READ_REG(4'd2, PAR_EN, PAR_TYP, "READ REG2 (UART CONFIG)");
            READ_REG(4'd3, PAR_EN, PAR_TYP, "READ REG3 (TX DIV RATIO)");

            //----------------------------------------------------
            // Write operations
            //----------------------------------------------------

            $display("");
            $display("WRITE OPERATIONS");

            WRITE_REG(4'd4,  8'h14, PAR_EN, PAR_TYP);
            WRITE_REG(4'd5,  8'h20, PAR_EN, PAR_TYP);
            WRITE_REG(4'd6,  8'h65, PAR_EN, PAR_TYP);
            WRITE_REG(4'd7,  8'hFC, PAR_EN, PAR_TYP);
            WRITE_REG(4'd8,  8'hA5, PAR_EN, PAR_TYP);
            WRITE_REG(4'd15, 8'h3C, PAR_EN, PAR_TYP);

            //----------------------------------------------------
            // Read operations
            //----------------------------------------------------

            $display("");
            $display("READ OPERATIONS");

            READ_REG(4'd4,  PAR_EN, PAR_TYP, "READ ADDR 4");
            READ_REG(4'd5,  PAR_EN, PAR_TYP, "READ ADDR 5");
            READ_REG(4'd6,  PAR_EN, PAR_TYP, "READ ADDR 6");
            READ_REG(4'd7,  PAR_EN, PAR_TYP, "READ ADDR 7");
            READ_REG(4'd8,  PAR_EN, PAR_TYP, "READ ADDR 8");
            READ_REG(4'd15, PAR_EN, PAR_TYP, "READ ADDR 15");

            //----------------------------------------------------
            // ALU operations with operands
            //----------------------------------------------------

            $display("");
            $display("ALU OPERATIONS WITH OPERANDS");

            ALU_OPS(8'h0C, 8'h0A, 4'd0,  PAR_EN, PAR_TYP, "ALU ADD");
            ALU_OPS(8'h32, 8'h14, 4'd1,  PAR_EN, PAR_TYP, "ALU SUB");
            ALU_OPS(8'h0C, 8'h0A, 4'd2,  PAR_EN, PAR_TYP, "ALU MUL");
            ALU_OPS(8'h64, 8'h0A, 4'd3,  PAR_EN, PAR_TYP, "ALU DIV");
            ALU_OPS(8'hF0, 8'h3C, 4'd4,  PAR_EN, PAR_TYP, "ALU AND");
            ALU_OPS(8'hF0, 8'h0F, 4'd5,  PAR_EN, PAR_TYP, "ALU OR");
            ALU_OPS(8'hAA, 8'h55, 4'd8,  PAR_EN, PAR_TYP, "ALU XOR");
            ALU_OPS(8'h0F, 8'h0F, 4'd10, PAR_EN, PAR_TYP, "ALU CMP EQUAL");
            ALU_OPS(8'h20, 8'h10, 4'd11, PAR_EN, PAR_TYP, "ALU CMP GREATER");
            ALU_OPS(8'h86, 8'h01, 4'd12, PAR_EN, PAR_TYP, "ALU SHIFT RIGHT");
            ALU_OPS(8'hC3, 8'h01, 4'd13, PAR_EN, PAR_TYP, "ALU SHIFT LEFT");

            //----------------------------------------------------
            // ALU operations without operands
            //----------------------------------------------------

            $display("");
            $display("ALU OPERATIONS WITHOUT OPERANDS");

            ALU_NOOPS(4'd0,  PAR_EN, PAR_TYP, "ALU ADD (NO OPERANDS)");
            ALU_NOOPS(4'd2,  PAR_EN, PAR_TYP, "ALU MUL (NO OPERANDS)");
            ALU_NOOPS(4'd6,  PAR_EN, PAR_TYP, "ALU NAND (NO OPERANDS)");
            ALU_NOOPS(4'd12, PAR_EN, PAR_TYP, "ALU SHIFT RIGHT (NO OPERANDS)");

            //----------------------------------------------------
            // No false error flags during valid traffic
            //----------------------------------------------------

            $display("");
            $display("ERROR FLAGS : must stay LOW for valid frames");

            if (!PAR_ERR_SEEN && !FRM_ERR_SEEN) begin
                COUNT(1'b1);
                $display("TEST CASE %0d (NO FALSE ERROR FLAGS) is Passed", TOTAL_CNT);
            end
            else begin
                COUNT(1'b0);
                $display("TEST CASE %0d (NO FALSE ERROR FLAGS) is FAILED : parity_error=%0b framing_error=%0b",
                         TOTAL_CNT, PAR_ERR_SEEN, FRM_ERR_SEEN);
            end

            //----------------------------------------------------
            // Parity error injection (only when parity is enabled)
            //----------------------------------------------------

            if (PAR_EN) begin

                $display("");
                $display("PARITY ERROR INJECTION");

                PAR_ERR_SEEN = 1'b0;

                send_frame({1'b1, ~PAR_BIT(8'h5A, PAR_TYP), 8'h5A, 1'b0}, 1'b1);

                #(TX_CLK_PERIOD * 4);

                if (PAR_ERR_SEEN) begin
                    COUNT(1'b1);
                    $display("TEST CASE %0d (PARITY ERROR DETECTED) is Passed", TOTAL_CNT);
                end
                else begin
                    COUNT(1'b0);
                    $display("TEST CASE %0d (PARITY ERROR DETECTED) is FAILED", TOTAL_CNT);
                end

            end

            //----------------------------------------------------
            // Framing error injection (stop bit = 0)
            //----------------------------------------------------

            $display("");
            $display("FRAMING ERROR INJECTION");

            FRM_ERR_SEEN = 1'b0;

            if (PAR_EN)
                send_frame({1'b0, PAR_BIT(8'h5A, PAR_TYP), 8'h5A, 1'b0}, 1'b1);
            else
                send_frame({2'b00, 8'h5A, 1'b0}, 1'b0);

            #(TX_CLK_PERIOD * 4);

            if (FRM_ERR_SEEN) begin
                COUNT(1'b1);
                $display("TEST CASE %0d (FRAMING ERROR DETECTED) is Passed", TOTAL_CNT);
            end
            else begin
                COUNT(1'b0);
                $display("TEST CASE %0d (FRAMING ERROR DETECTED) is FAILED", TOTAL_CNT);
            end

            //----------------------------------------------------
            // System must still work after the error frames
            //----------------------------------------------------

            $display("");
            $display("RECOVERY AFTER ERROR FRAMES");

            READ_REG(4'd4, PAR_EN, PAR_TYP, "READ ADDR 4 AFTER ERRORS");

        end

    endtask


endmodule
