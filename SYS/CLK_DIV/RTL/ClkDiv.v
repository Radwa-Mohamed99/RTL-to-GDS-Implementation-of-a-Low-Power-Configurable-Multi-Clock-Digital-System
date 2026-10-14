module ClkDiv #(
    parameter DIV_RATIO_WIDTH = 8
)
(
    input  wire [DIV_RATIO_WIDTH-1:0] I_div_ratio,
    input  wire                       I_ref_clk,
    input  wire                       I_rst,
    input  wire                       I_clk_en,

    output wire                       O_div_clk
);

reg  [DIV_RATIO_WIDTH-2:0] count;
wire [DIV_RATIO_WIDTH-2:0] edge_flip_half;
wire [DIV_RATIO_WIDTH-2:0] edge_flip_full;

reg  div_clk;
reg  odd_edge_tog;

wire is_one;
wire is_zero;
wire clk_en;
wire is_odd;


//============================================================
// Counter + Divided Clock
//============================================================

always @(posedge I_ref_clk or negedge I_rst)
begin
    if (!I_rst)
    begin
        count        <= 0;
        div_clk      <= 1'b0;
        odd_edge_tog <= 1'b1;
    end

    else if (clk_en)
    begin

        // Even division ratio
        if (!is_odd && (count == edge_flip_half))
        begin
            count   <= 0;
            div_clk <= ~div_clk;
        end

        // Odd division ratio
        else if (
            (is_odd && (count == edge_flip_half) && odd_edge_tog) ||
            (is_odd && (count == edge_flip_full) && !odd_edge_tog)
        )
        begin
            count        <= 0;
            div_clk      <= ~div_clk;
            odd_edge_tog <= ~odd_edge_tog;
        end

        else
        begin
            count <= count + 1'b1;
        end
    end

    else
    begin
        count   <= 0;
        div_clk <= 1'b0;
    end
end


//============================================================
// Division Ratio Control
//============================================================

assign is_odd = I_div_ratio[0];

assign edge_flip_half = (I_div_ratio >> 1) - 1'b1;

assign edge_flip_full = (I_div_ratio >> 1);

assign is_zero = ~|I_div_ratio;

assign is_one = (I_div_ratio == 1'b1);

assign clk_en = I_clk_en && !is_one && !is_zero;


//============================================================
// Output Clock
//============================================================

assign O_div_clk = clk_en ? div_clk : I_ref_clk;

endmodule