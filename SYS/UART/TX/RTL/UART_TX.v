module UART_TX #(
    parameter DATA_WIDTH = 8
)(
    input  wire [DATA_WIDTH-1:0] P_DATA,
    input  wire                  clk,
    input  wire                  rst_n,

    input  wire                  DATA_VALID,
    input  wire                  PAR_EN,
    input  wire                  PAR_TYP,

    output wire                  TX_OUT,
    output wire                  Busy
);

    wire       ser_en;
    wire       ser_done;
    wire       ser_data;
    wire       par_bit;
    wire [1:0] mux_sel;

    wire start_bit;
    wire stop_bit;

    wire DATA_LOAD;

    assign start_bit = 1'b0;
    assign stop_bit  = 1'b1;

    // Load input data only once at the beginning of TX
    assign DATA_LOAD = DATA_VALID && !Busy;

    Parity_Calc #(
        .DATA_WIDTH(DATA_WIDTH)
    ) parity_calc_inst (
        .clk        (clk),
        .rst_n      (rst_n),
        .P_DATA     (P_DATA),
        .DATA_VALID (DATA_LOAD),
        .PAR_TYP    (PAR_TYP),
        .PAR_EN     (PAR_EN),
        .par_bit    (par_bit)
    );

    serializer #(
        .DATA_WIDTH(DATA_WIDTH)
    ) serializer_inst (
        .clk       (clk),
        .rst_n     (rst_n),
        .P_DATA    (P_DATA),
        .ser_en    (ser_en),
        .Data_Valid(DATA_LOAD),
        .ser_done  (ser_done),
        .ser_data  (ser_data)
    );

    FSM fsm_inst (
        .clk        (clk),
        .rst_n      (rst_n),
        .DATA_VALID (DATA_VALID),
        .ser_done   (ser_done),
        .PAR_EN     (PAR_EN),

        .ser_en     (ser_en),
        .mux_sel    (mux_sel),
        .Busy       (Busy)
    );

    TX_MUX tx_mux_inst (
        .mux_sel   (mux_sel),
        .par_bit   (par_bit),
        .ser_data  (ser_data),
        .start_bit (start_bit),
        .stop_bit  (stop_bit),
        .TX_OUT    (TX_OUT)
    );

endmodule