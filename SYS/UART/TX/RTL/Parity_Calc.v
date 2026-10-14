module Parity_Calc #(
    parameter DATA_WIDTH = 8
)(
    input  wire                  clk,
    input  wire                  rst_n,

    input  wire [DATA_WIDTH-1:0] P_DATA,
    input  wire                  DATA_VALID,
    input  wire                  PAR_TYP,
    input  wire                  PAR_EN,

    output reg                   par_bit
);

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin
            par_bit <= 1'b0;
        end

        else if (DATA_VALID && PAR_EN) begin

            if (PAR_TYP)
                par_bit <= ~(^P_DATA);    // Odd parity
            else
                par_bit <= ^P_DATA;       //Even parity

        end
    end
    

endmodule