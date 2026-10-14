module SYS_TOP #(
    parameter DATA_WIDTH      = 8,
    parameter ADDR_WIDTH      = 4,
    parameter PRESCALE_WIDTH  = 6,
    parameter DIV_RATIO_WIDTH = 8
)(
    input  wire REF_CLK,
    input  wire UART_CLK,
    input  wire UART_RX_IN,
    input  wire RST,

    output wire UART_TX_OUT,
    output wire parity_error,
    output wire framing_error
);

    //============================================================
    // Internal Signals
    //============================================================

    //============================================================
    // RESET
    //============================================================

    wire RST_SYNC_1;
    wire RST_SYNC_2;


    //============================================================
    // REG FILE <-> SYS CTRL
    //============================================================

    wire [DATA_WIDTH-1:0] RF_WrData;
    wire [ADDR_WIDTH-1:0] RF_Address;

    wire RF_WrEn;
    wire RF_RdEn;

    wire [DATA_WIDTH-1:0] RF_RdData;
    wire RF_RdData_Valid;

    wire [DATA_WIDTH-1:0] REG0;       // Operand A
    wire [DATA_WIDTH-1:0] REG1;       // Operand B
    wire [DATA_WIDTH-1:0] REG2;       // UART Config
    wire [DATA_WIDTH-1:0] REG3;       // TX Divider Ratio


    //============================================================
    // UART CONFIGURATION
    //============================================================

    wire PAR_EN;
    wire PAR_TYP;

    wire [PRESCALE_WIDTH-1:0] PRESCALE;

    assign PAR_EN   = REG2[0];
    assign PAR_TYP  = REG2[1];
    assign PRESCALE = REG2[7:2];


    //============================================================
    // SYS CTRL <-> ALU
    //============================================================

    wire [3:0] ALU_FUN;
    wire       ALU_EN;

    // ALU output = 16-bit when DATA_WIDTH = 8
    wire [(2*DATA_WIDTH)-1:0] ALU_OUT;
    wire                      ALU_OUT_VALID;


    //============================================================
    // CLOCK GATING
    //============================================================

    wire CLK_EN;
    wire ALU_CLK;


    //============================================================
    // CLOCK DIVIDERS
    //============================================================

    wire RX_CLK;
    wire TX_CLK;

    wire CLK_DIV_EN;


    //============================================================
    // RX DIVIDER RATIO
    //============================================================

    wire [DIV_RATIO_WIDTH-1:0] RX_Div_Ratio;


    //============================================================
    // UART RX
    //============================================================

    wire [DATA_WIDTH-1:0] RX_P_DATA;
    wire                  RX_DATA_VALID;


    //============================================================
    // DATA SYNC
    // UART_CLK --> REF_CLK
    //============================================================

    wire [DATA_WIDTH-1:0] RX_SYNC_DATA;
    wire                  RX_SYNC_VALID;


    //============================================================
    // SYS CTRL --> FIFO
    //============================================================

    wire [DATA_WIDTH-1:0] TX_FIFO_WDATA;
    wire                  TX_FIFO_WINC;


    //============================================================
    // ASYNC FIFO
    //============================================================

    wire                  FIFO_FULL;
    wire                  FIFO_EMPTY;

    wire [DATA_WIDTH-1:0] FIFO_RDATA;


    //============================================================
    // UART TX
    //============================================================

    wire TX_BUSY;


    //============================================================
    // FIFO READ PULSE
    //============================================================

    wire FIFO_RINC;


    //============================================================
    // 1) RESET SYNCHRONIZER - REF_CLK DOMAIN
    //============================================================

    RST_SYNC #(
        .NUM_STAGES(2)
    ) RST_SYNC_1_INST (
        .RST      (RST),
        .CLK      (REF_CLK),
        .SYNC_RST (RST_SYNC_1)
    );


    //============================================================
    // 2) RESET SYNCHRONIZER - UART_CLK DOMAIN
    //============================================================

    RST_SYNC #(
        .NUM_STAGES(2)
    ) RST_SYNC_2_INST (
        .RST      (RST),
        .CLK      (UART_CLK),
        .SYNC_RST (RST_SYNC_2)
    );


    //============================================================
    // 3) PRESCALE MUX
    //============================================================

    CLK_DIV_MUX #(
        .PRESCALE_WIDTH (PRESCALE_WIDTH),
        .DIV_RATIO_WIDTH(DIV_RATIO_WIDTH)
    ) PRESCALE_MUX_INST (
        .PRESCALE    (PRESCALE),
        .RX_Div_Ratio(RX_Div_Ratio)
    );


    //============================================================
    // 4) TX CLOCK DIVIDER
    // UART_CLK --> TX_CLK
    //============================================================

    ClkDiv #(
        .DIV_RATIO_WIDTH(DIV_RATIO_WIDTH)
    ) TX_CLK_DIV_INST (
        .I_ref_clk  (UART_CLK),
        .I_rst      (RST_SYNC_2),
        .I_clk_en   (CLK_DIV_EN),
        .I_div_ratio (REG3),
        .O_div_clk  (TX_CLK)
    );


    //============================================================
    // 5) RX CLOCK DIVIDER
    // UART_CLK --> RX_CLK
    //============================================================

    ClkDiv #(
        .DIV_RATIO_WIDTH(DIV_RATIO_WIDTH)
    ) RX_CLK_DIV_INST (
        .I_ref_clk  (UART_CLK),
        .I_rst    (RST_SYNC_2),
        .I_clk_en   (CLK_DIV_EN),
        .I_div_ratio (RX_Div_Ratio),
        .O_div_clk  (RX_CLK)
    );


    //============================================================
    // 6) REGISTER FILE
    //============================================================

    Reg_File #(
        .Data_Width(DATA_WIDTH),
        .Depth     (16),
        .Addr_Width(ADDR_WIDTH)
    ) REG_FILE_INST (
        .WrData       (RF_WrData),
        .Address      (RF_Address),
        .WrEn         (RF_WrEn),
        .RdEn         (RF_RdEn),

        .CLK          (REF_CLK),
        .rst_n        (RST_SYNC_1),

        .RdData       (RF_RdData),
        .RdData_Valid (RF_RdData_Valid),

        .Reg_0        (REG0),
        .Reg_1        (REG1),
        .Reg_2        (REG2),
        .Reg_3        (REG3)
    );
    


    //============================================================
    // 8) ALU
    //============================================================

    CLK_GATE CLK_GATE_INST (
    .CLK_EN    (CLK_EN),
    .CLK       (REF_CLK),
    .GATED_CLK (ALU_CLK)
    );
    ALU #(
        .DATA_WIDTH    (DATA_WIDTH),
        .ALU_FUN_WIDTH (4)
    ) ALU_INST (
        .CLK       (ALU_CLK),
        .RST       (RST_SYNC_1),

        .A         (REG0),
        .B         (REG1),

        .ALU_FUN   (ALU_FUN),

        .Enable    (ALU_EN),

        .ALU_OUT   (ALU_OUT),
        .OUT_VALID (ALU_OUT_VALID)
    );


    //============================================================
    // 9) DATA SYNCHRONIZER
    // UART_CLK --> REF_CLK
    //============================================================

    DATA_SYNC #(
        .NUM_STAGES(2),
        .BUS_WIDTH (DATA_WIDTH)
    ) DATA_SYNC_INST (
        .Unsync_bus  (RX_P_DATA),
        .bus_enable  (RX_DATA_VALID),

        .CLK         (REF_CLK),
        .RST         (RST_SYNC_1),

        .sync_bus    (RX_SYNC_DATA),
        .enable_pulse(RX_SYNC_VALID)
    );


    //============================================================
    // 10) ASYNC FIFO
    // REF_CLK --> TX_CLK
    //============================================================

    ASYNC_FIFO #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(3),
        .DEPTH     (8)
    ) ASYNC_FIFO_INST (
        .wclk   (REF_CLK),
        .rclk   (TX_CLK),

        .wrst_n (RST_SYNC_1),
        .rrst_n (RST_SYNC_2),

        .winc   (TX_FIFO_WINC),
        .rinc   (FIFO_RINC),

        .wdata  (TX_FIFO_WDATA),

        .wfull  (FIFO_FULL),
        .rempty (FIFO_EMPTY),
        .rdata  (FIFO_RDATA)
    );


    //============================================================
    // 11) PULSE GENERATOR
    // TX_BUSY --> FIFO_RINC
    //============================================================

    PULSE_GEN PULSE_GEN_INST (
        .CLK      (TX_CLK),
        .RST      (RST_SYNC_2),
        .LVL_SIG  (TX_BUSY),
        .PULSE_SIG(FIFO_RINC)
    );


    //============================================================
    // 12) SYSTEM CONTROLLER
    //============================================================

    SYS_CTRL #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH (ADDR_WIDTH),
        .FUNC_WIDTH (4)
    ) SYS_CTRL_INST (
        .CLK          (REF_CLK),
        .RST          (RST_SYNC_1),

        // ALU
        .ALU_OUT      (ALU_OUT),
        .OUT_VALID    (ALU_OUT_VALID),

        // Register File
        .RF_RdData       (RF_RdData),
        .RF_RdData_VLD (RF_RdData_Valid),

        // UART RX
        .UART_RX_DATA    (RX_SYNC_DATA),
        .UART_RX_VLD     (RX_SYNC_VALID),

        // FIFO
        .FIFO_FULL    (FIFO_FULL),

        // ALU control
        .ALU_FUN      (ALU_FUN),
        .ALU_EN       (ALU_EN),

        // Clock gating
        .CLKG_EN       (CLK_EN),

        // Register File control
        .RF_Address      (RF_Address),
        .RF_WrEn         (RF_WrEn),
        .RF_RdEn         (RF_RdEn),
        .RF_WrData       (RF_WrData),

        // FIFO write
        .UART_TX_DATA    (TX_FIFO_WDATA),
        .UART_TX_VLD     (TX_FIFO_WINC),

        // Clock divider enable
        .CLKDIV_EN   (CLK_DIV_EN)
    );
    
    

    //============================================================
    // 13) UART
    //============================================================

    UART #(
        .DATA_WIDTH     (DATA_WIDTH),
        .PRESCALE_WIDTH (PRESCALE_WIDTH)
    ) UART_INST (
        .RST           (RST_SYNC_2),

        .TX_CLK        (TX_CLK),
        .RX_CLK        (RX_CLK),

        // UART RX
        .RX_IN_S       (UART_RX_IN),
        .RX_OUT_P      (RX_P_DATA),
        .RX_OUT_V      (RX_DATA_VALID),

        // UART TX
        .TX_IN_P       (FIFO_RDATA),
        .TX_IN_V       (~FIFO_EMPTY),

        .TX_OUT_S      (UART_TX_OUT),
        .TX_OUT_V      (TX_BUSY),

        // UART configuration
        .Prescale      (PRESCALE),
        .parity_enable (PAR_EN),
        .parity_type   (PAR_TYP),

        // Error flags
        .parity_error  (parity_error),
        .framing_error (framing_error)
    );

endmodule
