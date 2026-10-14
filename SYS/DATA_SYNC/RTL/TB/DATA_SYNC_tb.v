`timescale 1ns/1ps

module DATA_SYNC_tb;

    parameter NUM_STAGES = 2;
    parameter BUS_WIDTH  = 8;

    reg  [BUS_WIDTH-1:0] Unsync_bus;
    reg                  bus_enable;
    reg                  CLK;
    reg                  RST;

    wire [BUS_WIDTH-1:0] sync_bus;
    wire                 enable_pulse;

    // =========================================================
    // DUT
    // =========================================================
    DATA_SYNC #(
        .NUM_STAGES(NUM_STAGES),
        .BUS_WIDTH (BUS_WIDTH)
    ) DUT (
        .Unsync_bus  (Unsync_bus),
        .bus_enable  (bus_enable),
        .CLK         (CLK),
        .RST         (RST),
        .sync_bus    (sync_bus),
        .enable_pulse(enable_pulse)
    );

    // =========================================================
    // Clock generation
    // 10 ns clock period
    // =========================================================
    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK;
    end

    // =========================================================
    // Test sequence
    // =========================================================
    initial begin

        // Initial values
        RST        = 1'b0;
        Unsync_bus = 8'h00;
        bus_enable = 1'b0;

        // -----------------------------------------------------
        // Reset
        // -----------------------------------------------------
        #10;

        if (sync_bus == 8'h00)
            $display("RESET TEST PASSED");
        else
            $display("RESET TEST FAILED");

        // Release reset
        RST = 1'b1;

        // -----------------------------------------------------
        // TEST 1
        // Send first data = A5
        // -----------------------------------------------------
        #10;

        Unsync_bus = 8'hA5;
        bus_enable = 1'b1;

        #10;

        bus_enable = 1'b0;

        // Wait for synchronizer
        #(NUM_STAGES * 10);

        // Give one extra clock for enable_pulse
        #10;

        if (sync_bus == 8'hA5)
            $display("TEST 1 PASSED: sync_bus = %h", sync_bus);
        else
            $display("TEST 1 FAILED: sync_bus = %h", sync_bus);

        // -----------------------------------------------------
        // TEST 2
        // Make sure data remains unchanged
        // when bus_enable = 0
        // -----------------------------------------------------
        Unsync_bus = 8'h55;

        #(NUM_STAGES * 10);

        if (sync_bus == 8'hA5)
            $display("TEST 2 PASSED: sync_bus held at %h", sync_bus);
        else
            $display("TEST 2 FAILED: sync_bus changed to %h", sync_bus);

        // -----------------------------------------------------
        // TEST 3
        // Send second data = 3C
        // -----------------------------------------------------
        Unsync_bus = 8'h3C;

        #10;

        bus_enable = 1'b1;

        #10;

        bus_enable = 1'b0;

        #(NUM_STAGES * 10);

        #10;

        if (sync_bus == 8'h3C)
            $display("TEST 3 PASSED: sync_bus = %h", sync_bus);
        else
            $display("TEST 3 FAILED: sync_bus = %h", sync_bus);

        // -----------------------------------------------------
        // TEST 4
        // Send third data = F0
        // -----------------------------------------------------
        Unsync_bus = 8'hF0;

        #10;

        bus_enable = 1'b1;

        #10;

        bus_enable = 1'b0;

        #(NUM_STAGES * 10);

        #10;

        if (sync_bus == 8'hF0)
            $display("TEST 4 PASSED: sync_bus = %h", sync_bus);
        else
            $display("TEST 4 FAILED: sync_bus = %h", sync_bus);

        // -----------------------------------------------------
        // End simulation
        // -----------------------------------------------------
        #20;

        $display("---------------------------------------");
        $display("Simulation completed");
        $display("---------------------------------------");

        $finish;

    end

    // =========================================================
    // Monitor
    // =========================================================
    initial begin
    $monitor("TIME=%0t CLK=%b RST=%b bus_enable=%b Unsync_bus=%h enable_pulse=%b sync_bus=%h",
             $time, CLK, RST, bus_enable, Unsync_bus, enable_pulse, sync_bus);
    end

endmodule
