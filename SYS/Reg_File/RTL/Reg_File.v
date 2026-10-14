module Reg_File #(
    parameter Data_Width = 8,
    parameter Depth = 16,
    parameter Addr_Width = 4
)(
    input wire [Data_Width-1:0] WrData,
    input wire [Addr_Width-1:0] Address,
    input wire                  WrEn,
    input wire                  RdEn,
    input wire                  CLK,
    input wire                  rst_n,

    output reg  [Data_Width-1:0] RdData,
    output reg                   RdData_Valid,

    output wire [Data_Width-1:0] Reg_0,
    output wire [Data_Width-1:0] Reg_1,
    output wire [Data_Width-1:0] Reg_2,
    output wire [Data_Width-1:0] Reg_3
);

reg [Data_Width-1:0] reg_file [0:Depth-1];
integer i;

always @(posedge CLK or negedge rst_n)
begin
    if(!rst_n)
    begin
        // Reset register file
        for(i = 0; i < Depth; i = i + 1)
        begin
            if(i == 2)
                // Parity Enable = 1
                // Parity Type   = 0
                // Prescale      = 32
                reg_file[i] <= 8'b10000001;

            else if(i == 3)
                // Default division ratio = 32
                reg_file[i] <= 8'd32;

            else
                reg_file[i] <= {Data_Width{1'b0}};
        end

        RdData       <= {Data_Width{1'b0}};
        RdData_Valid <= 1'b0;
    end

    else
    begin
        // Default: Read Data is not valid
        RdData_Valid <= 1'b0;

        if(WrEn && !RdEn)
            reg_file[Address] <= WrData;

        else if(RdEn && !WrEn)
        begin
            RdData       <= reg_file[Address];
            RdData_Valid <= 1'b1;
        end
    end
end

assign Reg_0 = reg_file[0];
assign Reg_1 = reg_file[1];
assign Reg_2 = reg_file[2];
assign Reg_3 = reg_file[3];

endmodule



