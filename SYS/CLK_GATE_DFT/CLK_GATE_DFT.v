module CLK_GATE_DFT (
input      test_en,
input      CLK_EN,
input      CLK,
output     GATED_CLK
);

TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN|test_en),
.CK(CLK),
.ECK(GATED_CLK)

);
endmodule

