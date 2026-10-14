module DATA_SYNC #(
    parameter NUM_STAGES = 2, //Number of Flip Flop Stages
    parameter BUS_WIDTH  = 8 //Width of synchronized bus
) (
    input   wire    [BUS_WIDTH-1 : 0]   Unsync_bus, 
    input   wire                        bus_enable,
    input   wire                        CLK, 
    input   wire                        RST,

    output  reg     [BUS_WIDTH-1 : 0]   sync_bus,
    output  reg                         enable_pulse
);

reg [NUM_STAGES-1:0] enable_sync;
wire sync_enable = enable_sync[NUM_STAGES-1]; // out of Synchronizer
reg sync_enable_d;
wire SEL; //

integer i;

// Multi Flip-Flop Synchronizer
always @(posedge CLK or negedge RST) begin 
    if(!RST) begin 
        enable_sync <= {NUM_STAGES{1'b0}};
    end 
    
    else begin 

        enable_sync[0] <= bus_enable;

        for(i = 1; i < NUM_STAGES; i = i + 1) begin 
            enable_sync[i] <= enable_sync[i-1];
        end 
    end 
end 

// Pulse GEN 

always @(posedge CLK or negedge RST) begin 
    
    if(!RST) begin 
        sync_enable_d <= 1'b0;
    end 
    
    else begin 
        sync_enable_d <= sync_enable;
    end 
end 

assign SEL = sync_enable & ~sync_enable_d;

// MUX + Data Synchronizer
always @(posedge CLK or negedge RST) begin 
    
    if(!RST) begin 
        sync_bus <= {BUS_WIDTH{1'b0}};
    end 
    
    else if(SEL) begin
        sync_bus <= Unsync_bus;
    end 
end 

// Enable pulse 

always @(posedge CLK or negedge RST) begin 
    
    if(!RST) begin 
        enable_pulse <= 1'b0;
    end 
    
    else begin 
        enable_pulse <= SEL;
    end 
end


endmodule