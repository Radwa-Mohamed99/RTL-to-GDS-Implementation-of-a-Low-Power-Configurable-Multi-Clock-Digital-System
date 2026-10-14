module FIFO_RD #(
    parameter ADDR_WIDTH = 3
)(
    input  wire                  rclk,
    input  wire                  rrst_n,
    input  wire                  rinc,

    input  wire [ADDR_WIDTH:0]   wptr_gray_sync,

    output wire [ADDR_WIDTH-1:0] raddr,
    output reg  [ADDR_WIDTH:0]   gray_rd_ptr,
    output wire                  rempty
);

    reg [ADDR_WIDTH:0] rd_ptr;

    wire                  rinc_en;
    wire [ADDR_WIDTH:0]   rd_ptr_next;
    wire [ADDR_WIDTH:0]   gray_rd_ptr_next;

    //====================================================
    // Read Enable
    //====================================================

    assign rinc_en = rinc && !rempty;

    //====================================================
    // Next Binary Read Pointer
    //====================================================

    assign rd_ptr_next = rd_ptr + rinc_en;

    //====================================================
    // Binary to Gray Conversion
    //====================================================

    assign gray_rd_ptr_next =
                    (rd_ptr_next >> 1) ^ rd_ptr_next;

    //====================================================
    // EMPTY Flag
    //====================================================

    assign rempty =
                    (gray_rd_ptr == wptr_gray_sync);

    //====================================================
    // Read Pointer
    //====================================================

    always @(posedge rclk or negedge rrst_n) begin

        if (!rrst_n) begin
            rd_ptr      <= {(ADDR_WIDTH+1){1'b0}};
            gray_rd_ptr <= {(ADDR_WIDTH+1){1'b0}};
        end

        else begin
            rd_ptr      <= rd_ptr_next;
            gray_rd_ptr <= gray_rd_ptr_next;
        end

    end

    //====================================================
    // RAM Read Address
    //====================================================

    assign raddr = rd_ptr[ADDR_WIDTH-1:0];

endmodule