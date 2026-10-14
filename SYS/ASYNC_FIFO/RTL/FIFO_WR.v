module FIFO_WR #(
    parameter ADDR_WIDTH = 3
)(
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  winc,

    input  wire [ADDR_WIDTH:0]   rptr_gray_sync,

    output wire [ADDR_WIDTH-1:0] waddr,
    output reg  [ADDR_WIDTH:0]   wptr_gray,
    output wire                  wfull
);

    reg [ADDR_WIDTH:0] wr_ptr;

    wire                  winc_en;
    wire [ADDR_WIDTH:0]   wr_ptr_next;
    wire [ADDR_WIDTH:0]   wptr_gray_next;

    //====================================================
    // Write Enable
    //====================================================

    assign winc_en = winc && !wfull;

    //====================================================
    // Next Binary Write Pointer
    //====================================================

    assign wr_ptr_next = wr_ptr + winc_en;

    //====================================================
    // Binary to Gray Conversion
    //====================================================

    assign wptr_gray_next =
                    (wr_ptr_next >> 1) ^ wr_ptr_next;

    //====================================================
    // FULL Flag
    //====================================================

    assign wfull =
            (wptr_gray ==
             {
                 ~rptr_gray_sync[ADDR_WIDTH:ADDR_WIDTH-1],
                  rptr_gray_sync[ADDR_WIDTH-2:0]
             });

    //====================================================
    // Write Pointer
    //====================================================

    always @(posedge wclk or negedge wrst_n) begin

        if (!wrst_n) begin
            wr_ptr    <= {(ADDR_WIDTH+1){1'b0}};
            wptr_gray <= {(ADDR_WIDTH+1){1'b0}};
        end

        else begin
            wr_ptr    <= wr_ptr_next;
            wptr_gray <= wptr_gray_next;
        end

    end

    //====================================================
    // RAM Write Address
    //====================================================

    assign waddr = wr_ptr[ADDR_WIDTH-1:0];

endmodule