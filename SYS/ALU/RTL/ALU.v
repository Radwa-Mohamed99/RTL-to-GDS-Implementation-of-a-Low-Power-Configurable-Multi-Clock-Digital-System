module ALU #(
    parameter DATA_WIDTH = 8,
    parameter ALU_FUN_WIDTH = 4
)(
    input  wire                         CLK,
    input  wire                         RST,

    input  wire [DATA_WIDTH-1:0]        A,
    input  wire [DATA_WIDTH-1:0]        B,
    input  wire [ALU_FUN_WIDTH-1:0]     ALU_FUN,

    input  wire                         Enable,

    output reg [(2*DATA_WIDTH)-1:0]    ALU_OUT,
    output reg                         OUT_VALID
);

always @(posedge CLK or negedge RST)
begin
    if(!RST)
    begin
        ALU_OUT   <= {(2*DATA_WIDTH){1'b0}};
        OUT_VALID <= 1'b0;
    end

    else
    begin
        OUT_VALID <= 1'b0;

        if(Enable)
        begin
            case(ALU_FUN)

                //================================================
                // Arithmetic
                //================================================

                4'b0000:    // ADD
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, A} +
                               {{DATA_WIDTH{1'b0}}, B};

                4'b0001:    // SUB
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, A} -
                               {{DATA_WIDTH{1'b0}}, B};

                4'b0010:    // MUL
                    ALU_OUT <= A * B;

                4'b0011:    // DIV
                    ALU_OUT <= (B != 0) ?
                               {{DATA_WIDTH{1'b0}}, A} / B :
                               {(2*DATA_WIDTH){1'b0}};


                //================================================
                // Logic
                //================================================

                4'b0100:    // AND
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, (A & B)};

                4'b0101:    // OR
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, (A | B)};

                4'b0110:    // NAND
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, ~(A & B)};

                4'b0111:    // NOR
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, ~(A | B)};

                4'b1000:    // XOR
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, (A ^ B)};

                4'b1001:    // XNOR
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, ~(A ^ B)};


                //================================================
                // Compare
                //================================================

                4'b1010:    // EQUAL
                    ALU_OUT <= (A == B) ?
                               {{(2*DATA_WIDTH-1){1'b0}}, 1'b1} :
                               {(2*DATA_WIDTH){1'b0}};

                4'b1011:    // GREATER THAN
                    ALU_OUT <= (A > B) ?
                               {{(2*DATA_WIDTH-1){1'b0}}, 1'b1} :
                               {(2*DATA_WIDTH){1'b0}};


                //================================================
                // Shift
                //================================================

                4'b1100:    // SHIFT RIGHT
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, A >> 1};

                4'b1101:    // SHIFT LEFT
                    ALU_OUT <= {{DATA_WIDTH{1'b0}}, A << 1};


                //================================================
                // Default
                //================================================

                default:
                    ALU_OUT <= {(2*DATA_WIDTH){1'b0}};

            endcase

            OUT_VALID <= 1'b1;
        end
    end
end

endmodule