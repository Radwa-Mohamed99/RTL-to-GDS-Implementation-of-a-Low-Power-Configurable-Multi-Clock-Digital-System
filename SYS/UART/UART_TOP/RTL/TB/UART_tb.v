`timescale 1ns/1ps

module UART_tb;

    parameter DATA_WIDTH     = 8;
    parameter PRESCALE_WIDTH = 6;

    //============================================================
    // Clocks
    //============================================================

    reg TX_CLK;
    reg RX_CLK;

    // TX clock = 80 ns
    // RX clock = 10 ns
    // PRESCALE = 8
    //
    // 8 RX clocks = 80 ns = 1 TX bit period
    //============================================================

    initial begin
        TX_CLK = 1'b0;
        forever #40 TX_CLK = ~TX_CLK;
    end

    initial begin
        RX_CLK = 1'b0;
        forever #5 RX_CLK = ~RX_CLK;
    end


    //============================================================
    // Reset
    //============================================================

    reg RST;


    //============================================================
    // UART A TX
    //============================================================

    reg  [DATA_WIDTH-1:0] A_TX_DATA;
    reg                   A_TX_VALID;

    wire                  A_TX_OUT;
    wire                  A_TX_BUSY;


    //============================================================
    // UART A RX
    //============================================================

    wire [DATA_WIDTH-1:0] A_RX_DATA;
    wire                  A_RX_VALID;

    wire                  A_PAR_ERR;
    wire                  A_FRAME_ERR;


    //============================================================
    // UART B TX
    //============================================================

    reg  [DATA_WIDTH-1:0] B_TX_DATA;
    reg                   B_TX_VALID;

    wire                  B_TX_OUT;
    wire                  B_TX_BUSY;


    //============================================================
    // UART B RX
    //============================================================

    wire [DATA_WIDTH-1:0] B_RX_DATA;
    wire                  B_RX_VALID;

    wire                  B_PAR_ERR;
    wire                  B_FRAME_ERR;


    //============================================================
    // Prescale
    //============================================================

    reg [PRESCALE_WIDTH-1:0] Prescale;

    reg PAR_EN;
    reg PAR_TYP;


    //============================================================
    // FULL DUPLEX CONNECTION
    //============================================================

    // UART A TX --> UART B RX
    wire A_TO_B;

    // UART B TX --> UART A RX
    wire B_TO_A;

    assign A_TO_B = A_TX_OUT;
    assign B_TO_A = B_TX_OUT;


    //============================================================
    // UART A
    //============================================================

    UART #(
        .DATA_WIDTH     (DATA_WIDTH),
        .PRESCALE_WIDTH (PRESCALE_WIDTH)
    ) UART_A (
        .RST           (RST),

        .TX_CLK        (TX_CLK),
        .RX_CLK        (RX_CLK),

        .RX_IN_S       (B_TO_A),
        .RX_OUT_P      (A_RX_DATA),
        .RX_OUT_V      (A_RX_VALID),

        .TX_IN_P       (A_TX_DATA),
        .TX_IN_V       (A_TX_VALID),
        .TX_OUT_S      (A_TX_OUT),
        .TX_OUT_V      (A_TX_BUSY),

        .Prescale      (Prescale),

        .parity_enable (PAR_EN),
        .parity_type   (PAR_TYP),

        .parity_error  (A_PAR_ERR),
        .framing_error (A_FRAME_ERR)
    );


    //============================================================
    // UART B
    //============================================================

    UART #(
        .DATA_WIDTH     (DATA_WIDTH),
        .PRESCALE_WIDTH (PRESCALE_WIDTH)
    ) UART_B (
        .RST           (RST),

        .TX_CLK        (TX_CLK),
        .RX_CLK        (RX_CLK),

        .RX_IN_S       (A_TO_B),
        .RX_OUT_P      (B_RX_DATA),
        .RX_OUT_V      (B_RX_VALID),

        .TX_IN_P       (B_TX_DATA),
        .TX_IN_V       (B_TX_VALID),
        .TX_OUT_S      (B_TX_OUT),
        .TX_OUT_V      (B_TX_BUSY),

        .Prescale      (Prescale),

        .parity_enable (PAR_EN),
        .parity_type   (PAR_TYP),

        .parity_error  (B_PAR_ERR),
        .framing_error (B_FRAME_ERR)
    );


    //============================================================
    // Expected Data
    //============================================================

    reg [DATA_WIDTH-1:0] expected_A_RX;
    reg [DATA_WIDTH-1:0] expected_B_RX;

    reg A_PASS;
    reg B_PASS;

    // Flags to remember RX_VALID pulses
    reg A_RX_SEEN;
    reg B_RX_SEEN;


    //============================================================
    // Reset Task
    //============================================================

    task RESET_TEST;
    begin

        $display("");
        $display("==========================================");
        $display("              RESET TEST");
        $display("==========================================");

        RST = 1'b0;

        A_TX_VALID = 1'b0;
        B_TX_VALID = 1'b0;

        A_TX_DATA = '0;
        B_TX_DATA = '0;

        repeat(5) @(posedge RX_CLK);

        RST = 1'b1;

        repeat(5) @(posedge RX_CLK);

        if ((A_TX_BUSY == 1'b0) &&
            (B_TX_BUSY == 1'b0) &&
            (A_RX_VALID == 1'b0) &&
            (B_RX_VALID == 1'b0)) begin

            $display("RESET PASS");

        end
        else begin

            $display("RESET FAIL");

        end

    end
    endtask


    //============================================================
    // FULL DUPLEX TEST
    //============================================================

    task FULL_DUPLEX_TEST;

        input [DATA_WIDTH-1:0] DATA_A;
        input [DATA_WIDTH-1:0] DATA_B;

        integer i;

    begin

        $display("");
        $display("==========================================");
        $display("          FULL DUPLEX TEST");
        $display("==========================================");

        $display("UART A TX DATA = %h", DATA_A);
        $display("UART B TX DATA = %h", DATA_B);

        expected_A_RX = DATA_B;
        expected_B_RX = DATA_A;

        A_PASS = 1'b0;
        B_PASS = 1'b0;

        A_RX_SEEN = 1'b0;
        B_RX_SEEN = 1'b0;


        //========================================================
        // Apply data to BOTH UARTs
        //========================================================

        @(negedge TX_CLK);

        A_TX_DATA = DATA_A;
        B_TX_DATA = DATA_B;

        A_TX_VALID = 1'b1;
        B_TX_VALID = 1'b1;


        //========================================================
        // DATA_VALID pulse
        //========================================================

        @(negedge TX_CLK);

        A_TX_VALID = 1'b0;
        B_TX_VALID = 1'b0;


        //========================================================
        // Monitor RX
        //
        // 250 RX clocks = 2500 ns timeout
        //========================================================

        for (i = 0; i < 250; i = i + 1) begin

            @(posedge RX_CLK);

            if (A_RX_VALID == 1'b1) begin

                A_RX_SEEN = 1'b1;

                $display(
                    "T=%0t | UART A RX_VALID | DATA=%h | PAR_ERR=%b | FRAME_ERR=%b",
                    $time,
                    A_RX_DATA,
                    A_PAR_ERR,
                    A_FRAME_ERR
                );

            end


            if (B_RX_VALID == 1'b1) begin

                B_RX_SEEN = 1'b1;

                $display(
                    "T=%0t | UART B RX_VALID | DATA=%h | PAR_ERR=%b | FRAME_ERR=%b",
                    $time,
                    B_RX_DATA,
                    B_PAR_ERR,
                    B_FRAME_ERR
                );

            end


            // Both received successfully
            if ((A_RX_SEEN == 1'b1) &&
                (B_RX_SEEN == 1'b1)) begin

                i = 250;

            end

        end


        //========================================================
        // Check UART A RX
        // UART B --> UART A
        //========================================================

        if ((A_RX_SEEN == 1'b1) &&
            (A_RX_DATA === expected_A_RX) &&
            (A_PAR_ERR == 1'b0) &&
            (A_FRAME_ERR == 1'b0)) begin

            A_PASS = 1'b1;

            $display("");
            $display("UART A RX PASS");
            $display("Expected = %h", expected_A_RX);
            $display("Received = %h", A_RX_DATA);

        end
        else begin

            $display("");
            $display("UART A RX FAIL");
            $display("Expected = %h", expected_A_RX);
            $display("Received = %h", A_RX_DATA);
            $display("RX_VALID_SEEN = %b", A_RX_SEEN);
            $display("PAR_ERR = %b", A_PAR_ERR);
            $display("FRAME_ERR = %b", A_FRAME_ERR);

        end


        //========================================================
        // Check UART B RX
        // UART A --> UART B
        //========================================================

        if ((B_RX_SEEN == 1'b1) &&
            (B_RX_DATA === expected_B_RX) &&
            (B_PAR_ERR == 1'b0) &&
            (B_FRAME_ERR == 1'b0)) begin

            B_PASS = 1'b1;

            $display("");
            $display("UART B RX PASS");
            $display("Expected = %h", expected_B_RX);
            $display("Received = %h", B_RX_DATA);

        end
        else begin

            $display("");
            $display("UART B RX FAIL");
            $display("Expected = %h", expected_B_RX);
            $display("Received = %h", B_RX_DATA);
            $display("RX_VALID_SEEN = %b", B_RX_SEEN);
            $display("PAR_ERR = %b", B_PAR_ERR);
            $display("FRAME_ERR = %b", B_FRAME_ERR);

        end


        //========================================================
        // Final Result
        //========================================================

        if ((A_PASS == 1'b1) &&
            (B_PASS == 1'b1)) begin

            $display("");
            $display("***************************************");
            $display("       FULL DUPLEX TEST PASS");
            $display("***************************************");

        end
        else begin

            $display("");
            $display("***************************************");
            $display("       FULL DUPLEX TEST FAIL");
            $display("***************************************");

        end


        //========================================================
        // Wait until transmission ends
        //========================================================

        wait(A_TX_BUSY == 1'b0);
        wait(B_TX_BUSY == 1'b0);

        repeat(5) @(posedge RX_CLK);

    end
    endtask


    //============================================================
    // Monitor
    //============================================================

    initial begin

        $monitor(
            "T=%0t | A_TX=%b A_BUSY=%b | B_TX=%b B_BUSY=%b | A_RX=%h A_VALID=%b A_ERR=%b | B_RX=%h B_VALID=%b B_ERR=%b",
            $time,
            A_TX_OUT,
            A_TX_BUSY,
            B_TX_OUT,
            B_TX_BUSY,
            A_RX_DATA,
            A_RX_VALID,
            A_PAR_ERR | A_FRAME_ERR,
            B_RX_DATA,
            B_RX_VALID,
            B_PAR_ERR | B_FRAME_ERR
        );

    end


    //============================================================
    // Main Test
    //============================================================

    initial begin

        // Initial values

        RST = 1'b0;

        A_TX_DATA  = '0;
        B_TX_DATA  = '0;

        A_TX_VALID = 1'b0;
        B_TX_VALID = 1'b0;

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        Prescale = 6'd8;


        //========================================================
        // Reset
        //========================================================

        RESET_TEST();


        //========================================================
        // Test 1
        // No parity
        //========================================================

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        FULL_DUPLEX_TEST(
            8'hA5,
            8'h3C
        );


        //========================================================
        // Test 2
        // No parity
        //========================================================

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        FULL_DUPLEX_TEST(
            8'h55,
            8'h96
        );


        //========================================================
        // Test 3
        // Even parity
        //========================================================

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b0;

        FULL_DUPLEX_TEST(
            8'hA5,
            8'h5A
        );


        //========================================================
        // Test 4
        // Odd parity
        //========================================================

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b1;

        FULL_DUPLEX_TEST(
            8'h3C,
            8'h96
        );


        //========================================================
        // Finish
        //========================================================

        #500;

        $display("");
        $display("==========================================");
        $display("       UART FULL DUPLEX TB DONE");
        $display("==========================================");

        $stop;

    end

endmodule