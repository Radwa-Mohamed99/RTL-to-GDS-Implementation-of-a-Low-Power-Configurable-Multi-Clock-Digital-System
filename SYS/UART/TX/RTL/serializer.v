module serializer #(
    parameter DATA_WIDTH = 8
)(
    input  wire clk,
    input  wire rst_n,

    input  wire [DATA_WIDTH-1:0] P_DATA,
    input  wire ser_en,
    input  wire Data_Valid,

    output wire ser_data,
    output wire ser_done
);

    reg [DATA_WIDTH-1:0] data_reg;
    reg [$clog2(DATA_WIDTH)-1:0] bit_cnt;


    //============================================================
    // Current serialized bit
    //============================================================

    assign ser_data = data_reg[bit_cnt];


    //============================================================
    // Last bit indication
    //============================================================

    assign ser_done = ser_en &&
                      (bit_cnt == DATA_WIDTH-1);


    //============================================================
    // Serializer
    //============================================================

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin

            data_reg <= 'b0;
            bit_cnt  <= 'b0;

        end

        else if (Data_Valid) begin

            data_reg <= P_DATA;
            bit_cnt  <= 'b0;

        end

        else if (ser_en) begin

            if (bit_cnt != DATA_WIDTH-1)
                bit_cnt <= bit_cnt + 1'b1;

        end

    end

endmodule
