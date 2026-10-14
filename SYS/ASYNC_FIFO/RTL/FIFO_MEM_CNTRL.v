module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3,
    parameter DEPTH      = 8
)(
    input  wire                  wclk,
    input  wire                  wrst_n,

    input  wire                  winc,

    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [ADDR_WIDTH-1:0] raddr,

    input  wire [DATA_WIDTH-1:0] wdata,
    output wire [DATA_WIDTH-1:0] rdata
);

    integer i;

    reg [DATA_WIDTH-1:0] FIFO_MEM [0:DEPTH-1];

    // WRITE PORT
    always @(posedge wclk or negedge wrst_n) begin

        if (!wrst_n) begin

            for (i = 0; i < DEPTH; i = i + 1)
                FIFO_MEM[i] <= {DATA_WIDTH{1'b0}};

        end

        else begin

            if (winc)
                FIFO_MEM[waddr] <= wdata;

        end
    end

    // COMBINATIONAL READ
    assign rdata = FIFO_MEM[raddr];

endmodule