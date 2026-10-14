`timescale 1ns/1ps

module RST_SYNC_tb;

    // ============================================================
    // Parameters
    // ============================================================
    parameter NUM_STAGES = 2;

    // ============================================================
    // Signals
    // ============================================================
    reg  RST;
    reg  CLK;
    wire SYNC_RST;

    // ============================================================
    // DUT
    // ============================================================
    RST_SYNC #(
        .NUM_STAGES(NUM_STAGES)
    ) DUT (
        .RST      (RST),
        .CLK      (CLK),
        .SYNC_RST (SYNC_RST)
    );

    // ============================================================
    // Clock Generation
    // Period = 10 ns
    // ============================================================
    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK;
    end

    // ============================================================
    // Test
    // ============================================================
    initial begin

        $display("==============================================");
        $display("        RST_SYNC TESTBENCH START");
        $display("==============================================");

        // --------------------------------------------------------
        // Initial conditions
        // --------------------------------------------------------
        RST = 1'b0;

        // Give time for asynchronous reset
        #2;

        // --------------------------------------------------------
        // Test 1: Asynchronous Reset Assertion
        // --------------------------------------------------------
        if (SYNC_RST !== 1'b0)
            $display("ERROR: SYNC_RST is not 0 during reset");
        else
            $display("PASS: Asynchronous reset assertion");

        // --------------------------------------------------------
        // Test 2: Deassert Reset
        // --------------------------------------------------------
        // RST goes HIGH between clock edges
        // CLK edges: 5ns, 15ns, 25ns...
        // RST deasserted at 12ns
        // --------------------------------------------------------
        #10;
        RST = 1'b1;

        $display("Time %0t: RST deasserted", $time);

        // Immediately after RST deassertion,
        // SYNC_RST must still be 0
        #1;

        if (SYNC_RST !== 1'b0)
            $display("ERROR: SYNC_RST changed immediately after RST deassertion");
        else
            $display("PASS: SYNC_RST did not deassert immediately");

        // --------------------------------------------------------
        // Test 3: First Clock Edge
        // --------------------------------------------------------
        // At first posedge after RST deassertion:
        // FF1 = 1
        // FF2 = 0
        // SYNC_RST = 0
        // --------------------------------------------------------
        @(posedge CLK);
        #1;

        if (SYNC_RST !== 1'b0)
            $display("ERROR: SYNC_RST deasserted after first clock");
        else
            $display("PASS: SYNC_RST still asserted after first clock");

        // --------------------------------------------------------
        // Test 4: Second Clock Edge
        // --------------------------------------------------------
        // At second posedge:
        // FF1 = 1
        // FF2 = 1
        // SYNC_RST = 1
        // --------------------------------------------------------
        @(posedge CLK);
        #1;

        if (SYNC_RST !== 1'b1)
            $display("ERROR: SYNC_RST did not deassert synchronously");
        else
            $display("PASS: SYNC_RST deasserted synchronously");

        // --------------------------------------------------------
        // Test 5: Assert Reset Again
        // --------------------------------------------------------
        // Reset assertion must be asynchronous
        // so SYNC_RST should immediately become 0
        // without waiting for CLK
        // --------------------------------------------------------
        #2;
        RST = 1'b0;

        #1;

        if (SYNC_RST !== 1'b0)
            $display("ERROR: SYNC_RST did not assert asynchronously");
        else
            $display("PASS: SYNC_RST asserted asynchronously");

        // --------------------------------------------------------
        // End simulation
        // --------------------------------------------------------
        $display("==============================================");
        $display("        RST_SYNC TESTBENCH FINISHED");
        $display("==============================================");

        #10;
        $stop;

    end

endmodule