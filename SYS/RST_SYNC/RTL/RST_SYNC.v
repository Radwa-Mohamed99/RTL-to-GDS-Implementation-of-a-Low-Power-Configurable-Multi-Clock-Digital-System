module RST_SYNC #(
    parameter NUM_STAGES = 2 //Number of Flip Flop Stages
) (
    input   wire    RST, 
    input   wire    CLK, 
    
    output  wire     SYNC_RST
);

reg [NUM_STAGES-1:0] sync_reg;

integer i;

always @(posedge CLK or negedge RST) begin 
    if(!RST) begin 
        // Asynchronous Assertion
        sync_reg <= {NUM_STAGES{1'b0}};
    end 

    else begin 
        // Synchronous Deassertion
        sync_reg[0] <= 1'b1;

        for (i = 1; i < NUM_STAGES; i = i + 1)
            sync_reg[i] <= sync_reg[i-1]; 
    end
end 

assign SYNC_RST = sync_reg[NUM_STAGES-1]; 
endmodule 