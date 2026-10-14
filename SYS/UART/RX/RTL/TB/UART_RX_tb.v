`timescale 1ns/1ps

module UART_RX_tb;

    parameter DATA_WIDTH     = 8;
    parameter PRESCALE_WIDTH = 6;

    reg                      RX_IN;
    reg                      clk;
    reg                      rst_n;
    reg                      PAR_EN;
    reg                      PAR_TYP;
    reg [PRESCALE_WIDTH-1:0] Prescale;

    wire [DATA_WIDTH-1:0]    P_DATA;
    wire                     DATA_VALID;
    wire                     PAR_ERR;
    wire                     Stop_ERR;

    real TX_PERIOD;
    real RX_PERIOD;

    reg valid_seen;
    reg par_seen;
    reg stop_seen;

    UART_RX #(
        .DATA_WIDTH(DATA_WIDTH),
        .PRESCALE_WIDTH(PRESCALE_WIDTH)
    ) DUT (
        .RX_IN      (RX_IN),
        .clk        (clk),
        .rst_n      (rst_n),
        .PAR_EN     (PAR_EN),
        .PAR_TYP    (PAR_TYP),
        .Prescale   (Prescale),
        .P_DATA     (P_DATA),
        .DATA_VALID (DATA_VALID),
        .PAR_ERR    (PAR_ERR),
        .Stop_ERR   (Stop_ERR)
    );

    /* =========================================================
       INITIAL TIMING
       ========================================================= */

    initial begin
        TX_PERIOD = 8680.555;
        RX_PERIOD = 1085.069;
    end

    /* =========================================================
       RX CLOCK
       ========================================================= */

    initial begin

        clk = 1'b0;

        forever begin
            #(RX_PERIOD / 2.0);
            clk = ~clk;
        end

    end

    /* =========================================================
       MONITOR OUTPUT PULSES
       ========================================================= */

    always @(posedge DATA_VALID) begin
        valid_seen = 1'b1;
    end

    always @(posedge PAR_ERR) begin
        par_seen = 1'b1;
    end

    always @(posedge Stop_ERR) begin
        stop_seen = 1'b1;
    end

    /* =========================================================
       CLEAR FLAGS
       ========================================================= */

    task clear_flags;
    begin

        valid_seen = 1'b0;
        par_seen   = 1'b0;
        stop_seen  = 1'b0;

    end
    endtask

    /* =========================================================
       RESET
       ========================================================= */

    task reset;
    begin

        rst_n = 1'b0;
        RX_IN = 1'b1;

        #(RX_PERIOD * 5);

        rst_n = 1'b1;

        #(RX_PERIOD * 5);

        clear_flags;

    end
    endtask

    /* =========================================================
       SET PRESCALE
       ========================================================= */

    task set_prescale;

        input [PRESCALE_WIDTH-1:0] ps;

    begin

        Prescale = ps;

        case(ps)

            8: begin
                RX_PERIOD = 1085.069;
            end

            16: begin
                RX_PERIOD = 542.535;
            end

            32: begin
                RX_PERIOD = 271.267;
            end

            default: begin
                RX_PERIOD = 1085.069;
            end

        endcase

        #(RX_PERIOD * 5);

    end
    endtask

    /* =========================================================
       PARITY CALCULATION
       ========================================================= */

    function parity_bit;

        input [DATA_WIDTH-1:0] data;
        input                  parity_type;

    begin

        if(parity_type == 1'b0)
            parity_bit = ^data;
        else
            parity_bit = ~(^data);

    end
    endfunction

    /* =========================================================
       SEND UART FRAME
       ========================================================= */

    task send_frame;

        input [DATA_WIDTH-1:0] data;
        input                  parity_enable;
        input                  parity_type;
        input                  wrong_parity;
        input                  wrong_stop;

        integer i;
        reg parity;

    begin

        /* START BIT */
        RX_IN = 1'b0;
        #(TX_PERIOD);

        /* DATA BITS */
        for(i = 0; i < DATA_WIDTH; i = i + 1) begin

            RX_IN = data[i];

            #(TX_PERIOD);

        end

        /* PARITY BIT */
        if(parity_enable) begin

            parity = parity_bit(data, parity_type);

            if(wrong_parity)
                parity = ~parity;

            RX_IN = parity;

            #(TX_PERIOD);

        end

        /* STOP BIT */
        if(wrong_stop)
            RX_IN = 1'b0;
        else
            RX_IN = 1'b1;

        #(TX_PERIOD);

        /* IDLE */
        RX_IN = 1'b1;

        #(TX_PERIOD * 2);

    end
    endtask

    /* =========================================================
       CHECK RESULT
       ========================================================= */

    task check_result;

        input [DATA_WIDTH-1:0] expected_data;
        input                  expected_par_err;
        input                  expected_stop_err;
        input                  expected_valid;

    begin

        #(RX_PERIOD * 2);

        $display("");
        $display("******** CHECK RESULT ********");

        /* DATA */
        if(P_DATA !== expected_data) begin

            $display(
                "ERROR DATA: Expected=%h Received=%h",
                expected_data,
                P_DATA
            );

        end
        else begin

            $display(
                "DATA PASS: %h",
                P_DATA
            );

        end

        /* PARITY ERROR */
        if(expected_par_err) begin

            if(par_seen)
                $display("PARITY ERROR PASS");
            else
                $display("ERROR PARITY ERROR NOT DETECTED");

        end
        else begin

            if(par_seen)
                $display("ERROR UNEXPECTED PARITY ERROR");
            else
                $display("PARITY PASS");

        end

        /* STOP ERROR */
        if(expected_stop_err) begin

            if(stop_seen)
                $display("STOP ERROR PASS");
            else
                $display("ERROR STOP ERROR NOT DETECTED");

        end
        else begin

            if(stop_seen)
                $display("ERROR UNEXPECTED STOP ERROR");
            else
                $display("STOP PASS");

        end

        /* DATA VALID */
        if(expected_valid) begin

            if(valid_seen)
                $display("DATA_VALID PASS: 1");
            else
                $display("ERROR DATA_VALID NOT DETECTED");

        end
        else begin

            if(valid_seen)
                $display("ERROR UNEXPECTED DATA_VALID");
            else
                $display("DATA_VALID PASS: 0");

        end

        $display("*******************************");
        $display("");

    end
    endtask

    /* =========================================================
       MAIN TEST
       ========================================================= */

    initial begin

        RX_IN    = 1'b1;
        rst_n    = 1'b0;
        PAR_EN   = 1'b0;
        PAR_TYP  = 1'b0;
        Prescale = 6'd8;

        valid_seen = 1'b0;
        par_seen   = 1'b0;
        stop_seen  = 1'b0;

        /* =====================================================
           TEST 1
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 1");
        $display("Prescale = 8");
        $display("Parity   = OFF");
        $display("Data     = A5");
        $display("======================================");

        set_prescale(8);
        reset;

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'hA5, 0, 0, 0, 0);

        check_result(8'hA5, 0, 0, 1);


        /* =====================================================
           TEST 2
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 2");
        $display("Prescale = 8");
        $display("Parity   = EVEN");
        $display("Data     = 55");
        $display("======================================");

        set_prescale(8);
        reset;

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'h55, 1, 0, 0, 0);

        check_result(8'h55, 0, 0, 1);


        /* =====================================================
           TEST 3
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 3");
        $display("Prescale = 16");
        $display("Parity   = EVEN");
        $display("Data     = 3C");
        $display("======================================");

        set_prescale(16);
        reset;

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'h3C, 1, 0, 0, 0);

        check_result(8'h3C, 0, 0, 1);


        /* =====================================================
           TEST 4
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 4");
        $display("Prescale = 32");
        $display("Parity   = EVEN");
        $display("Data     = 96");
        $display("======================================");

        set_prescale(32);
        reset;

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'h96, 1, 0, 0, 0);

        check_result(8'h96, 0, 0, 1);


        /* =====================================================
           TEST 5
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 5");
        $display("Prescale = 32");
        $display("Parity   = ODD");
        $display("Data     = 5A");
        $display("======================================");

        set_prescale(32);
        reset;

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b1;

        clear_flags;

        send_frame(8'h5A, 1, 1, 0, 0);

        check_result(8'h5A, 0, 0, 1);


        /* =====================================================
           TEST 6
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 6");
        $display("Prescale = 8");
        $display("Parity   = WRONG");
        $display("Data     = A5");
        $display("======================================");

        set_prescale(8);
        reset;

        PAR_EN  = 1'b1;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'hA5, 1, 0, 1, 0);

        check_result(8'hA5, 1, 0, 0);


        /* =====================================================
           TEST 7
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 7");
        $display("Prescale = 8");
        $display("Parity   = OFF");
        $display("Wrong Stop");
        $display("Data     = C3");
        $display("======================================");

        set_prescale(8);
        reset;

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'hC3, 0, 0, 0, 1);

        check_result(8'hC3, 0, 1, 0);


        /* =====================================================
           TEST 8
           ===================================================== */

        $display("");
        $display("======================================");
        $display("TEST 8");
        $display("MULTIPLE FRAMES");
        $display("======================================");

        set_prescale(8);
        reset;

        PAR_EN  = 1'b0;
        PAR_TYP = 1'b0;

        clear_flags;

        send_frame(8'h12, 0, 0, 0, 0);

        check_result(8'h12, 0, 0, 1);

        clear_flags;

        send_frame(8'h34, 0, 0, 0, 0);

        check_result(8'h34, 0, 0, 1);

        clear_flags;

        send_frame(8'h56, 0, 0, 0, 0);

        check_result(8'h56, 0, 0, 1);


        /* =====================================================
           DONE
           ===================================================== */

        #(TX_PERIOD * 2);

        $display("");
        $display("======================================");
        $display("UART RX TESTBENCH DONE");
        $display("======================================");

        $stop;

    end

endmodule