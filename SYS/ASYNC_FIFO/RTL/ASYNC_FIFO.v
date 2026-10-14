module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3,
    parameter DEPTH = 8
)(
    input  wire                  wclk,
    input  wire                  rclk,

    input  wire                  wrst_n,
    input  wire                  rrst_n,

    input  wire                  winc,
    input  wire                  rinc,

    input  wire [DATA_WIDTH-1:0] wdata,

    output wire                  wfull,
    output wire                  rempty,
    output wire [DATA_WIDTH-1:0] rdata
);

localparam PTR_WIDTH = ADDR_WIDTH + 1;

wire [ADDR_WIDTH-1:0] waddr;
wire [ADDR_WIDTH-1:0] raddr;

wire [PTR_WIDTH-1:0] wq2_rptr;
wire [PTR_WIDTH-1:0] rq2_wptr;

wire [PTR_WIDTH-1:0] gray_wptr;
wire [PTR_WIDTH-1:0] gray_rptr;


//====================================================
// FIFO MEMORY
//====================================================

FIFO_MEM_CNTRL #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH),
    .DEPTH(DEPTH)
) U_FIFO_MEM (

    .wclk   (wclk),
    .wrst_n (wrst_n),

    .winc   (winc && !wfull),

    .waddr  (waddr),
    .raddr  (raddr),

    .wdata  (wdata),
    .rdata  (rdata)
);


//====================================================
// READ POINTER -> WRITE CLOCK DOMAIN
//====================================================

DF_SYNC #(
    .N_Stage(2),
    .DATA_SIZE(PTR_WIDTH)
) U0_R2W (

    .CLK           (wclk),
    .RST_N         (wrst_n),
    .UN_SYNC_IN_Reg(gray_rptr),
    .SYNC_OUT_D    (wq2_rptr)
);


//====================================================
// WRITE POINTER -> READ CLOCK DOMAIN
//====================================================

DF_SYNC #(
    .N_Stage(2),
    .DATA_SIZE(PTR_WIDTH)
) U0_W2R (

    .CLK           (rclk),
    .RST_N         (rrst_n),
    .UN_SYNC_IN_Reg(gray_wptr),
    .SYNC_OUT_D    (rq2_wptr)
);


//====================================================
// WRITE CONTROL
//====================================================

FIFO_WR #(
    .ADDR_WIDTH(ADDR_WIDTH)
) U_FIFO_WR (

    .wclk          (wclk),
    .wrst_n        (wrst_n),
    .winc          (winc),
    .rptr_gray_sync(wq2_rptr),

    .waddr         (waddr),
    .wptr_gray     (gray_wptr),
    .wfull         (wfull)
);


//====================================================
// READ CONTROL
//====================================================

FIFO_RD #(
    .ADDR_WIDTH(ADDR_WIDTH)
) U_FIFO_RD (

    .rclk          (rclk),
    .rrst_n        (rrst_n),
    .rinc          (rinc),
    .wptr_gray_sync(rq2_wptr),

    .raddr         (raddr),
    .gray_rd_ptr   (gray_rptr),
    .rempty        (rempty)
);

endmodule