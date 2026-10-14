`timescale 1ns/1ps

module ASYNC_FIFO_tb;

    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 3;
    parameter DEPTH      = 8;

    reg                   wclk;
    reg                   rclk;
    reg                   wrst_n;
    reg                   rrst_n;
    reg                   winc;
    reg                   rinc;

    reg  [DATA_WIDTH-1:0] wdata;

    wire                  wfull;
    wire                  rempty;
    wire [DATA_WIDTH-1:0] rdata;


    // =========================================================
    // Expected Data
    // =========================================================

    reg [DATA_WIDTH-1:0] expected_data [0:8];

    integer error_count;


    // =========================================================
    // DUT
    // =========================================================

    ASYNC_FIFO #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) DUT (
        .wclk   (wclk),
        .rclk   (rclk),
        .wrst_n (wrst_n),
        .rrst_n (rrst_n),
        .winc   (winc),
        .rinc   (rinc),
        .wdata  (wdata),
        .wfull  (wfull),
        .rempty (rempty),
        .rdata  (rdata)
    );


    // =========================================================
    // WRITE CLOCK = 100 MHz
    // Period = 10 ns
    // =========================================================

    initial begin
        wclk = 1'b0;

        forever
            #5 wclk = ~wclk;
    end


    // =========================================================
    // READ CLOCK = 40 MHz
    // Period = 25 ns
    // =========================================================

    initial begin
        rclk = 1'b0;

        forever
            #12.5 rclk = ~rclk;
    end


    // =========================================================
    // RESET
    // =========================================================

    initial begin

        wrst_n = 1'b0;
        rrst_n = 1'b0;

        winc  = 1'b0;
        rinc  = 1'b0;
        wdata = 8'h00;

        error_count = 0;

        #30;

        wrst_n = 1'b1;
        rrst_n = 1'b1;

    end


    // =========================================================
    // WRITE PROCESS
    // =========================================================

    initial begin : WRITE_PROCESS

        integer i;

        expected_data[0] = 8'hA1;
        expected_data[1] = 8'hA2;
        expected_data[2] = 8'hA3;
        expected_data[3] = 8'hA4;
        expected_data[4] = 8'hA5;
        expected_data[5] = 8'hA6;
        expected_data[6] = 8'hA7;
        expected_data[7] = 8'hA8;
        expected_data[8] = 8'hA9;


        wait(wrst_n);

        @(posedge wclk);

        $display("\n");
        $display("=================================");
        $display("          WRITE START");
        $display("=================================");


        // =====================================================
        // STEP 1: WRITE 8 ITEMS
        // =====================================================

        for (i = 0; i < 8; i = i + 1) begin

            while (wfull)
                @(posedge wclk);

            wdata = expected_data[i];
            winc  = 1'b1;

            @(posedge wclk);

            winc = 1'b0;

            $display(
                "WRITE [%0d] = %h | FULL = %b",
                i,
                wdata,
                wfull
            );

        end


        // =====================================================
        // STEP 2: WAIT FOR FULL
        // =====================================================

        while (!wfull)
            @(posedge wclk);

        $display("");
        $display("FIFO FULL = %b", wfull);
        $display("8 ITEMS STORED");
        $display("A9 CANNOT BE WRITTEN YET");


        // =====================================================
        // STEP 3:
        // WAIT UNTIL READ SIDE REMOVES DATA
        // =====================================================

        wait(!wfull);

        $display("");
        $display("FIFO FULL DEASSERTED");
        $display("SPACE AVAILABLE FOR A9");


        // =====================================================
        // STEP 4: WRITE A9
        // =====================================================

        while (wfull)
            @(posedge wclk);

        wdata = expected_data[8];
        winc  = 1'b1;

        @(posedge wclk);

        winc = 1'b0;

        $display(
            "WRITE [8] = %h | FULL = %b",
            wdata,
            wfull
        );


        $display("=================================");
        $display("          WRITE DONE");
        $display("=================================");
        $display("");

    end


    // =========================================================
    // READ PROCESS
    // =========================================================

    initial begin : READ_PROCESS

        integer i;

        wait(rrst_n);

        @(posedge rclk);

        $display("");
        $display("=================================");
        $display("          READ START");
        $display("=================================");


        // =====================================================
        // READ A1 -> A9
        // =====================================================

        for (i = 0; i < 9; i = i + 1) begin

            // -------------------------------------------------
            // Wait until FIFO is not empty
            // -------------------------------------------------

            while (rempty)
                @(posedge rclk);


            // -------------------------------------------------
            // rdata is combinational
            // Wait small amount for stable value
            // -------------------------------------------------

            #1;


            $display(
                "READ  [%0d] = %h | EXPECTED = %h",
                i,
                rdata,
                expected_data[i]
            );


            // -------------------------------------------------
            // Check DATA
            // -------------------------------------------------

            if (rdata !== expected_data[i]) begin

                $display(
                    "ERROR: DATA MISMATCH at index %0d",
                    i
                );

                error_count = error_count + 1;

            end

            else begin

                $display(
                    "PASS: DATA [%0d]",
                    i
                );

            end


            // -------------------------------------------------
            // Perform READ
            // -------------------------------------------------

            rinc = 1'b1;

            @(posedge rclk);

            rinc = 1'b0;

        end


        // =====================================================
        // FINAL RESULT
        // =====================================================

        #5;

        $display("");
        $display("=================================");

        if (error_count == 0) begin

            $display("          TEST PASSED");

        end

        else begin

            $display("          TEST FAILED");
            $display("ERROR COUNT = %0d", error_count);

        end

        $display("=================================");
        $display("");

        #20;
        $finish;

    end


    // =========================================================
    // TIMEOUT
    // =========================================================

    initial begin

        #1000;

        $display("");
        $display("=================================");
        $display("          TEST FAILED");
        $display("          TIMEOUT");
        $display("=================================");
        $display("");

        $finish;

    end

endmodule