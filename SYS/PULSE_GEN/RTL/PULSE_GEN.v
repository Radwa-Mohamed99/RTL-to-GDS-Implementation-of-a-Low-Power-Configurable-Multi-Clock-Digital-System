module PULSE_GEN (
    input  wire CLK,
    input  wire RST,
    input  wire LVL_SIG,
    output reg  PULSE_SIG
);

    reg LVL_SIG_D;

    always @(posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            LVL_SIG_D <= 1'b0;
            PULSE_SIG <= 1'b0;
        end

        else
        begin
            LVL_SIG_D <= LVL_SIG;

            if(LVL_SIG && !LVL_SIG_D)
                PULSE_SIG <= 1'b1;
            else
                PULSE_SIG <= 1'b0;
        end
    end

endmodule