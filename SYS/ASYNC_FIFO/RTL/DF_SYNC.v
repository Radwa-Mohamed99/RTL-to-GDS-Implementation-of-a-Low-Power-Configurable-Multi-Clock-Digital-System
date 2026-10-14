module DF_SYNC #(
    parameter N_Stage = 2,             // Num of flip flops
    parameter DATA_SIZE = 4           // Data width
)(
    input   wire                  CLK,
    input   wire                  RST_N,
    input   wire [DATA_SIZE-1:0]  UN_SYNC_IN_Reg,

    output wire [DATA_SIZE-1:0]  SYNC_OUT_D
);

integer i;

reg [DATA_SIZE-1:0] SYNC_OUT [0:N_Stage-1];

always @(posedge CLK or negedge RST_N) begin
    if(!RST_N) begin
        for(i=0; i<N_Stage; i=i+1)
            SYNC_OUT[i] <= {DATA_SIZE{1'b0}};
    end

    else begin
        SYNC_OUT[0] <= UN_SYNC_IN_Reg;

        for(i=1; i<N_Stage; i=i+1)
            SYNC_OUT[i] <= SYNC_OUT[i-1];
    end
end

assign SYNC_OUT_D = SYNC_OUT[N_Stage-1];

endmodule