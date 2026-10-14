module CLK_DIV_MUX #(
    parameter PRESCALE_WIDTH = 6,
    parameter DIV_RATIO_WIDTH = 8
) (
    input  wire [PRESCALE_WIDTH-1:0] PRESCALE,
    output reg  [DIV_RATIO_WIDTH-1:0] RX_Div_Ratio
);

    always @(*) begin

        case (PRESCALE)
            6'd32: begin
                RX_Div_Ratio = 8'd1;
            end

            6'd16: begin
                RX_Div_Ratio = 8'd2;
            end

            6'd8: begin
                RX_Div_Ratio = 8'd4;
            end

            6'd4: begin
                RX_Div_Ratio = 8'd8;
            end

            default: begin
                RX_Div_Ratio = 8'd1;
            end
        endcase

    end

endmodule
