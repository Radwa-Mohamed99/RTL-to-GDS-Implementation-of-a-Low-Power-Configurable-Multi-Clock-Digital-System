module SYS_TOP_DFT (
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	REF_CLK, 
	UART_CLK, 
	UART_RX_IN, 
	RST, 
	UART_TX_OUT, 
	parity_error, 
	framing_error);
   input [3:0] SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output [3:0] SO;
   input REF_CLK;
   input UART_CLK;
   input UART_RX_IN;
   input RST;
   output UART_TX_OUT;
   output parity_error;
   output framing_error;

   // Internal wires
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N1;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire REF_CLK_M__L5_N13;
   wire REF_CLK_M__L5_N12;
   wire REF_CLK_M__L5_N11;
   wire REF_CLK_M__L5_N10;
   wire REF_CLK_M__L5_N9;
   wire REF_CLK_M__L5_N8;
   wire REF_CLK_M__L5_N7;
   wire REF_CLK_M__L5_N6;
   wire REF_CLK_M__L5_N5;
   wire REF_CLK_M__L5_N4;
   wire REF_CLK_M__L5_N3;
   wire REF_CLK_M__L5_N2;
   wire REF_CLK_M__L5_N1;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N7;
   wire REF_CLK_M__L4_N6;
   wire REF_CLK_M__L4_N5;
   wire REF_CLK_M__L4_N4;
   wire REF_CLK_M__L4_N3;
   wire REF_CLK_M__L4_N2;
   wire REF_CLK_M__L4_N1;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N1;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N1;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire UART_CLK_M__L11_N1;
   wire UART_CLK_M__L11_N0;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N1;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire TX_CLK_M__L3_N0;
   wire TX_CLK_M__L2_N0;
   wire TX_CLK_M__L1_N0;
   wire RX_CLK_M__L3_N0;
   wire RX_CLK_M__L2_N0;
   wire RX_CLK_M__L1_N0;
   wire FE_OFN6_SE;
   wire FE_OFN4_RST_SYNC_2_M;
   wire FE_OFN1_RST_SYNC_1_M;
   wire FE_OFN0_RST_SYNC_1_M;
   wire REF_CLK_M;
   wire UART_CLK_M;
   wire RX_CLK;
   wire RX_CLK_M;
   wire TX_CLK;
   wire TX_CLK_M;
   wire RST_M;
   wire RST_SYNC_1;
   wire RST_SYNC_1_M;
   wire RST_SYNC_2;
   wire RST_SYNC_2_M;
   wire RF_WrEn;
   wire RF_RdEn;
   wire RF_RdData_Valid;
   wire CLK_EN;
   wire ALU_CLK;
   wire ALU_EN;
   wire ALU_OUT_VALID;
   wire RX_DATA_VALID;
   wire RX_SYNC_VALID;
   wire TX_FIFO_WINC;
   wire FIFO_RINC;
   wire FIFO_FULL;
   wire FIFO_EMPTY;
   wire TX_BUSY;
   wire n2;
   wire n9;
   wire n10;
   wire n11;
   wire n14;
   wire n17;
   wire n18;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire [1:0] REG2;
   wire [5:0] PRESCALE;
   wire [7:0] RX_Div_Ratio;
   wire [7:0] REG3;
   wire [7:0] RF_WrData;
   wire [3:0] RF_Address;
   wire [7:0] RF_RdData;
   wire [7:0] REG0;
   wire [7:0] REG1;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] RX_P_DATA;
   wire [7:0] RX_SYNC_DATA;
   wire [7:0] TX_FIFO_WDATA;
   wire [7:0] FIFO_RDATA;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   CLKINVX6M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX20M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N1));
   CLKBUFX20M scan_clk__L8_I1 (.Y(scan_clk__L8_N1), 
	.A(scan_clk__L7_N1));
   CLKINVX6M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX20M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKBUFX20M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX40M scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N1));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   BUFX32M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX16M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX32M REF_CLK_M__L5_I13 (.Y(REF_CLK_M__L5_N13), 
	.A(REF_CLK_M__L4_N7));
   CLKINVX32M REF_CLK_M__L5_I12 (.Y(REF_CLK_M__L5_N12), 
	.A(REF_CLK_M__L4_N7));
   CLKINVX32M REF_CLK_M__L5_I11 (.Y(REF_CLK_M__L5_N11), 
	.A(REF_CLK_M__L4_N6));
   CLKINVX32M REF_CLK_M__L5_I10 (.Y(REF_CLK_M__L5_N10), 
	.A(REF_CLK_M__L4_N6));
   CLKINVX32M REF_CLK_M__L5_I9 (.Y(REF_CLK_M__L5_N9), 
	.A(REF_CLK_M__L4_N5));
   CLKINVX32M REF_CLK_M__L5_I8 (.Y(REF_CLK_M__L5_N8), 
	.A(REF_CLK_M__L4_N4));
   CLKINVX32M REF_CLK_M__L5_I7 (.Y(REF_CLK_M__L5_N7), 
	.A(REF_CLK_M__L4_N3));
   CLKINVX32M REF_CLK_M__L5_I6 (.Y(REF_CLK_M__L5_N6), 
	.A(REF_CLK_M__L4_N3));
   CLKINVX32M REF_CLK_M__L5_I5 (.Y(REF_CLK_M__L5_N5), 
	.A(REF_CLK_M__L4_N2));
   CLKINVX32M REF_CLK_M__L5_I4 (.Y(REF_CLK_M__L5_N4), 
	.A(REF_CLK_M__L4_N2));
   CLKINVX32M REF_CLK_M__L5_I3 (.Y(REF_CLK_M__L5_N3), 
	.A(REF_CLK_M__L4_N1));
   CLKINVX32M REF_CLK_M__L5_I2 (.Y(REF_CLK_M__L5_N2), 
	.A(REF_CLK_M__L4_N1));
   CLKINVX32M REF_CLK_M__L5_I1 (.Y(REF_CLK_M__L5_N1), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX32M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L4_I7 (.Y(REF_CLK_M__L4_N7), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I6 (.Y(REF_CLK_M__L4_N6), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I5 (.Y(REF_CLK_M__L4_N5), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I4 (.Y(REF_CLK_M__L4_N4), 
	.A(REF_CLK_M__L3_N1));
   CLKINVX40M REF_CLK_M__L4_I3 (.Y(REF_CLK_M__L4_N3), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L4_I2 (.Y(REF_CLK_M__L4_N2), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L4_I1 (.Y(REF_CLK_M__L4_N1), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX40M REF_CLK_M__L3_I1 (.Y(REF_CLK_M__L3_N1), 
	.A(REF_CLK_M__L2_N0));
   CLKINVX40M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N0));
   CLKINVX6M REF_CLK_M__L2_I1 (.Y(REF_CLK_M__L2_N1), 
	.A(REF_CLK_M__L1_N0));
   CLKBUFX24M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   CLKINVX12M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX14M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX40M UART_CLK_M__L11_I1 (.Y(UART_CLK_M__L11_N1), 
	.A(UART_CLK_M__L10_N0));
   CLKINVX40M UART_CLK_M__L11_I0 (.Y(UART_CLK_M__L11_N0), 
	.A(UART_CLK_M__L10_N0));
   CLKBUFX20M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKBUFX20M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N1));
   CLKBUFX20M UART_CLK_M__L7_I1 (.Y(UART_CLK_M__L7_N1), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX40M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX40M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX40M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N0));
   CLKBUFX24M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N0));
   BUFX8M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKINVX24M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKINVX8M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   CLKINVX40M TX_CLK_M__L3_I0 (.Y(TX_CLK_M__L3_N0), 
	.A(TX_CLK_M__L2_N0));
   BUFX24M TX_CLK_M__L2_I0 (.Y(TX_CLK_M__L2_N0), 
	.A(TX_CLK_M__L1_N0));
   CLKINVX6M TX_CLK_M__L1_I0 (.Y(TX_CLK_M__L1_N0), 
	.A(TX_CLK_M));
   CLKINVX40M RX_CLK_M__L3_I0 (.Y(RX_CLK_M__L3_N0), 
	.A(RX_CLK_M__L2_N0));
   BUFX14M RX_CLK_M__L2_I0 (.Y(RX_CLK_M__L2_N0), 
	.A(RX_CLK_M__L1_N0));
   CLKINVX6M RX_CLK_M__L1_I0 (.Y(RX_CLK_M__L1_N0), 
	.A(RX_CLK_M));
   BUFX4M FE_OFC6_SE (.Y(FE_OFN6_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC4_RST_SYNC_2_M (.Y(FE_OFN4_RST_SYNC_2_M), 
	.A(RST_SYNC_2_M));
   BUFX4M FE_OFC1_RST_SYNC_1_M (.Y(FE_OFN1_RST_SYNC_1_M), 
	.A(FE_OFN0_RST_SYNC_1_M));
   BUFX4M FE_OFC0_RST_SYNC_1_M (.Y(FE_OFN0_RST_SYNC_1_M), 
	.A(RST_SYNC_1_M));
   BUFX2M U7 (.Y(n2), 
	.A(test_mode));
   INVXLM U13 (.Y(n22), 
	.A(n28));
   DLY1X4M U14 (.Y(n23), 
	.A(n22));
   DLY1X4M U15 (.Y(n24), 
	.A(n26));
   INVXLM U16 (.Y(n25), 
	.A(n36));
   INVXLM U17 (.Y(n26), 
	.A(n25));
   INVXLM U18 (.Y(n27), 
	.A(n25));
   INVXLM U19 (.Y(n28), 
	.A(n35));
   INVXLM U20 (.Y(n29), 
	.A(n28));
   CLKINVX2M U21 (.Y(n30), 
	.A(n28));
   INVXLM U22 (.Y(n31), 
	.A(n34));
   CLKINVX2M U23 (.Y(n32), 
	.A(n31));
   INVXLM U24 (.Y(n33), 
	.A(FE_OFN6_SE));
   INVXLM U25 (.Y(n34), 
	.A(n33));
   CLKINVX2M U26 (.Y(n35), 
	.A(n33));
   INVXLM U27 (.Y(n36), 
	.A(n33));
   MUX2X1_1 REF_CLK_MUX (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L8_N0), 
	.SEL(n2), 
	.OUT(REF_CLK_M));
   MUX2X1_4 UART_CLK_MUX (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(n2), 
	.OUT(UART_CLK_M));
   MUX2X1_3 RX_CLK_MUX (.IN_0(RX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n2), 
	.OUT(RX_CLK_M));
   MUX2X1_2 TX_CLK_MUX (.IN_0(TX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n2), 
	.OUT(TX_CLK_M));
   MUX2X1_0 RST_MUX (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_M));
   MUX2X1_6 RST_SYNC_1_MUX (.IN_0(RST_SYNC_1), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_SYNC_1_M));
   MUX2X1_5 RST_SYNC_2_MUX (.IN_0(RST_SYNC_2), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(RST_SYNC_2_M));
   RST_SYNC_test_0 RST_SYNC_1_INST (.RST(RST_M), 
	.CLK(REF_CLK_M__L5_N11), 
	.SYNC_RST(RST_SYNC_1), 
	.test_si(n14), 
	.test_se(n32));
   RST_SYNC_test_1 RST_SYNC_2_INST (.RST(RST_M), 
	.CLK(UART_CLK_M__L11_N1), 
	.SYNC_RST(RST_SYNC_2), 
	.test_si(RST_SYNC_1), 
	.test_se(n35));
   CLK_DIV_MUX PRESCALE_MUX_INST (.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.RX_Div_Ratio({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		RX_Div_Ratio[3],
		RX_Div_Ratio[2],
		RX_Div_Ratio[1],
		RX_Div_Ratio[0] }));
   ClkDiv_test_1 TX_CLK_DIV_INST (.I_div_ratio({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.I_ref_clk(UART_CLK_M__L11_N0), 
	.I_rst(RST_SYNC_2_M), 
	.I_clk_en(1'b1), 
	.O_div_clk(TX_CLK), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(n29), 
	.FE_OFN4_RST_SYNC_2_M(FE_OFN4_RST_SYNC_2_M), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   ClkDiv_test_0 RX_CLK_DIV_INST (.I_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		RX_Div_Ratio[3],
		RX_Div_Ratio[2],
		RX_Div_Ratio[1],
		RX_Div_Ratio[0] }), 
	.I_ref_clk(UART_CLK_M__L11_N0), 
	.I_rst(RST_SYNC_2_M), 
	.I_clk_en(1'b1), 
	.O_div_clk(RX_CLK), 
	.test_si2(SI[0]), 
	.test_si1(RST_SYNC_2), 
	.test_so2(n11), 
	.test_so1(SO[1]), 
	.test_se(n32), 
	.UART_CLK_M__L11_N1(UART_CLK_M__L11_N1), 
	.UART_CLK_M__L2_N0(UART_CLK_M__L2_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   Reg_File_test_1 REG_FILE_INST (.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.CLK(REF_CLK_M__L5_N0), 
	.rst_n(RST_SYNC_1_M), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_Valid(RF_RdData_Valid), 
	.Reg_0({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.Reg_1({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.Reg_2({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0],
		REG2[1],
		REG2[0] }), 
	.Reg_3({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.test_si2(SI[1]), 
	.test_si1(FIFO_RINC), 
	.test_so2(n14), 
	.test_so1(SO[2]), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN0_RST_SYNC_1_M(FE_OFN0_RST_SYNC_1_M), 
	.REF_CLK_M__L5_N1(REF_CLK_M__L5_N1), 
	.REF_CLK_M__L5_N10(REF_CLK_M__L5_N10), 
	.REF_CLK_M__L5_N11(REF_CLK_M__L5_N11), 
	.REF_CLK_M__L5_N2(REF_CLK_M__L5_N2), 
	.REF_CLK_M__L5_N3(REF_CLK_M__L5_N3), 
	.REF_CLK_M__L5_N4(REF_CLK_M__L5_N4), 
	.REF_CLK_M__L5_N5(REF_CLK_M__L5_N5), 
	.REF_CLK_M__L5_N7(REF_CLK_M__L5_N7));
   CLK_GATE_DFT CLK_GATE_DFT_INST (.test_en(n2), 
	.CLK_EN(CLK_EN), 
	.CLK(REF_CLK_M__L2_N1), 
	.GATED_CLK(ALU_CLK));
   ALU_test_1 ALU_INST (.CLK(ALU_CLK__L3_N0), 
	.RST(FE_OFN0_RST_SYNC_1_M), 
	.A({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.B({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.Enable(ALU_EN), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VALID), 
	.test_si(SI[3]), 
	.test_se(n30), 
	.FE_OFN1_RST_SYNC_1_M(FE_OFN1_RST_SYNC_1_M));
   DATA_SYNC_test_1 DATA_SYNC_INST (.Unsync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.bus_enable(RX_DATA_VALID), 
	.CLK(REF_CLK_M__L5_N10), 
	.RST(FE_OFN1_RST_SYNC_1_M), 
	.sync_bus({ RX_SYNC_DATA[7],
		RX_SYNC_DATA[6],
		RX_SYNC_DATA[5],
		RX_SYNC_DATA[4],
		RX_SYNC_DATA[3],
		RX_SYNC_DATA[2],
		RX_SYNC_DATA[1],
		RX_SYNC_DATA[0] }), 
	.enable_pulse(RX_SYNC_VALID), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n35), 
	.REF_CLK_M__L5_N6(REF_CLK_M__L5_N6), 
	.REF_CLK_M__L5_N8(REF_CLK_M__L5_N8));
   ASYNC_FIFO_test_1 ASYNC_FIFO_INST (.wclk(REF_CLK_M__L5_N11), 
	.rclk(TX_CLK_M__L3_N0), 
	.wrst_n(FE_OFN1_RST_SYNC_1_M), 
	.rrst_n(FE_OFN4_RST_SYNC_2_M), 
	.winc(TX_FIFO_WINC), 
	.rinc(FIFO_RINC), 
	.wdata({ TX_FIFO_WDATA[7],
		TX_FIFO_WDATA[6],
		TX_FIFO_WDATA[5],
		TX_FIFO_WDATA[4],
		TX_FIFO_WDATA[3],
		TX_FIFO_WDATA[2],
		TX_FIFO_WDATA[1],
		TX_FIFO_WDATA[0] }), 
	.wfull(FIFO_FULL), 
	.rempty(FIFO_EMPTY), 
	.rdata({ FIFO_RDATA[7],
		FIFO_RDATA[6],
		FIFO_RDATA[5],
		FIFO_RDATA[4],
		FIFO_RDATA[3],
		FIFO_RDATA[2],
		FIFO_RDATA[1],
		FIFO_RDATA[0] }), 
	.test_si2(SI[2]), 
	.test_si1(ALU_OUT_VALID), 
	.test_so2(n18), 
	.test_so1(SO[3]), 
	.test_se(FE_OFN6_SE), 
	.REF_CLK_M__L5_N12(REF_CLK_M__L5_N12), 
	.REF_CLK_M__L5_N13(REF_CLK_M__L5_N13), 
	.REF_CLK_M__L5_N8(REF_CLK_M__L5_N8), 
	.REF_CLK_M__L5_N9(REF_CLK_M__L5_N9));
   PULSE_GEN_test_1 PULSE_GEN_INST (.CLK(TX_CLK_M__L3_N0), 
	.RST(FE_OFN4_RST_SYNC_2_M), 
	.LVL_SIG(TX_BUSY), 
	.PULSE_SIG(FIFO_RINC), 
	.test_si(n17), 
	.test_se(n27));
   SYS_CTRL_test_1 SYS_CTRL_INST (.CLK(REF_CLK_M__L5_N10), 
	.RST(RST_SYNC_1_M), 
	.UART_RX_DATA({ RX_SYNC_DATA[7],
		RX_SYNC_DATA[6],
		RX_SYNC_DATA[5],
		RX_SYNC_DATA[4],
		RX_SYNC_DATA[3],
		RX_SYNC_DATA[2],
		RX_SYNC_DATA[1],
		RX_SYNC_DATA[0] }), 
	.UART_RX_VLD(RX_SYNC_VALID), 
	.RF_RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RF_RdData_VLD(RF_RdData_Valid), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VALID), 
	.FIFO_FULL(FIFO_FULL), 
	.RF_WrEn(RF_WrEn), 
	.RF_RdEn(RF_RdEn), 
	.RF_Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.RF_WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.UART_TX_DATA({ TX_FIFO_WDATA[7],
		TX_FIFO_WDATA[6],
		TX_FIFO_WDATA[5],
		TX_FIFO_WDATA[4],
		TX_FIFO_WDATA[3],
		TX_FIFO_WDATA[2],
		TX_FIFO_WDATA[1],
		TX_FIFO_WDATA[0] }), 
	.UART_TX_VLD(TX_FIFO_WINC), 
	.CLKG_EN(CLK_EN), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(n24), 
	.FE_OFN0_RST_SYNC_1_M(FE_OFN0_RST_SYNC_1_M), 
	.FE_OFN1_RST_SYNC_1_M(FE_OFN1_RST_SYNC_1_M), 
	.REF_CLK_M__L5_N6(REF_CLK_M__L5_N6), 
	.REF_CLK_M__L5_N7(REF_CLK_M__L5_N7));
   UART_test_1 UART_INST (.RST(FE_OFN4_RST_SYNC_2_M), 
	.TX_CLK(TX_CLK_M__L3_N0), 
	.RX_CLK(RX_CLK_M__L3_N0), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_OUT_V(RX_DATA_VALID), 
	.TX_IN_P({ FIFO_RDATA[7],
		FIFO_RDATA[6],
		FIFO_RDATA[5],
		FIFO_RDATA[4],
		FIFO_RDATA[3],
		FIFO_RDATA[2],
		FIFO_RDATA[1],
		FIFO_RDATA[0] }), 
	.TX_IN_V(FIFO_EMPTY), 
	.TX_OUT_S(UART_TX_OUT), 
	.TX_OUT_V(TX_BUSY), 
	.Prescale({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.parity_enable(REG2[0]), 
	.parity_type(REG2[1]), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si(n9), 
	.test_so(SO[0]), 
	.test_se(n23));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 07:13:48 2026
/////////////////////////////////////////////////////////////
module MUX2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN5_scan_rst;
   wire FE_PHN2_scan_rst;
   wire FE_PHN1_RST;
   wire FE_PHN0_RST;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(IN_1));
   DLY4X1M FE_PHC1_RST (.Y(FE_PHN1_RST), 
	.A(FE_PHN0_RST));
   DLY4X1M FE_PHC0_RST (.Y(FE_PHN0_RST), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN5_scan_rst), 
	.A(FE_PHN1_RST));
endmodule

module MUX2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_rst;
   wire FE_PHN4_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(FE_PHN4_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(IN_1));
   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN7_scan_rst), 
	.A(IN_0));
endmodule

module MUX2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN6_scan_rst;
   wire FE_PHN3_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(FE_PHN3_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN6_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module CLK_DIV_MUX (
	PRESCALE, 
	RX_Div_Ratio);
   input [5:0] PRESCALE;
   output [7:0] RX_Div_Ratio;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX1M U11 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(PRESCALE[3]), 
	.AN(PRESCALE[4]));
   NOR3X2M U12 (.Y(RX_Div_Ratio[2]), 
	.C(PRESCALE[0]), 
	.B(PRESCALE[1]), 
	.A(n6));
   INVX2M U13 (.Y(n15), 
	.A(PRESCALE[2]));
   NAND4BX1M U14 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(PRESCALE[4]), 
	.AN(PRESCALE[3]));
   NOR3X2M U15 (.Y(RX_Div_Ratio[1]), 
	.C(PRESCALE[0]), 
	.B(PRESCALE[1]), 
	.A(n7));
   NOR4X1M U16 (.Y(RX_Div_Ratio[3]), 
	.D(PRESCALE[4]), 
	.C(PRESCALE[5]), 
	.B(PRESCALE[3]), 
	.A(n5));
   NAND3X2M U17 (.Y(n5), 
	.C(PRESCALE[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U18 (.Y(n16), 
	.A(PRESCALE[1]));
   INVX2M U19 (.Y(n17), 
	.A(PRESCALE[0]));
   INVX2M U20 (.Y(n14), 
	.A(PRESCALE[5]));
   OAI211X2M U21 (.Y(RX_Div_Ratio[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(PRESCALE[3]), 
	.B(PRESCALE[4]), 
	.A(PRESCALE[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(RX_Div_Ratio[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(RX_Div_Ratio[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(RX_Div_Ratio[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(RX_Div_Ratio[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_1 (
	I_div_ratio, 
	I_ref_clk, 
	I_rst, 
	I_clk_en, 
	O_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_RST_SYNC_2_M, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L7_N0);
   input [7:0] I_div_ratio;
   input I_ref_clk;
   input I_rst;
   input I_clk_en;
   output O_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_RST_SYNC_2_M;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire FE_PHN9_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire n26;
   wire n27;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC9_div_clk__Exclude_0_NET (.Y(FE_PHN9_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(div_clk), 
	.D(n27), 
	.CK(UART_CLK_M__L2_N0));
   SDFFSQX2M odd_edge_tog_reg (.SN(FE_OFN4_RST_SYNC_2_M), 
	.SI(FE_PHN9_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n26), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[5]), 
	.D(N38), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[4]), 
	.D(N37), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[6]), 
	.D(N39), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[0]), 
	.D(N33), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[3]), 
	.D(N36), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[2]), 
	.D(N35), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_RST_SYNC_2_M), 
	.Q(count[1]), 
	.D(N34), 
	.CK(I_ref_clk));
   OR2X2M U5 (.Y(n1), 
	.B(I_div_ratio[1]), 
	.A(I_div_ratio[2]));
   INVX2M U6 (.Y(n15), 
	.A(I_div_ratio[5]));
   MX2X2M U13 (.Y(O_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_M__L7_N0));
   OAI211X2M U15 (.Y(n17), 
	.C0(N2), 
	.B0(n19), 
	.A1(n20), 
	.A0(I_div_ratio[0]));
   CLKINVX1M U16 (.Y(edge_flip_half[0]), 
	.A(I_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(I_div_ratio[2]), 
	.A0N(I_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(I_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(I_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(I_div_ratio[4]), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(I_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(I_div_ratio[6]));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(I_div_ratio[6]));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(I_div_ratio[7]));
   MXI2X1M U27 (.Y(n27), 
	.S0(div_clk__Exclude_0_NET), 
	.B(n17), 
	.A(n16));
   CLKNAND2X2M U28 (.Y(n16), 
	.B(n17), 
	.A(N2));
   XNOR2X1M U29 (.Y(n26), 
	.B(n18), 
	.A(odd_edge_tog));
   NAND2BX1M U30 (.Y(n18), 
	.B(N2), 
	.AN(n19));
   NOR2BX1M U31 (.Y(N39), 
	.B(n17), 
	.AN(N22));
   NOR2BX1M U32 (.Y(N38), 
	.B(n17), 
	.AN(N21));
   NOR2BX1M U33 (.Y(N37), 
	.B(n17), 
	.AN(N20));
   NOR2BX1M U34 (.Y(N36), 
	.B(n17), 
	.AN(N19));
   NOR2BX1M U35 (.Y(N35), 
	.B(n17), 
	.AN(N18));
   NOR2BX1M U36 (.Y(N34), 
	.B(n17), 
	.AN(N17));
   NOR2BX1M U37 (.Y(N33), 
	.B(n17), 
	.AN(N16));
   CLKNAND2X2M U38 (.Y(n19), 
	.B(I_div_ratio[0]), 
	.A(n21));
   MXI2X1M U39 (.Y(n21), 
	.S0(odd_edge_tog), 
	.B(n20), 
	.A(n22));
   NAND4X1M U40 (.Y(n22), 
	.D(n28), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   NOR4X1M U41 (.Y(n28), 
	.D(n32), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   CLKXOR2X2M U42 (.Y(n32), 
	.B(I_div_ratio[4]), 
	.A(count[3]));
   CLKXOR2X2M U43 (.Y(n31), 
	.B(I_div_ratio[3]), 
	.A(count[2]));
   CLKXOR2X2M U44 (.Y(n30), 
	.B(I_div_ratio[2]), 
	.A(count[1]));
   CLKXOR2X2M U45 (.Y(n29), 
	.B(I_div_ratio[1]), 
	.A(count[0]));
   XNOR2X1M U46 (.Y(n25), 
	.B(count[5]), 
	.A(I_div_ratio[6]));
   XNOR2X1M U47 (.Y(n24), 
	.B(count[6]), 
	.A(I_div_ratio[7]));
   XNOR2X1M U48 (.Y(n23), 
	.B(count[4]), 
	.A(I_div_ratio[5]));
   NAND4X1M U49 (.Y(n20), 
	.D(n36), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   NOR4X1M U50 (.Y(n36), 
	.D(n40), 
	.C(n39), 
	.B(n38), 
	.A(n37));
   CLKXOR2X2M U51 (.Y(n40), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U52 (.Y(n39), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U53 (.Y(n38), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U54 (.Y(n37), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U55 (.Y(n35), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U56 (.Y(n34), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U57 (.Y(n33), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   OA21X1M U58 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n42), 
	.A0(n41));
   OR3X1M U59 (.Y(n42), 
	.C(I_div_ratio[1]), 
	.B(I_div_ratio[3]), 
	.A(I_div_ratio[2]));
   OR4X1M U60 (.Y(n41), 
	.D(I_div_ratio[7]), 
	.C(I_div_ratio[6]), 
	.B(I_div_ratio[5]), 
	.A(I_div_ratio[4]));
   ClkDiv_0_DW01_inc_0 add_62 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_0 (
	I_div_ratio, 
	I_ref_clk, 
	I_rst, 
	I_clk_en, 
	O_div_clk, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	UART_CLK_M__L11_N1, 
	UART_CLK_M__L2_N0, 
	UART_CLK_M__L7_N0);
   input [7:0] I_div_ratio;
   input I_ref_clk;
   input I_rst;
   input I_clk_en;
   output O_div_clk;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input UART_CLK_M__L11_N1;
   input UART_CLK_M__L2_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire FE_PHN8_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so1 = count[1] ;
   assign test_so2 = odd_edge_tog ;

   DLY4X1M FE_PHC8_div_clk__Exclude_0_NET (.Y(FE_PHN8_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(div_clk), 
	.D(n43), 
	.CK(UART_CLK_M__L2_N0));
   SDFFSQX2M odd_edge_tog_reg (.SN(I_rst), 
	.SI(FE_PHN8_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n44), 
	.CK(I_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[6]), 
	.D(N39), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX2M \count_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[0]), 
	.D(N33), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[5]), 
	.D(N38), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[4]), 
	.D(N37), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[3]), 
	.D(N36), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX2M \count_reg[2]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[2]), 
	.D(N35), 
	.CK(UART_CLK_M__L11_N1));
   SDFFRQX4M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(I_rst), 
	.Q(count[1]), 
	.D(N34), 
	.CK(UART_CLK_M__L11_N1));
   OR2X2M U5 (.Y(n1), 
	.B(I_div_ratio[1]), 
	.A(I_div_ratio[2]));
   OAI211X2M U6 (.Y(n17), 
	.C0(N2), 
	.B0(n19), 
	.A1(n20), 
	.A0(I_div_ratio[0]));
   INVX2M U13 (.Y(n15), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U15 (.Y(O_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_M__L7_N0));
   CLKINVX1M U16 (.Y(edge_flip_half[0]), 
	.A(I_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(I_div_ratio[2]), 
	.A0N(I_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(I_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(I_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   MXI2X1M U27 (.Y(n43), 
	.S0(div_clk__Exclude_0_NET), 
	.B(n17), 
	.A(n16));
   CLKNAND2X2M U28 (.Y(n16), 
	.B(n17), 
	.A(N2));
   XNOR2X1M U29 (.Y(n44), 
	.B(n18), 
	.A(odd_edge_tog));
   NAND2BX1M U30 (.Y(n18), 
	.B(N2), 
	.AN(n19));
   NOR2BX1M U31 (.Y(N39), 
	.B(n17), 
	.AN(N22));
   NOR2BX1M U32 (.Y(N38), 
	.B(n17), 
	.AN(N21));
   NOR2BX1M U33 (.Y(N37), 
	.B(n17), 
	.AN(N20));
   NOR2BX1M U34 (.Y(N36), 
	.B(n17), 
	.AN(N19));
   NOR2BX1M U35 (.Y(N35), 
	.B(n17), 
	.AN(N18));
   NOR2BX1M U36 (.Y(N34), 
	.B(n17), 
	.AN(N17));
   NOR2BX1M U37 (.Y(N33), 
	.B(n17), 
	.AN(N16));
   CLKNAND2X2M U38 (.Y(n19), 
	.B(I_div_ratio[0]), 
	.A(n21));
   MXI2X1M U39 (.Y(n21), 
	.S0(odd_edge_tog), 
	.B(n20), 
	.A(n22));
   NAND4X1M U40 (.Y(n22), 
	.D(n28), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   NOR4X1M U41 (.Y(n28), 
	.D(n32), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   CLKXOR2X2M U42 (.Y(n32), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   CLKXOR2X2M U43 (.Y(n31), 
	.B(I_div_ratio[3]), 
	.A(count[2]));
   CLKXOR2X2M U44 (.Y(n30), 
	.B(I_div_ratio[2]), 
	.A(count[1]));
   CLKXOR2X2M U45 (.Y(n29), 
	.B(I_div_ratio[1]), 
	.A(count[0]));
   XNOR2X1M U46 (.Y(n25), 
	.B(count[5]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U47 (.Y(n24), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U48 (.Y(n23), 
	.B(count[4]), 
	.A(LTIE_LTIELO_NET));
   NAND4X1M U49 (.Y(n20), 
	.D(n36), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   NOR4X1M U50 (.Y(n36), 
	.D(n40), 
	.C(n39), 
	.B(n38), 
	.A(n37));
   CLKXOR2X2M U51 (.Y(n40), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U52 (.Y(n39), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U53 (.Y(n38), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U54 (.Y(n37), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U55 (.Y(n35), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U56 (.Y(n34), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U57 (.Y(n33), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   OA21X1M U58 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n42), 
	.A0(n41));
   OR3X1M U59 (.Y(n42), 
	.C(I_div_ratio[1]), 
	.B(I_div_ratio[3]), 
	.A(I_div_ratio[2]));
   OR4X1M U60 (.Y(n41), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   ClkDiv_1_DW01_inc_0 add_62 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module Reg_File_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	CLK, 
	rst_n, 
	RdData, 
	RdData_Valid, 
	Reg_0, 
	Reg_1, 
	Reg_2, 
	Reg_3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_RST_SYNC_1_M, 
	REF_CLK_M__L5_N1, 
	REF_CLK_M__L5_N10, 
	REF_CLK_M__L5_N11, 
	REF_CLK_M__L5_N2, 
	REF_CLK_M__L5_N3, 
	REF_CLK_M__L5_N4, 
	REF_CLK_M__L5_N5, 
	REF_CLK_M__L5_N7);
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input CLK;
   input rst_n;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] Reg_0;
   output [7:0] Reg_1;
   output [7:0] Reg_2;
   output [7:0] Reg_3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_RST_SYNC_1_M;
   input REF_CLK_M__L5_N1;
   input REF_CLK_M__L5_N10;
   input REF_CLK_M__L5_N11;
   input REF_CLK_M__L5_N2;
   input REF_CLK_M__L5_N3;
   input REF_CLK_M__L5_N4;
   input REF_CLK_M__L5_N5;
   input REF_CLK_M__L5_N7;

   // Internal wires
   wire FE_OFN2_RST_SYNC_1_M;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \reg_file[4][7] ;
   wire \reg_file[4][6] ;
   wire \reg_file[4][5] ;
   wire \reg_file[4][4] ;
   wire \reg_file[4][3] ;
   wire \reg_file[4][2] ;
   wire \reg_file[4][1] ;
   wire \reg_file[4][0] ;
   wire \reg_file[5][7] ;
   wire \reg_file[5][6] ;
   wire \reg_file[5][5] ;
   wire \reg_file[5][4] ;
   wire \reg_file[5][3] ;
   wire \reg_file[5][2] ;
   wire \reg_file[5][1] ;
   wire \reg_file[5][0] ;
   wire \reg_file[6][7] ;
   wire \reg_file[6][6] ;
   wire \reg_file[6][5] ;
   wire \reg_file[6][4] ;
   wire \reg_file[6][3] ;
   wire \reg_file[6][2] ;
   wire \reg_file[6][1] ;
   wire \reg_file[6][0] ;
   wire \reg_file[7][7] ;
   wire \reg_file[7][6] ;
   wire \reg_file[7][5] ;
   wire \reg_file[7][4] ;
   wire \reg_file[7][3] ;
   wire \reg_file[7][2] ;
   wire \reg_file[7][1] ;
   wire \reg_file[7][0] ;
   wire \reg_file[8][7] ;
   wire \reg_file[8][6] ;
   wire \reg_file[8][5] ;
   wire \reg_file[8][4] ;
   wire \reg_file[8][3] ;
   wire \reg_file[8][2] ;
   wire \reg_file[8][1] ;
   wire \reg_file[8][0] ;
   wire \reg_file[9][7] ;
   wire \reg_file[9][6] ;
   wire \reg_file[9][5] ;
   wire \reg_file[9][4] ;
   wire \reg_file[9][3] ;
   wire \reg_file[9][2] ;
   wire \reg_file[9][1] ;
   wire \reg_file[9][0] ;
   wire \reg_file[10][7] ;
   wire \reg_file[10][6] ;
   wire \reg_file[10][5] ;
   wire \reg_file[10][4] ;
   wire \reg_file[10][3] ;
   wire \reg_file[10][2] ;
   wire \reg_file[10][1] ;
   wire \reg_file[10][0] ;
   wire \reg_file[11][7] ;
   wire \reg_file[11][6] ;
   wire \reg_file[11][5] ;
   wire \reg_file[11][4] ;
   wire \reg_file[11][3] ;
   wire \reg_file[11][2] ;
   wire \reg_file[11][1] ;
   wire \reg_file[11][0] ;
   wire \reg_file[12][7] ;
   wire \reg_file[12][6] ;
   wire \reg_file[12][5] ;
   wire \reg_file[12][4] ;
   wire \reg_file[12][3] ;
   wire \reg_file[12][2] ;
   wire \reg_file[12][1] ;
   wire \reg_file[12][0] ;
   wire \reg_file[13][7] ;
   wire \reg_file[13][6] ;
   wire \reg_file[13][5] ;
   wire \reg_file[13][4] ;
   wire \reg_file[13][3] ;
   wire \reg_file[13][2] ;
   wire \reg_file[13][1] ;
   wire \reg_file[13][0] ;
   wire \reg_file[14][7] ;
   wire \reg_file[14][6] ;
   wire \reg_file[14][5] ;
   wire \reg_file[14][4] ;
   wire \reg_file[14][3] ;
   wire \reg_file[14][2] ;
   wire \reg_file[14][1] ;
   wire \reg_file[14][0] ;
   wire \reg_file[15][7] ;
   wire \reg_file[15][6] ;
   wire \reg_file[15][5] ;
   wire \reg_file[15][4] ;
   wire \reg_file[15][3] ;
   wire \reg_file[15][2] ;
   wire \reg_file[15][1] ;
   wire \reg_file[15][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n442;
   wire n443;
   wire n444;
   wire n445;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;
   assign test_so1 = \reg_file[5][3]  ;
   assign test_so2 = \reg_file[15][7]  ;

   CLKBUFX8M FE_OFC2_RST_SYNC_1_M (.Y(FE_OFN2_RST_SYNC_1_M), 
	.A(rst_n));
   SDFFRQX2M \reg_file_reg[5][7]  (.SI(\reg_file[5][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[5][7] ), 
	.D(n266), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[5][6]  (.SI(\reg_file[5][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[5][6] ), 
	.D(n265), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[5][5]  (.SI(\reg_file[5][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[5][5] ), 
	.D(n264), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[5][4]  (.SI(test_si2), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[5][4] ), 
	.D(n263), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX4M \reg_file_reg[5][3]  (.SI(\reg_file[5][2] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[5][3] ), 
	.D(n262), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[5][2]  (.SI(\reg_file[5][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[5][2] ), 
	.D(n261), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[5][1]  (.SI(\reg_file[5][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[5][1] ), 
	.D(n260), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[5][0]  (.SI(\reg_file[4][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[5][0] ), 
	.D(n259), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[7][7]  (.SI(\reg_file[7][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][7] ), 
	.D(n250), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][6]  (.SI(\reg_file[7][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][6] ), 
	.D(n249), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][5]  (.SI(\reg_file[7][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][5] ), 
	.D(n248), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][4]  (.SI(\reg_file[7][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][4] ), 
	.D(n247), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][3]  (.SI(\reg_file[7][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][3] ), 
	.D(n246), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][2]  (.SI(\reg_file[7][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][2] ), 
	.D(n245), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][1]  (.SI(\reg_file[7][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][1] ), 
	.D(n244), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[7][0]  (.SI(\reg_file[6][7] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[7][0] ), 
	.D(n243), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[9][7]  (.SI(\reg_file[9][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][7] ), 
	.D(n234), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[9][6]  (.SI(\reg_file[9][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][6] ), 
	.D(n233), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[9][5]  (.SI(\reg_file[9][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][5] ), 
	.D(n232), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[9][4]  (.SI(\reg_file[9][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][4] ), 
	.D(n231), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[9][3]  (.SI(\reg_file[9][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][3] ), 
	.D(n230), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[9][2]  (.SI(\reg_file[9][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][2] ), 
	.D(n229), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[9][1]  (.SI(\reg_file[9][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][1] ), 
	.D(n228), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[9][0]  (.SI(\reg_file[8][7] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[9][0] ), 
	.D(n227), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[11][7]  (.SI(\reg_file[11][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[11][7] ), 
	.D(n218), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][6]  (.SI(\reg_file[11][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[11][6] ), 
	.D(n217), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][5]  (.SI(\reg_file[11][4] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[11][5] ), 
	.D(n216), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][4]  (.SI(\reg_file[11][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[11][4] ), 
	.D(n215), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][3]  (.SI(\reg_file[11][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[11][3] ), 
	.D(n214), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][2]  (.SI(\reg_file[11][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[11][2] ), 
	.D(n213), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][1]  (.SI(\reg_file[11][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[11][1] ), 
	.D(n212), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[11][0]  (.SI(\reg_file[10][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[11][0] ), 
	.D(n211), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[13][7]  (.SI(\reg_file[13][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[13][7] ), 
	.D(n202), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[13][6]  (.SI(\reg_file[13][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[13][6] ), 
	.D(n201), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[13][5]  (.SI(\reg_file[13][4] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[13][5] ), 
	.D(n200), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[13][4]  (.SI(\reg_file[13][3] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[13][4] ), 
	.D(n199), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[13][3]  (.SI(\reg_file[13][2] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[13][3] ), 
	.D(n198), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[13][2]  (.SI(\reg_file[13][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[13][2] ), 
	.D(n197), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[13][1]  (.SI(\reg_file[13][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[13][1] ), 
	.D(n196), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[13][0]  (.SI(\reg_file[12][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[13][0] ), 
	.D(n195), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[15][7]  (.SI(\reg_file[15][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[15][7] ), 
	.D(n186), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[15][6]  (.SI(\reg_file[15][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[15][6] ), 
	.D(n185), 
	.CK(REF_CLK_M__L5_N11));
   SDFFRQX2M \reg_file_reg[15][5]  (.SI(\reg_file[15][4] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[15][5] ), 
	.D(n184), 
	.CK(REF_CLK_M__L5_N11));
   SDFFRQX2M \reg_file_reg[15][4]  (.SI(\reg_file[15][3] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[15][4] ), 
	.D(n183), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[15][3]  (.SI(\reg_file[15][2] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[15][3] ), 
	.D(n182), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[15][2]  (.SI(\reg_file[15][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[15][2] ), 
	.D(n181), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[15][1]  (.SI(\reg_file[15][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[15][1] ), 
	.D(n180), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[15][0]  (.SI(\reg_file[14][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[15][0] ), 
	.D(n179), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[4][7]  (.SI(\reg_file[4][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][7] ), 
	.D(n274), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[4][6]  (.SI(\reg_file[4][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][6] ), 
	.D(n273), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[4][5]  (.SI(\reg_file[4][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][5] ), 
	.D(n272), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[4][4]  (.SI(\reg_file[4][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][4] ), 
	.D(n271), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[4][3]  (.SI(\reg_file[4][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][3] ), 
	.D(n270), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[4][2]  (.SI(\reg_file[4][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[4][2] ), 
	.D(n269), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[4][1]  (.SI(\reg_file[4][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[4][1] ), 
	.D(n268), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[4][0]  (.SI(Reg_3[7]), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[4][0] ), 
	.D(n267), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[6][7]  (.SI(\reg_file[6][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][7] ), 
	.D(n258), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][6]  (.SI(\reg_file[6][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][6] ), 
	.D(n257), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][5]  (.SI(\reg_file[6][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][5] ), 
	.D(n256), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][4]  (.SI(\reg_file[6][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][4] ), 
	.D(n255), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][3]  (.SI(\reg_file[6][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][3] ), 
	.D(n254), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][2]  (.SI(\reg_file[6][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[6][2] ), 
	.D(n253), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][1]  (.SI(\reg_file[6][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[6][1] ), 
	.D(n252), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[6][0]  (.SI(\reg_file[5][7] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[6][0] ), 
	.D(n251), 
	.CK(REF_CLK_M__L5_N3));
   SDFFRQX2M \reg_file_reg[8][7]  (.SI(\reg_file[8][6] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][7] ), 
	.D(n242), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[8][6]  (.SI(\reg_file[8][5] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][6] ), 
	.D(n241), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[8][5]  (.SI(\reg_file[8][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][5] ), 
	.D(n240), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[8][4]  (.SI(\reg_file[8][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][4] ), 
	.D(n239), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[8][3]  (.SI(\reg_file[8][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][3] ), 
	.D(n238), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[8][2]  (.SI(\reg_file[8][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][2] ), 
	.D(n237), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[8][1]  (.SI(\reg_file[8][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][1] ), 
	.D(n236), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[8][0]  (.SI(\reg_file[7][7] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[8][0] ), 
	.D(n235), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[10][7]  (.SI(\reg_file[10][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[10][7] ), 
	.D(n226), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[10][6]  (.SI(\reg_file[10][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[10][6] ), 
	.D(n225), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[10][5]  (.SI(\reg_file[10][4] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][5] ), 
	.D(n224), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[10][4]  (.SI(\reg_file[10][3] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][4] ), 
	.D(n223), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[10][3]  (.SI(\reg_file[10][2] ), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][3] ), 
	.D(n222), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[10][2]  (.SI(\reg_file[10][1] ), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][2] ), 
	.D(n221), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[10][1]  (.SI(\reg_file[10][0] ), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][1] ), 
	.D(n220), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[10][0]  (.SI(\reg_file[9][7] ), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(\reg_file[10][0] ), 
	.D(n219), 
	.CK(REF_CLK_M__L5_N2));
   SDFFRQX2M \reg_file_reg[12][7]  (.SI(\reg_file[12][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[12][7] ), 
	.D(n210), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[12][6]  (.SI(\reg_file[12][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[12][6] ), 
	.D(n209), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][5]  (.SI(\reg_file[12][4] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[12][5] ), 
	.D(n208), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][4]  (.SI(\reg_file[12][3] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[12][4] ), 
	.D(n207), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][3]  (.SI(\reg_file[12][2] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[12][3] ), 
	.D(n206), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][2]  (.SI(\reg_file[12][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[12][2] ), 
	.D(n205), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][1]  (.SI(\reg_file[12][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[12][1] ), 
	.D(n204), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[12][0]  (.SI(\reg_file[11][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[12][0] ), 
	.D(n203), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[14][7]  (.SI(\reg_file[14][6] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[14][7] ), 
	.D(n194), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[14][6]  (.SI(\reg_file[14][5] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[14][6] ), 
	.D(n193), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[14][5]  (.SI(\reg_file[14][4] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[14][5] ), 
	.D(n192), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[14][4]  (.SI(\reg_file[14][3] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[14][4] ), 
	.D(n191), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[14][3]  (.SI(\reg_file[14][2] ), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(\reg_file[14][3] ), 
	.D(n190), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[14][2]  (.SI(\reg_file[14][1] ), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(\reg_file[14][2] ), 
	.D(n189), 
	.CK(REF_CLK_M__L5_N5));
   SDFFRQX2M \reg_file_reg[14][1]  (.SI(\reg_file[14][0] ), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(\reg_file[14][1] ), 
	.D(n188), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[14][0]  (.SI(\reg_file[13][7] ), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(\reg_file[14][0] ), 
	.D(n187), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(RdData[7]), 
	.D(n314), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(RdData[6]), 
	.D(n313), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(RdData[5]), 
	.D(n312), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(RdData[4]), 
	.D(n311), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(RdData[3]), 
	.D(n310), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(RdData[2]), 
	.D(n309), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n442), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(RdData[1]), 
	.D(n308), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n445), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(RdData[0]), 
	.D(n307), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \reg_file_reg[3][0]  (.SI(Reg_2[7]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(Reg_3[0]), 
	.D(n275), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(RdData_Valid), 
	.D(n437), 
	.CK(REF_CLK_M__L5_N10));
   SDFFRQX2M \reg_file_reg[0][7]  (.SI(Reg_0[6]), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[7]), 
	.D(n306), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][6]  (.SI(Reg_0[5]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[6]), 
	.D(n305), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][5]  (.SI(Reg_0[4]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[5]), 
	.D(n304), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][4]  (.SI(Reg_0[3]), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[4]), 
	.D(n303), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][3]  (.SI(Reg_0[2]), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[3]), 
	.D(n302), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][2]  (.SI(Reg_0[1]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[2]), 
	.D(n301), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][1]  (.SI(Reg_0[0]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[1]), 
	.D(n300), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[0][0]  (.SI(RdData[7]), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_0[0]), 
	.D(n299), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[2][1]  (.SI(Reg_2[0]), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(Reg_2[1]), 
	.D(n284), 
	.CK(REF_CLK_M__L5_N4));
   SDFFSQX2M \reg_file_reg[2][0]  (.SN(rst_n), 
	.SI(Reg_1[7]), 
	.SE(test_se), 
	.Q(Reg_2[0]), 
	.D(n283), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \reg_file_reg[1][1]  (.SI(Reg_1[0]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[1]), 
	.D(n292), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][3]  (.SI(Reg_1[2]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[3]), 
	.D(n294), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][2]  (.SI(Reg_1[1]), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[2]), 
	.D(n293), 
	.CK(REF_CLK_M__L5_N1));
   SDFFRQX2M \reg_file_reg[1][5]  (.SI(Reg_1[4]), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[5]), 
	.D(n296), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][7]  (.SI(Reg_1[6]), 
	.SE(n445), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[7]), 
	.D(n298), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][0]  (.SI(Reg_0[7]), 
	.SE(n444), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[0]), 
	.D(n291), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][4]  (.SI(Reg_1[3]), 
	.SE(n443), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[4]), 
	.D(n295), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[1][6]  (.SI(Reg_1[5]), 
	.SE(n442), 
	.RN(FE_OFN2_RST_SYNC_1_M), 
	.Q(Reg_1[6]), 
	.D(n297), 
	.CK(CLK));
   SDFFRQX2M \reg_file_reg[3][4]  (.SI(Reg_3[3]), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(Reg_3[4]), 
	.D(n279), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[3][7]  (.SI(Reg_3[6]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(Reg_3[7]), 
	.D(n282), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[3][6]  (.SI(Reg_3[5]), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(Reg_3[6]), 
	.D(n281), 
	.CK(REF_CLK_M__L5_N11));
   SDFFSQX2M \reg_file_reg[3][5]  (.SN(rst_n), 
	.SI(Reg_3[4]), 
	.SE(n442), 
	.Q(Reg_3[5]), 
	.D(n280), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[3][2]  (.SI(Reg_3[1]), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(Reg_3[2]), 
	.D(n277), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[3][3]  (.SI(Reg_3[2]), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(Reg_3[3]), 
	.D(n278), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[3][1]  (.SI(Reg_3[0]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(Reg_3[1]), 
	.D(n276), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[2][2]  (.SI(Reg_2[1]), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(Reg_2[2]), 
	.D(n285), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \reg_file_reg[2][3]  (.SI(Reg_2[2]), 
	.SE(n442), 
	.RN(rst_n), 
	.Q(Reg_2[3]), 
	.D(n286), 
	.CK(REF_CLK_M__L5_N10));
   SDFFSQX2M \reg_file_reg[2][7]  (.SN(rst_n), 
	.SI(Reg_2[6]), 
	.SE(n445), 
	.Q(Reg_2[7]), 
	.D(n290), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[2][6]  (.SI(Reg_2[5]), 
	.SE(n445), 
	.RN(rst_n), 
	.Q(Reg_2[6]), 
	.D(n289), 
	.CK(REF_CLK_M__L5_N4));
   SDFFRQX2M \reg_file_reg[2][5]  (.SI(Reg_2[4]), 
	.SE(n444), 
	.RN(rst_n), 
	.Q(Reg_2[5]), 
	.D(n288), 
	.CK(REF_CLK_M__L5_N10));
   SDFFRQX2M \reg_file_reg[2][4]  (.SI(Reg_2[3]), 
	.SE(n443), 
	.RN(rst_n), 
	.Q(Reg_2[4]), 
	.D(n287), 
	.CK(REF_CLK_M__L5_N10));
   INVX2M U140 (.Y(n429), 
	.A(WrData[7]));
   NOR2X2M U141 (.Y(n157), 
	.B(N12), 
	.A(n428));
   NOR2X2M U142 (.Y(n160), 
	.B(N13), 
	.A(n427));
   NOR2X2M U143 (.Y(n163), 
	.B(N13), 
	.A(N12));
   INVX2M U144 (.Y(n408), 
	.A(n138));
   NAND2X2M U145 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U146 (.Y(n169), 
	.B(n152), 
	.A(n170));
   OR2X2M U147 (.Y(n138), 
	.B(n407), 
	.A(n427));
   INVX2M U148 (.Y(n410), 
	.A(n140));
   INVX3M U149 (.Y(n409), 
	.A(n139));
   NOR2X2M U150 (.Y(n152), 
	.B(n427), 
	.A(n428));
   NAND2X2M U151 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U152 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U153 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U154 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U155 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NAND2X2M U156 (.Y(n171), 
	.B(n157), 
	.A(n168));
   NAND2X2M U157 (.Y(n172), 
	.B(n157), 
	.A(n170));
   NAND2X2M U158 (.Y(n173), 
	.B(n160), 
	.A(n168));
   NAND2X2M U159 (.Y(n174), 
	.B(n160), 
	.A(n170));
   NAND2X2M U160 (.Y(n177), 
	.B(n163), 
	.A(n170));
   NAND2X2M U161 (.Y(n167), 
	.B(n152), 
	.A(n168));
   NAND2X2M U162 (.Y(n151), 
	.B(n153), 
	.A(n152));
   AND2X2M U163 (.Y(n155), 
	.B(n407), 
	.A(n164));
   AND2X2M U164 (.Y(n170), 
	.B(n407), 
	.A(n176));
   INVX2M U165 (.Y(n411), 
	.A(n141));
   NAND2X2M U166 (.Y(n162), 
	.B(n153), 
	.A(n163));
   NAND2X2M U167 (.Y(n175), 
	.B(n163), 
	.A(n168));
   INVX2M U168 (.Y(n437), 
	.A(n178));
   OR2X2M U169 (.Y(n139), 
	.B(N11), 
	.A(n427));
   OR2X2M U170 (.Y(n140), 
	.B(N12), 
	.A(n407));
   INVX2M U171 (.Y(n407), 
	.A(N11));
   OR2X2M U172 (.Y(n141), 
	.B(N12), 
	.A(N11));
   AND2X2M U173 (.Y(n168), 
	.B(N11), 
	.A(n176));
   INVX2M U174 (.Y(n428), 
	.A(N13));
   INVX2M U175 (.Y(n427), 
	.A(N12));
   INVX2M U176 (.Y(n406), 
	.A(N14));
   NAND2X2M U177 (.Y(n178), 
	.B(WrEn), 
	.A(RdEn));
   AND2X2M U178 (.Y(n153), 
	.B(N11), 
	.A(n164));
   NOR2BX2M U179 (.Y(n176), 
	.B(N14), 
	.AN(n166));
   NOR2X2M U180 (.Y(n166), 
	.B(RdEn), 
	.A(WrEn));
   AND2X2M U181 (.Y(n164), 
	.B(n166), 
	.A(N14));
   INVX2M U192 (.Y(n430), 
	.A(WrData[0]));
   INVX2M U193 (.Y(n431), 
	.A(WrData[1]));
   INVX2M U194 (.Y(n433), 
	.A(WrData[3]));
   INVX2M U195 (.Y(n434), 
	.A(WrData[4]));
   INVX2M U196 (.Y(n435), 
	.A(WrData[5]));
   INVX2M U197 (.Y(n436), 
	.A(WrData[6]));
   INVX2M U198 (.Y(n432), 
	.A(WrData[2]));
   AO22X1M U205 (.Y(n307), 
	.B1(n178), 
	.B0(RdData[0]), 
	.A1(n437), 
	.A0(N43));
   AO22X1M U206 (.Y(n308), 
	.B1(n178), 
	.B0(RdData[1]), 
	.A1(n437), 
	.A0(N42));
   AO22X1M U207 (.Y(n309), 
	.B1(n178), 
	.B0(RdData[2]), 
	.A1(n437), 
	.A0(N41));
   AO22X1M U208 (.Y(n310), 
	.B1(n178), 
	.B0(RdData[3]), 
	.A1(n437), 
	.A0(N40));
   AO22X1M U209 (.Y(n311), 
	.B1(n178), 
	.B0(RdData[4]), 
	.A1(n437), 
	.A0(N39));
   AO22X1M U210 (.Y(n312), 
	.B1(n178), 
	.B0(RdData[5]), 
	.A1(n437), 
	.A0(N38));
   AO22X1M U211 (.Y(n313), 
	.B1(n178), 
	.B0(RdData[6]), 
	.A1(n437), 
	.A0(N37));
   AO22X1M U212 (.Y(n314), 
	.B1(n178), 
	.B0(RdData[7]), 
	.A1(n437), 
	.A0(N36));
   OAI2BB2X1M U213 (.Y(n179), 
	.B1(n430), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][0] ));
   OAI2BB2X1M U214 (.Y(n180), 
	.B1(n431), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][1] ));
   OAI2BB2X1M U215 (.Y(n181), 
	.B1(n432), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][2] ));
   OAI2BB2X1M U216 (.Y(n182), 
	.B1(n433), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][3] ));
   OAI2BB2X1M U217 (.Y(n183), 
	.B1(n434), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][4] ));
   OAI2BB2X1M U218 (.Y(n184), 
	.B1(n435), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][5] ));
   OAI2BB2X1M U219 (.Y(n185), 
	.B1(n436), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][6] ));
   OAI2BB2X1M U220 (.Y(n186), 
	.B1(n429), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\reg_file[15][7] ));
   OAI2BB2X1M U221 (.Y(n195), 
	.B1(n156), 
	.B0(n430), 
	.A1N(n156), 
	.A0N(\reg_file[13][0] ));
   OAI2BB2X1M U222 (.Y(n196), 
	.B1(n156), 
	.B0(n431), 
	.A1N(n156), 
	.A0N(\reg_file[13][1] ));
   OAI2BB2X1M U223 (.Y(n197), 
	.B1(n156), 
	.B0(n432), 
	.A1N(n156), 
	.A0N(\reg_file[13][2] ));
   OAI2BB2X1M U224 (.Y(n198), 
	.B1(n156), 
	.B0(n433), 
	.A1N(n156), 
	.A0N(\reg_file[13][3] ));
   OAI2BB2X1M U225 (.Y(n199), 
	.B1(n156), 
	.B0(n434), 
	.A1N(n156), 
	.A0N(\reg_file[13][4] ));
   OAI2BB2X1M U226 (.Y(n200), 
	.B1(n156), 
	.B0(n435), 
	.A1N(n156), 
	.A0N(\reg_file[13][5] ));
   OAI2BB2X1M U227 (.Y(n201), 
	.B1(n156), 
	.B0(n436), 
	.A1N(n156), 
	.A0N(\reg_file[13][6] ));
   OAI2BB2X1M U228 (.Y(n202), 
	.B1(n156), 
	.B0(n429), 
	.A1N(n156), 
	.A0N(\reg_file[13][7] ));
   OAI2BB2X1M U229 (.Y(n203), 
	.B1(n158), 
	.B0(n430), 
	.A1N(n158), 
	.A0N(\reg_file[12][0] ));
   OAI2BB2X1M U230 (.Y(n204), 
	.B1(n158), 
	.B0(n431), 
	.A1N(n158), 
	.A0N(\reg_file[12][1] ));
   OAI2BB2X1M U231 (.Y(n205), 
	.B1(n158), 
	.B0(n432), 
	.A1N(n158), 
	.A0N(\reg_file[12][2] ));
   OAI2BB2X1M U232 (.Y(n206), 
	.B1(n158), 
	.B0(n433), 
	.A1N(n158), 
	.A0N(\reg_file[12][3] ));
   OAI2BB2X1M U233 (.Y(n207), 
	.B1(n158), 
	.B0(n434), 
	.A1N(n158), 
	.A0N(\reg_file[12][4] ));
   OAI2BB2X1M U234 (.Y(n208), 
	.B1(n158), 
	.B0(n435), 
	.A1N(n158), 
	.A0N(\reg_file[12][5] ));
   OAI2BB2X1M U235 (.Y(n209), 
	.B1(n158), 
	.B0(n436), 
	.A1N(n158), 
	.A0N(\reg_file[12][6] ));
   OAI2BB2X1M U236 (.Y(n210), 
	.B1(n158), 
	.B0(n429), 
	.A1N(n158), 
	.A0N(\reg_file[12][7] ));
   OAI2BB2X1M U237 (.Y(n211), 
	.B1(n159), 
	.B0(n430), 
	.A1N(n159), 
	.A0N(\reg_file[11][0] ));
   OAI2BB2X1M U238 (.Y(n212), 
	.B1(n159), 
	.B0(n431), 
	.A1N(n159), 
	.A0N(\reg_file[11][1] ));
   OAI2BB2X1M U239 (.Y(n213), 
	.B1(n159), 
	.B0(n432), 
	.A1N(n159), 
	.A0N(\reg_file[11][2] ));
   OAI2BB2X1M U240 (.Y(n214), 
	.B1(n159), 
	.B0(n433), 
	.A1N(n159), 
	.A0N(\reg_file[11][3] ));
   OAI2BB2X1M U241 (.Y(n215), 
	.B1(n159), 
	.B0(n434), 
	.A1N(n159), 
	.A0N(\reg_file[11][4] ));
   OAI2BB2X1M U242 (.Y(n216), 
	.B1(n159), 
	.B0(n435), 
	.A1N(n159), 
	.A0N(\reg_file[11][5] ));
   OAI2BB2X1M U243 (.Y(n217), 
	.B1(n159), 
	.B0(n436), 
	.A1N(n159), 
	.A0N(\reg_file[11][6] ));
   OAI2BB2X1M U244 (.Y(n218), 
	.B1(n159), 
	.B0(n429), 
	.A1N(n159), 
	.A0N(\reg_file[11][7] ));
   OAI2BB2X1M U245 (.Y(n219), 
	.B1(n161), 
	.B0(n430), 
	.A1N(n161), 
	.A0N(\reg_file[10][0] ));
   OAI2BB2X1M U246 (.Y(n220), 
	.B1(n161), 
	.B0(n431), 
	.A1N(n161), 
	.A0N(\reg_file[10][1] ));
   OAI2BB2X1M U247 (.Y(n221), 
	.B1(n161), 
	.B0(n432), 
	.A1N(n161), 
	.A0N(\reg_file[10][2] ));
   OAI2BB2X1M U248 (.Y(n222), 
	.B1(n161), 
	.B0(n433), 
	.A1N(n161), 
	.A0N(\reg_file[10][3] ));
   OAI2BB2X1M U249 (.Y(n223), 
	.B1(n161), 
	.B0(n434), 
	.A1N(n161), 
	.A0N(\reg_file[10][4] ));
   OAI2BB2X1M U250 (.Y(n224), 
	.B1(n161), 
	.B0(n435), 
	.A1N(n161), 
	.A0N(\reg_file[10][5] ));
   OAI2BB2X1M U251 (.Y(n225), 
	.B1(n161), 
	.B0(n436), 
	.A1N(n161), 
	.A0N(\reg_file[10][6] ));
   OAI2BB2X1M U252 (.Y(n226), 
	.B1(n161), 
	.B0(n429), 
	.A1N(n161), 
	.A0N(\reg_file[10][7] ));
   OAI2BB2X1M U253 (.Y(n235), 
	.B1(n165), 
	.B0(n430), 
	.A1N(n165), 
	.A0N(\reg_file[8][0] ));
   OAI2BB2X1M U254 (.Y(n236), 
	.B1(n165), 
	.B0(n431), 
	.A1N(n165), 
	.A0N(\reg_file[8][1] ));
   OAI2BB2X1M U255 (.Y(n237), 
	.B1(n165), 
	.B0(n432), 
	.A1N(n165), 
	.A0N(\reg_file[8][2] ));
   OAI2BB2X1M U256 (.Y(n238), 
	.B1(n165), 
	.B0(n433), 
	.A1N(n165), 
	.A0N(\reg_file[8][3] ));
   OAI2BB2X1M U257 (.Y(n239), 
	.B1(n165), 
	.B0(n434), 
	.A1N(n165), 
	.A0N(\reg_file[8][4] ));
   OAI2BB2X1M U258 (.Y(n240), 
	.B1(n165), 
	.B0(n435), 
	.A1N(n165), 
	.A0N(\reg_file[8][5] ));
   OAI2BB2X1M U259 (.Y(n241), 
	.B1(n165), 
	.B0(n436), 
	.A1N(n165), 
	.A0N(\reg_file[8][6] ));
   OAI2BB2X1M U260 (.Y(n242), 
	.B1(n165), 
	.B0(n429), 
	.A1N(n165), 
	.A0N(\reg_file[8][7] ));
   OAI2BB2X1M U261 (.Y(n187), 
	.B1(n154), 
	.B0(n430), 
	.A1N(n154), 
	.A0N(\reg_file[14][0] ));
   OAI2BB2X1M U262 (.Y(n188), 
	.B1(n154), 
	.B0(n431), 
	.A1N(n154), 
	.A0N(\reg_file[14][1] ));
   OAI2BB2X1M U263 (.Y(n189), 
	.B1(n154), 
	.B0(n432), 
	.A1N(n154), 
	.A0N(\reg_file[14][2] ));
   OAI2BB2X1M U264 (.Y(n190), 
	.B1(n154), 
	.B0(n433), 
	.A1N(n154), 
	.A0N(\reg_file[14][3] ));
   OAI2BB2X1M U265 (.Y(n191), 
	.B1(n154), 
	.B0(n434), 
	.A1N(n154), 
	.A0N(\reg_file[14][4] ));
   OAI2BB2X1M U266 (.Y(n192), 
	.B1(n154), 
	.B0(n435), 
	.A1N(n154), 
	.A0N(\reg_file[14][5] ));
   OAI2BB2X1M U267 (.Y(n193), 
	.B1(n154), 
	.B0(n436), 
	.A1N(n154), 
	.A0N(\reg_file[14][6] ));
   OAI2BB2X1M U268 (.Y(n194), 
	.B1(n154), 
	.B0(n429), 
	.A1N(n154), 
	.A0N(\reg_file[14][7] ));
   OAI2BB2X1M U269 (.Y(n243), 
	.B1(n167), 
	.B0(n430), 
	.A1N(n167), 
	.A0N(\reg_file[7][0] ));
   OAI2BB2X1M U270 (.Y(n244), 
	.B1(n167), 
	.B0(n431), 
	.A1N(n167), 
	.A0N(\reg_file[7][1] ));
   OAI2BB2X1M U271 (.Y(n245), 
	.B1(n167), 
	.B0(n432), 
	.A1N(n167), 
	.A0N(\reg_file[7][2] ));
   OAI2BB2X1M U272 (.Y(n246), 
	.B1(n167), 
	.B0(n433), 
	.A1N(n167), 
	.A0N(\reg_file[7][3] ));
   OAI2BB2X1M U273 (.Y(n247), 
	.B1(n167), 
	.B0(n434), 
	.A1N(n167), 
	.A0N(\reg_file[7][4] ));
   OAI2BB2X1M U274 (.Y(n248), 
	.B1(n167), 
	.B0(n435), 
	.A1N(n167), 
	.A0N(\reg_file[7][5] ));
   OAI2BB2X1M U275 (.Y(n249), 
	.B1(n167), 
	.B0(n436), 
	.A1N(n167), 
	.A0N(\reg_file[7][6] ));
   OAI2BB2X1M U276 (.Y(n250), 
	.B1(n167), 
	.B0(n429), 
	.A1N(n167), 
	.A0N(\reg_file[7][7] ));
   OAI2BB2X1M U277 (.Y(n251), 
	.B1(n169), 
	.B0(n430), 
	.A1N(n169), 
	.A0N(\reg_file[6][0] ));
   OAI2BB2X1M U278 (.Y(n252), 
	.B1(n169), 
	.B0(n431), 
	.A1N(n169), 
	.A0N(\reg_file[6][1] ));
   OAI2BB2X1M U279 (.Y(n253), 
	.B1(n169), 
	.B0(n432), 
	.A1N(n169), 
	.A0N(\reg_file[6][2] ));
   OAI2BB2X1M U280 (.Y(n254), 
	.B1(n169), 
	.B0(n433), 
	.A1N(n169), 
	.A0N(\reg_file[6][3] ));
   OAI2BB2X1M U281 (.Y(n255), 
	.B1(n169), 
	.B0(n434), 
	.A1N(n169), 
	.A0N(\reg_file[6][4] ));
   OAI2BB2X1M U282 (.Y(n256), 
	.B1(n169), 
	.B0(n435), 
	.A1N(n169), 
	.A0N(\reg_file[6][5] ));
   OAI2BB2X1M U283 (.Y(n257), 
	.B1(n169), 
	.B0(n436), 
	.A1N(n169), 
	.A0N(\reg_file[6][6] ));
   OAI2BB2X1M U284 (.Y(n258), 
	.B1(n169), 
	.B0(n429), 
	.A1N(n169), 
	.A0N(\reg_file[6][7] ));
   OAI2BB2X1M U285 (.Y(n259), 
	.B1(n171), 
	.B0(n430), 
	.A1N(n171), 
	.A0N(\reg_file[5][0] ));
   OAI2BB2X1M U286 (.Y(n260), 
	.B1(n171), 
	.B0(n431), 
	.A1N(n171), 
	.A0N(\reg_file[5][1] ));
   OAI2BB2X1M U287 (.Y(n261), 
	.B1(n171), 
	.B0(n432), 
	.A1N(n171), 
	.A0N(\reg_file[5][2] ));
   OAI2BB2X1M U288 (.Y(n262), 
	.B1(n171), 
	.B0(n433), 
	.A1N(n171), 
	.A0N(\reg_file[5][3] ));
   OAI2BB2X1M U289 (.Y(n263), 
	.B1(n171), 
	.B0(n434), 
	.A1N(n171), 
	.A0N(\reg_file[5][4] ));
   OAI2BB2X1M U290 (.Y(n264), 
	.B1(n171), 
	.B0(n435), 
	.A1N(n171), 
	.A0N(\reg_file[5][5] ));
   OAI2BB2X1M U291 (.Y(n265), 
	.B1(n171), 
	.B0(n436), 
	.A1N(n171), 
	.A0N(\reg_file[5][6] ));
   OAI2BB2X1M U292 (.Y(n266), 
	.B1(n171), 
	.B0(n429), 
	.A1N(n171), 
	.A0N(\reg_file[5][7] ));
   OAI2BB2X1M U293 (.Y(n267), 
	.B1(n172), 
	.B0(n430), 
	.A1N(n172), 
	.A0N(\reg_file[4][0] ));
   OAI2BB2X1M U294 (.Y(n268), 
	.B1(n172), 
	.B0(n431), 
	.A1N(n172), 
	.A0N(\reg_file[4][1] ));
   OAI2BB2X1M U295 (.Y(n269), 
	.B1(n172), 
	.B0(n432), 
	.A1N(n172), 
	.A0N(\reg_file[4][2] ));
   OAI2BB2X1M U296 (.Y(n270), 
	.B1(n172), 
	.B0(n433), 
	.A1N(n172), 
	.A0N(\reg_file[4][3] ));
   OAI2BB2X1M U297 (.Y(n271), 
	.B1(n172), 
	.B0(n434), 
	.A1N(n172), 
	.A0N(\reg_file[4][4] ));
   OAI2BB2X1M U298 (.Y(n272), 
	.B1(n172), 
	.B0(n435), 
	.A1N(n172), 
	.A0N(\reg_file[4][5] ));
   OAI2BB2X1M U299 (.Y(n273), 
	.B1(n172), 
	.B0(n436), 
	.A1N(n172), 
	.A0N(\reg_file[4][6] ));
   OAI2BB2X1M U300 (.Y(n274), 
	.B1(n172), 
	.B0(n429), 
	.A1N(n172), 
	.A0N(\reg_file[4][7] ));
   OAI2BB2X1M U301 (.Y(n275), 
	.B1(n173), 
	.B0(n430), 
	.A1N(n173), 
	.A0N(Reg_3[0]));
   OAI2BB2X1M U302 (.Y(n276), 
	.B1(n173), 
	.B0(n431), 
	.A1N(n173), 
	.A0N(Reg_3[1]));
   OAI2BB2X1M U303 (.Y(n277), 
	.B1(n173), 
	.B0(n432), 
	.A1N(n173), 
	.A0N(Reg_3[2]));
   OAI2BB2X1M U304 (.Y(n278), 
	.B1(n173), 
	.B0(n433), 
	.A1N(n173), 
	.A0N(Reg_3[3]));
   OAI2BB2X1M U305 (.Y(n279), 
	.B1(n173), 
	.B0(n434), 
	.A1N(n173), 
	.A0N(Reg_3[4]));
   OAI2BB2X1M U306 (.Y(n281), 
	.B1(n173), 
	.B0(n436), 
	.A1N(n173), 
	.A0N(Reg_3[6]));
   OAI2BB2X1M U307 (.Y(n282), 
	.B1(n173), 
	.B0(n429), 
	.A1N(n173), 
	.A0N(Reg_3[7]));
   OAI2BB2X1M U308 (.Y(n284), 
	.B1(n174), 
	.B0(n431), 
	.A1N(n174), 
	.A0N(Reg_2[1]));
   OAI2BB2X1M U309 (.Y(n285), 
	.B1(n174), 
	.B0(n432), 
	.A1N(n174), 
	.A0N(Reg_2[2]));
   OAI2BB2X1M U310 (.Y(n286), 
	.B1(n174), 
	.B0(n433), 
	.A1N(n174), 
	.A0N(Reg_2[3]));
   OAI2BB2X1M U311 (.Y(n287), 
	.B1(n174), 
	.B0(n434), 
	.A1N(n174), 
	.A0N(Reg_2[4]));
   OAI2BB2X1M U312 (.Y(n288), 
	.B1(n174), 
	.B0(n435), 
	.A1N(n174), 
	.A0N(Reg_2[5]));
   OAI2BB2X1M U313 (.Y(n289), 
	.B1(n174), 
	.B0(n436), 
	.A1N(n174), 
	.A0N(Reg_2[6]));
   OAI2BB2X1M U314 (.Y(n299), 
	.B1(n177), 
	.B0(n430), 
	.A1N(n177), 
	.A0N(Reg_0[0]));
   OAI2BB2X1M U315 (.Y(n300), 
	.B1(n177), 
	.B0(n431), 
	.A1N(n177), 
	.A0N(Reg_0[1]));
   OAI2BB2X1M U316 (.Y(n301), 
	.B1(n177), 
	.B0(n432), 
	.A1N(n177), 
	.A0N(Reg_0[2]));
   OAI2BB2X1M U317 (.Y(n302), 
	.B1(n177), 
	.B0(n433), 
	.A1N(n177), 
	.A0N(Reg_0[3]));
   OAI2BB2X1M U318 (.Y(n303), 
	.B1(n177), 
	.B0(n434), 
	.A1N(n177), 
	.A0N(Reg_0[4]));
   OAI2BB2X1M U319 (.Y(n304), 
	.B1(n177), 
	.B0(n435), 
	.A1N(n177), 
	.A0N(Reg_0[5]));
   OAI2BB2X1M U320 (.Y(n305), 
	.B1(n177), 
	.B0(n436), 
	.A1N(n177), 
	.A0N(Reg_0[6]));
   OAI2BB2X1M U321 (.Y(n306), 
	.B1(n177), 
	.B0(n429), 
	.A1N(n177), 
	.A0N(Reg_0[7]));
   OAI2BB2X1M U322 (.Y(n280), 
	.B1(n173), 
	.B0(n435), 
	.A1N(n173), 
	.A0N(Reg_3[5]));
   OAI2BB2X1M U323 (.Y(n283), 
	.B1(n174), 
	.B0(n430), 
	.A1N(n174), 
	.A0N(Reg_2[0]));
   OAI2BB2X1M U324 (.Y(n290), 
	.B1(n174), 
	.B0(n429), 
	.A1N(n174), 
	.A0N(Reg_2[7]));
   OAI2BB2X1M U325 (.Y(n227), 
	.B1(n162), 
	.B0(n430), 
	.A1N(n162), 
	.A0N(\reg_file[9][0] ));
   OAI2BB2X1M U326 (.Y(n228), 
	.B1(n162), 
	.B0(n431), 
	.A1N(n162), 
	.A0N(\reg_file[9][1] ));
   OAI2BB2X1M U327 (.Y(n229), 
	.B1(n162), 
	.B0(n432), 
	.A1N(n162), 
	.A0N(\reg_file[9][2] ));
   OAI2BB2X1M U328 (.Y(n230), 
	.B1(n162), 
	.B0(n433), 
	.A1N(n162), 
	.A0N(\reg_file[9][3] ));
   OAI2BB2X1M U329 (.Y(n231), 
	.B1(n162), 
	.B0(n434), 
	.A1N(n162), 
	.A0N(\reg_file[9][4] ));
   OAI2BB2X1M U330 (.Y(n232), 
	.B1(n162), 
	.B0(n435), 
	.A1N(n162), 
	.A0N(\reg_file[9][5] ));
   OAI2BB2X1M U331 (.Y(n233), 
	.B1(n162), 
	.B0(n436), 
	.A1N(n162), 
	.A0N(\reg_file[9][6] ));
   OAI2BB2X1M U332 (.Y(n234), 
	.B1(n162), 
	.B0(n429), 
	.A1N(n162), 
	.A0N(\reg_file[9][7] ));
   OAI2BB2X1M U333 (.Y(n291), 
	.B1(n175), 
	.B0(n430), 
	.A1N(n175), 
	.A0N(Reg_1[0]));
   OAI2BB2X1M U334 (.Y(n292), 
	.B1(n175), 
	.B0(n431), 
	.A1N(n175), 
	.A0N(Reg_1[1]));
   OAI2BB2X1M U335 (.Y(n293), 
	.B1(n175), 
	.B0(n432), 
	.A1N(n175), 
	.A0N(Reg_1[2]));
   OAI2BB2X1M U336 (.Y(n294), 
	.B1(n175), 
	.B0(n433), 
	.A1N(n175), 
	.A0N(Reg_1[3]));
   OAI2BB2X1M U337 (.Y(n295), 
	.B1(n175), 
	.B0(n434), 
	.A1N(n175), 
	.A0N(Reg_1[4]));
   OAI2BB2X1M U338 (.Y(n296), 
	.B1(n175), 
	.B0(n435), 
	.A1N(n175), 
	.A0N(Reg_1[5]));
   OAI2BB2X1M U339 (.Y(n297), 
	.B1(n175), 
	.B0(n436), 
	.A1N(n175), 
	.A0N(Reg_1[6]));
   OAI2BB2X1M U340 (.Y(n298), 
	.B1(n175), 
	.B0(n429), 
	.A1N(n175), 
	.A0N(Reg_1[7]));
   AOI22X1M U341 (.Y(n143), 
	.B1(n408), 
	.B0(\reg_file[11][0] ), 
	.A1(n409), 
	.A0(\reg_file[10][0] ));
   AOI22X1M U342 (.Y(n142), 
	.B1(n410), 
	.B0(\reg_file[9][0] ), 
	.A1(n411), 
	.A0(\reg_file[8][0] ));
   CLKNAND2X2M U343 (.Y(n390), 
	.B(n428), 
	.A(N14));
   AOI21X1M U344 (.Y(n317), 
	.B0(n390), 
	.A1(n142), 
	.A0(n143));
   AOI22X1M U345 (.Y(n145), 
	.B1(n408), 
	.B0(\reg_file[15][0] ), 
	.A1(n409), 
	.A0(\reg_file[14][0] ));
   AOI22X1M U346 (.Y(n144), 
	.B1(n410), 
	.B0(\reg_file[13][0] ), 
	.A1(n411), 
	.A0(\reg_file[12][0] ));
   CLKNAND2X2M U347 (.Y(n393), 
	.B(N13), 
	.A(N14));
   AOI21X1M U348 (.Y(n316), 
	.B0(n393), 
	.A1(n144), 
	.A0(n145));
   AOI22X1M U349 (.Y(n147), 
	.B1(n408), 
	.B0(Reg_3[0]), 
	.A1(n409), 
	.A0(Reg_2[0]));
   AOI22X1M U350 (.Y(n146), 
	.B1(n410), 
	.B0(Reg_1[0]), 
	.A1(n411), 
	.A0(Reg_0[0]));
   CLKNAND2X2M U351 (.Y(n396), 
	.B(n406), 
	.A(n428));
   AOI21X1M U352 (.Y(n315), 
	.B0(n396), 
	.A1(n146), 
	.A0(n147));
   AOI22X1M U353 (.Y(n149), 
	.B1(n408), 
	.B0(\reg_file[7][0] ), 
	.A1(n409), 
	.A0(\reg_file[6][0] ));
   AOI22X1M U354 (.Y(n148), 
	.B1(n410), 
	.B0(\reg_file[5][0] ), 
	.A1(n411), 
	.A0(\reg_file[4][0] ));
   CLKNAND2X2M U355 (.Y(n399), 
	.B(n406), 
	.A(N13));
   AOI21X1M U356 (.Y(n150), 
	.B0(n399), 
	.A1(n148), 
	.A0(n149));
   OR4X1M U357 (.Y(N43), 
	.D(n150), 
	.C(n315), 
	.B(n316), 
	.A(n317));
   AOI22X1M U358 (.Y(n319), 
	.B1(n408), 
	.B0(\reg_file[11][1] ), 
	.A1(n409), 
	.A0(\reg_file[10][1] ));
   AOI22X1M U359 (.Y(n318), 
	.B1(n410), 
	.B0(\reg_file[9][1] ), 
	.A1(n411), 
	.A0(\reg_file[8][1] ));
   AOI21X1M U360 (.Y(n329), 
	.B0(n390), 
	.A1(n318), 
	.A0(n319));
   AOI22X1M U361 (.Y(n321), 
	.B1(n408), 
	.B0(\reg_file[15][1] ), 
	.A1(n409), 
	.A0(\reg_file[14][1] ));
   AOI22X1M U362 (.Y(n320), 
	.B1(n410), 
	.B0(\reg_file[13][1] ), 
	.A1(n411), 
	.A0(\reg_file[12][1] ));
   AOI21X1M U363 (.Y(n328), 
	.B0(n393), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U364 (.Y(n323), 
	.B1(n408), 
	.B0(Reg_3[1]), 
	.A1(n409), 
	.A0(Reg_2[1]));
   AOI22X1M U365 (.Y(n322), 
	.B1(n410), 
	.B0(Reg_1[1]), 
	.A1(n411), 
	.A0(Reg_0[1]));
   AOI21X1M U366 (.Y(n327), 
	.B0(n396), 
	.A1(n322), 
	.A0(n323));
   AOI22X1M U367 (.Y(n325), 
	.B1(n408), 
	.B0(\reg_file[7][1] ), 
	.A1(n409), 
	.A0(\reg_file[6][1] ));
   AOI22X1M U368 (.Y(n324), 
	.B1(n410), 
	.B0(\reg_file[5][1] ), 
	.A1(n411), 
	.A0(\reg_file[4][1] ));
   AOI21X1M U369 (.Y(n326), 
	.B0(n399), 
	.A1(n324), 
	.A0(n325));
   OR4X1M U370 (.Y(N42), 
	.D(n326), 
	.C(n327), 
	.B(n328), 
	.A(n329));
   AOI22X1M U371 (.Y(n331), 
	.B1(n408), 
	.B0(\reg_file[11][2] ), 
	.A1(n409), 
	.A0(\reg_file[10][2] ));
   AOI22X1M U372 (.Y(n330), 
	.B1(n410), 
	.B0(\reg_file[9][2] ), 
	.A1(n411), 
	.A0(\reg_file[8][2] ));
   AOI21X1M U373 (.Y(n341), 
	.B0(n390), 
	.A1(n330), 
	.A0(n331));
   AOI22X1M U374 (.Y(n333), 
	.B1(n408), 
	.B0(\reg_file[15][2] ), 
	.A1(n409), 
	.A0(\reg_file[14][2] ));
   AOI22X1M U375 (.Y(n332), 
	.B1(n410), 
	.B0(\reg_file[13][2] ), 
	.A1(n411), 
	.A0(\reg_file[12][2] ));
   AOI21X1M U376 (.Y(n340), 
	.B0(n393), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U377 (.Y(n335), 
	.B1(n408), 
	.B0(Reg_3[2]), 
	.A1(n409), 
	.A0(Reg_2[2]));
   AOI22X1M U378 (.Y(n334), 
	.B1(n410), 
	.B0(Reg_1[2]), 
	.A1(n411), 
	.A0(Reg_0[2]));
   AOI21X1M U379 (.Y(n339), 
	.B0(n396), 
	.A1(n334), 
	.A0(n335));
   AOI22X1M U380 (.Y(n337), 
	.B1(n408), 
	.B0(\reg_file[7][2] ), 
	.A1(n409), 
	.A0(\reg_file[6][2] ));
   AOI22X1M U381 (.Y(n336), 
	.B1(n410), 
	.B0(\reg_file[5][2] ), 
	.A1(n411), 
	.A0(\reg_file[4][2] ));
   AOI21X1M U382 (.Y(n338), 
	.B0(n399), 
	.A1(n336), 
	.A0(n337));
   OR4X1M U383 (.Y(N41), 
	.D(n338), 
	.C(n339), 
	.B(n340), 
	.A(n341));
   AOI22X1M U384 (.Y(n343), 
	.B1(n408), 
	.B0(\reg_file[11][3] ), 
	.A1(n409), 
	.A0(\reg_file[10][3] ));
   AOI22X1M U385 (.Y(n342), 
	.B1(n410), 
	.B0(\reg_file[9][3] ), 
	.A1(n411), 
	.A0(\reg_file[8][3] ));
   AOI21X1M U386 (.Y(n353), 
	.B0(n390), 
	.A1(n342), 
	.A0(n343));
   AOI22X1M U387 (.Y(n345), 
	.B1(n408), 
	.B0(\reg_file[15][3] ), 
	.A1(n409), 
	.A0(\reg_file[14][3] ));
   AOI22X1M U388 (.Y(n344), 
	.B1(n410), 
	.B0(\reg_file[13][3] ), 
	.A1(n411), 
	.A0(\reg_file[12][3] ));
   AOI21X1M U389 (.Y(n352), 
	.B0(n393), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U390 (.Y(n347), 
	.B1(n408), 
	.B0(Reg_3[3]), 
	.A1(n409), 
	.A0(Reg_2[3]));
   AOI22X1M U391 (.Y(n346), 
	.B1(n410), 
	.B0(Reg_1[3]), 
	.A1(n411), 
	.A0(Reg_0[3]));
   AOI21X1M U392 (.Y(n351), 
	.B0(n396), 
	.A1(n346), 
	.A0(n347));
   AOI22X1M U393 (.Y(n349), 
	.B1(n408), 
	.B0(\reg_file[7][3] ), 
	.A1(n409), 
	.A0(\reg_file[6][3] ));
   AOI22X1M U394 (.Y(n348), 
	.B1(n410), 
	.B0(\reg_file[5][3] ), 
	.A1(n411), 
	.A0(\reg_file[4][3] ));
   AOI21X1M U395 (.Y(n350), 
	.B0(n399), 
	.A1(n348), 
	.A0(n349));
   OR4X1M U396 (.Y(N40), 
	.D(n350), 
	.C(n351), 
	.B(n352), 
	.A(n353));
   AOI22X1M U397 (.Y(n355), 
	.B1(n408), 
	.B0(\reg_file[11][4] ), 
	.A1(n409), 
	.A0(\reg_file[10][4] ));
   AOI22X1M U398 (.Y(n354), 
	.B1(n410), 
	.B0(\reg_file[9][4] ), 
	.A1(n411), 
	.A0(\reg_file[8][4] ));
   AOI21X1M U399 (.Y(n365), 
	.B0(n390), 
	.A1(n354), 
	.A0(n355));
   AOI22X1M U400 (.Y(n357), 
	.B1(n408), 
	.B0(\reg_file[15][4] ), 
	.A1(n409), 
	.A0(\reg_file[14][4] ));
   AOI22X1M U401 (.Y(n356), 
	.B1(n410), 
	.B0(\reg_file[13][4] ), 
	.A1(n411), 
	.A0(\reg_file[12][4] ));
   AOI21X1M U402 (.Y(n364), 
	.B0(n393), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U403 (.Y(n359), 
	.B1(n408), 
	.B0(Reg_3[4]), 
	.A1(n409), 
	.A0(Reg_2[4]));
   AOI22X1M U404 (.Y(n358), 
	.B1(n410), 
	.B0(Reg_1[4]), 
	.A1(n411), 
	.A0(Reg_0[4]));
   AOI21X1M U405 (.Y(n363), 
	.B0(n396), 
	.A1(n358), 
	.A0(n359));
   AOI22X1M U406 (.Y(n361), 
	.B1(n408), 
	.B0(\reg_file[7][4] ), 
	.A1(n409), 
	.A0(\reg_file[6][4] ));
   AOI22X1M U407 (.Y(n360), 
	.B1(n410), 
	.B0(\reg_file[5][4] ), 
	.A1(n411), 
	.A0(\reg_file[4][4] ));
   AOI21X1M U408 (.Y(n362), 
	.B0(n399), 
	.A1(n360), 
	.A0(n361));
   OR4X1M U409 (.Y(N39), 
	.D(n362), 
	.C(n363), 
	.B(n364), 
	.A(n365));
   AOI22X1M U410 (.Y(n367), 
	.B1(n408), 
	.B0(\reg_file[11][5] ), 
	.A1(n409), 
	.A0(\reg_file[10][5] ));
   AOI22X1M U411 (.Y(n366), 
	.B1(n410), 
	.B0(\reg_file[9][5] ), 
	.A1(n411), 
	.A0(\reg_file[8][5] ));
   AOI21X1M U412 (.Y(n377), 
	.B0(n390), 
	.A1(n366), 
	.A0(n367));
   AOI22X1M U413 (.Y(n369), 
	.B1(n408), 
	.B0(\reg_file[15][5] ), 
	.A1(n409), 
	.A0(\reg_file[14][5] ));
   AOI22X1M U414 (.Y(n368), 
	.B1(n410), 
	.B0(\reg_file[13][5] ), 
	.A1(n411), 
	.A0(\reg_file[12][5] ));
   AOI21X1M U415 (.Y(n376), 
	.B0(n393), 
	.A1(n368), 
	.A0(n369));
   AOI22X1M U416 (.Y(n371), 
	.B1(n408), 
	.B0(Reg_3[5]), 
	.A1(n409), 
	.A0(Reg_2[5]));
   AOI22X1M U417 (.Y(n370), 
	.B1(n410), 
	.B0(Reg_1[5]), 
	.A1(n411), 
	.A0(Reg_0[5]));
   AOI21X1M U418 (.Y(n375), 
	.B0(n396), 
	.A1(n370), 
	.A0(n371));
   AOI22X1M U419 (.Y(n373), 
	.B1(n408), 
	.B0(\reg_file[7][5] ), 
	.A1(n409), 
	.A0(\reg_file[6][5] ));
   AOI22X1M U420 (.Y(n372), 
	.B1(n410), 
	.B0(\reg_file[5][5] ), 
	.A1(n411), 
	.A0(\reg_file[4][5] ));
   AOI21X1M U421 (.Y(n374), 
	.B0(n399), 
	.A1(n372), 
	.A0(n373));
   OR4X1M U422 (.Y(N38), 
	.D(n374), 
	.C(n375), 
	.B(n376), 
	.A(n377));
   AOI22X1M U423 (.Y(n379), 
	.B1(n408), 
	.B0(\reg_file[11][6] ), 
	.A1(n409), 
	.A0(\reg_file[10][6] ));
   AOI22X1M U424 (.Y(n378), 
	.B1(n410), 
	.B0(\reg_file[9][6] ), 
	.A1(n411), 
	.A0(\reg_file[8][6] ));
   AOI21X1M U425 (.Y(n389), 
	.B0(n390), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U426 (.Y(n381), 
	.B1(n408), 
	.B0(\reg_file[15][6] ), 
	.A1(n409), 
	.A0(\reg_file[14][6] ));
   AOI22X1M U427 (.Y(n380), 
	.B1(n410), 
	.B0(\reg_file[13][6] ), 
	.A1(n411), 
	.A0(\reg_file[12][6] ));
   AOI21X1M U428 (.Y(n388), 
	.B0(n393), 
	.A1(n380), 
	.A0(n381));
   AOI22X1M U429 (.Y(n383), 
	.B1(n408), 
	.B0(Reg_3[6]), 
	.A1(n409), 
	.A0(Reg_2[6]));
   AOI22X1M U430 (.Y(n382), 
	.B1(n410), 
	.B0(Reg_1[6]), 
	.A1(n411), 
	.A0(Reg_0[6]));
   AOI21X1M U431 (.Y(n387), 
	.B0(n396), 
	.A1(n382), 
	.A0(n383));
   AOI22X1M U432 (.Y(n385), 
	.B1(n408), 
	.B0(\reg_file[7][6] ), 
	.A1(n409), 
	.A0(\reg_file[6][6] ));
   AOI22X1M U433 (.Y(n384), 
	.B1(n410), 
	.B0(\reg_file[5][6] ), 
	.A1(n411), 
	.A0(\reg_file[4][6] ));
   AOI21X1M U434 (.Y(n386), 
	.B0(n399), 
	.A1(n384), 
	.A0(n385));
   OR4X1M U435 (.Y(N37), 
	.D(n386), 
	.C(n387), 
	.B(n388), 
	.A(n389));
   AOI22X1M U436 (.Y(n392), 
	.B1(n408), 
	.B0(\reg_file[11][7] ), 
	.A1(n409), 
	.A0(\reg_file[10][7] ));
   AOI22X1M U437 (.Y(n391), 
	.B1(n410), 
	.B0(\reg_file[9][7] ), 
	.A1(n411), 
	.A0(\reg_file[8][7] ));
   AOI21X1M U438 (.Y(n405), 
	.B0(n390), 
	.A1(n391), 
	.A0(n392));
   AOI22X1M U439 (.Y(n395), 
	.B1(n408), 
	.B0(\reg_file[15][7] ), 
	.A1(n409), 
	.A0(\reg_file[14][7] ));
   AOI22X1M U440 (.Y(n394), 
	.B1(n410), 
	.B0(\reg_file[13][7] ), 
	.A1(n411), 
	.A0(\reg_file[12][7] ));
   AOI21X1M U441 (.Y(n404), 
	.B0(n393), 
	.A1(n394), 
	.A0(n395));
   AOI22X1M U442 (.Y(n398), 
	.B1(n408), 
	.B0(Reg_3[7]), 
	.A1(n409), 
	.A0(Reg_2[7]));
   AOI22X1M U443 (.Y(n397), 
	.B1(n410), 
	.B0(Reg_1[7]), 
	.A1(n411), 
	.A0(Reg_0[7]));
   AOI21X1M U444 (.Y(n403), 
	.B0(n396), 
	.A1(n397), 
	.A0(n398));
   AOI22X1M U445 (.Y(n401), 
	.B1(n408), 
	.B0(\reg_file[7][7] ), 
	.A1(n409), 
	.A0(\reg_file[6][7] ));
   AOI22X1M U446 (.Y(n400), 
	.B1(n410), 
	.B0(\reg_file[5][7] ), 
	.A1(n411), 
	.A0(\reg_file[4][7] ));
   AOI21X1M U447 (.Y(n402), 
	.B0(n399), 
	.A1(n400), 
	.A0(n401));
   OR4X1M U448 (.Y(N36), 
	.D(n402), 
	.C(n403), 
	.B(n404), 
	.A(n405));
   DLY1X4M U449 (.Y(n442), 
	.A(test_se));
   DLY1X4M U450 (.Y(n443), 
	.A(test_se));
   DLY1X4M U451 (.Y(n444), 
	.A(test_se));
   DLY1X4M U452 (.Y(n445), 
	.A(test_se));
endmodule

module CLK_GATE_DFT (
	test_en, 
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input test_en;
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_en), 
	.A(CLK_EN));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n161, 
	n82, 
	n155, 
	n168, 
	n165, 
	n159, 
	n156, 
	n164, 
	n166, 
	n160, 
	n157, 
	n162, 
	n163, 
	n158, 
	n167);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n161;
   input n82;
   input n155;
   input n168;
   input n165;
   input n159;
   input n156;
   input n164;
   input n166;
   input n160;
   input n157;
   input n162;
   input n163;
   input n158;
   input n167;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U11 (.Y(n3), 
	.A(a[5]));
   INVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n2));
   INVX2M U14 (.Y(n5), 
	.A(a[4]));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n2));
   INVX2M U17 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U20 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n2));
   INVX2M U22 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n2));
   INVX2M U24 (.Y(n10), 
	.A(a[0]));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U26 (.Y(n1), 
	.A(a[6]));
   INVX2M U27 (.Y(n17), 
	.A(b[1]));
   INVX2M U28 (.Y(n16), 
	.A(b[2]));
   INVX2M U29 (.Y(n15), 
	.A(b[3]));
   INVX2M U30 (.Y(n14), 
	.A(b[4]));
   INVX2M U31 (.Y(n13), 
	.A(b[5]));
   INVX2M U32 (.Y(n12), 
	.A(b[6]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n161, 
	n167, 
	n168, 
	n165, 
	n164, 
	n166, 
	n160, 
	n162, 
	n163);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n161;
   input n167;
   input n168;
   input n165;
   input n164;
   input n166;
   input n160;
   input n162;
   input n163;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n9), 
	.A(B[0]));
   INVX2M U3 (.Y(n7), 
	.A(B[2]));
   INVX2M U4 (.Y(n6), 
	.A(B[3]));
   INVX2M U5 (.Y(n5), 
	.A(B[4]));
   INVX2M U6 (.Y(n4), 
	.A(B[5]));
   INVX2M U7 (.Y(n3), 
	.A(B[6]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   NAND2X2M U2 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   AOI21BX2M U3 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   INVX2M U4 (.Y(SUM[6]), 
	.A(n9));
   INVX2M U5 (.Y(n9), 
	.A(A[6]));
   XNOR2X2M U6 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U7 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U8 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n161, 
	n167, 
	n82, 
	n155, 
	n168, 
	n165, 
	n159, 
	n156, 
	n164, 
	n166, 
	n160, 
	n157, 
	n162, 
	n163, 
	n158, 
	n154);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n161;
   input n167;
   input n82;
   input n155;
   input n168;
   input n165;
   input n159;
   input n156;
   input n164;
   input n166;
   input n160;
   input n157;
   input n162;
   input n163;
   input n158;
   input n154;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n7), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n4), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U10 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U11 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n22), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n18), 
	.A(\ab[0][3] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][5] ));
   INVX2M U21 (.Y(n17), 
	.A(\ab[0][2] ));
   INVX2M U22 (.Y(n19), 
	.A(\ab[0][4] ));
   INVX2M U23 (.Y(n21), 
	.A(\ab[0][6] ));
   AND2X2M U24 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U25 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U26 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U27 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U28 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U29 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U30 (.Y(\SUMB[1][6] ), 
	.B(n22), 
	.A(\ab[1][6] ));
   XNOR2X2M U31 (.Y(\SUMB[1][2] ), 
	.B(n18), 
	.A(\ab[1][2] ));
   XNOR2X2M U32 (.Y(\SUMB[1][3] ), 
	.B(n19), 
	.A(\ab[1][3] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n20), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][5] ), 
	.B(n21), 
	.A(\ab[1][5] ));
   XNOR2X2M U35 (.Y(\SUMB[1][1] ), 
	.B(n17), 
	.A(\ab[1][1] ));
   INVX2M U36 (.Y(n27), 
	.A(A[3]));
   INVX2M U37 (.Y(n25), 
	.A(A[5]));
   INVX2M U38 (.Y(n28), 
	.A(A[2]));
   INVX2M U39 (.Y(n23), 
	.A(A[7]));
   INVX2M U40 (.Y(n30), 
	.A(A[0]));
   INVX2M U41 (.Y(n26), 
	.A(A[4]));
   INVX2M U42 (.Y(n24), 
	.A(A[6]));
   INVX2M U43 (.Y(n29), 
	.A(A[1]));
   INVX2M U44 (.Y(n32), 
	.A(B[6]));
   INVX2M U45 (.Y(n34), 
	.A(B[4]));
   INVX2M U46 (.Y(n38), 
	.A(B[0]));
   INVX2M U47 (.Y(n31), 
	.A(B[7]));
   INVX2M U48 (.Y(n33), 
	.A(B[5]));
   INVX2M U49 (.Y(n36), 
	.A(B[2]));
   INVX2M U50 (.Y(n35), 
	.A(B[3]));
   INVX2M U51 (.Y(n37), 
	.A(B[1]));
   NOR2X1M U53 (.Y(\ab[7][7] ), 
	.B(n31), 
	.A(n23));
   NOR2X1M U54 (.Y(\ab[7][6] ), 
	.B(n32), 
	.A(n23));
   NOR2X1M U55 (.Y(\ab[7][5] ), 
	.B(n33), 
	.A(n23));
   NOR2X1M U56 (.Y(\ab[7][4] ), 
	.B(n34), 
	.A(n23));
   NOR2X1M U57 (.Y(\ab[7][3] ), 
	.B(n35), 
	.A(n23));
   NOR2X1M U58 (.Y(\ab[7][2] ), 
	.B(n36), 
	.A(n23));
   NOR2X1M U59 (.Y(\ab[7][1] ), 
	.B(n37), 
	.A(n23));
   NOR2X1M U60 (.Y(\ab[7][0] ), 
	.B(n38), 
	.A(n23));
   NOR2X1M U61 (.Y(\ab[6][7] ), 
	.B(n24), 
	.A(n31));
   NOR2X1M U62 (.Y(\ab[6][6] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U63 (.Y(\ab[6][5] ), 
	.B(n24), 
	.A(n33));
   NOR2X1M U64 (.Y(\ab[6][4] ), 
	.B(n24), 
	.A(n34));
   NOR2X1M U65 (.Y(\ab[6][3] ), 
	.B(n24), 
	.A(n35));
   NOR2X1M U66 (.Y(\ab[6][2] ), 
	.B(n24), 
	.A(n36));
   NOR2X1M U67 (.Y(\ab[6][1] ), 
	.B(n24), 
	.A(n37));
   NOR2X1M U68 (.Y(\ab[6][0] ), 
	.B(n24), 
	.A(n38));
   NOR2X1M U69 (.Y(\ab[5][7] ), 
	.B(n25), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U71 (.Y(\ab[5][5] ), 
	.B(n25), 
	.A(n33));
   NOR2X1M U72 (.Y(\ab[5][4] ), 
	.B(n25), 
	.A(n34));
   NOR2X1M U73 (.Y(\ab[5][3] ), 
	.B(n25), 
	.A(n35));
   NOR2X1M U74 (.Y(\ab[5][2] ), 
	.B(n25), 
	.A(n36));
   NOR2X1M U75 (.Y(\ab[5][1] ), 
	.B(n25), 
	.A(n37));
   NOR2X1M U76 (.Y(\ab[5][0] ), 
	.B(n25), 
	.A(n38));
   NOR2X1M U77 (.Y(\ab[4][7] ), 
	.B(n26), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][6] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U79 (.Y(\ab[4][5] ), 
	.B(n26), 
	.A(n33));
   NOR2X1M U80 (.Y(\ab[4][4] ), 
	.B(n26), 
	.A(n34));
   NOR2X1M U81 (.Y(\ab[4][3] ), 
	.B(n26), 
	.A(n35));
   NOR2X1M U82 (.Y(\ab[4][2] ), 
	.B(n26), 
	.A(n36));
   NOR2X1M U83 (.Y(\ab[4][1] ), 
	.B(n26), 
	.A(n37));
   NOR2X1M U84 (.Y(\ab[4][0] ), 
	.B(n26), 
	.A(n38));
   NOR2X1M U85 (.Y(\ab[3][7] ), 
	.B(n27), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][6] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U87 (.Y(\ab[3][5] ), 
	.B(n27), 
	.A(n33));
   NOR2X1M U88 (.Y(\ab[3][4] ), 
	.B(n27), 
	.A(n34));
   NOR2X1M U89 (.Y(\ab[3][3] ), 
	.B(n27), 
	.A(n35));
   NOR2X1M U90 (.Y(\ab[3][2] ), 
	.B(n27), 
	.A(n36));
   NOR2X1M U91 (.Y(\ab[3][1] ), 
	.B(n27), 
	.A(n37));
   NOR2X1M U92 (.Y(\ab[3][0] ), 
	.B(n27), 
	.A(n38));
   NOR2X1M U93 (.Y(\ab[2][7] ), 
	.B(n28), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][6] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U95 (.Y(\ab[2][5] ), 
	.B(n28), 
	.A(n33));
   NOR2X1M U96 (.Y(\ab[2][4] ), 
	.B(n28), 
	.A(n34));
   NOR2X1M U97 (.Y(\ab[2][3] ), 
	.B(n28), 
	.A(n35));
   NOR2X1M U98 (.Y(\ab[2][2] ), 
	.B(n28), 
	.A(n36));
   NOR2X1M U99 (.Y(\ab[2][1] ), 
	.B(n28), 
	.A(n37));
   NOR2X1M U100 (.Y(\ab[2][0] ), 
	.B(n28), 
	.A(n38));
   NOR2X1M U101 (.Y(\ab[1][7] ), 
	.B(n29), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][6] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U103 (.Y(\ab[1][5] ), 
	.B(n29), 
	.A(n33));
   NOR2X1M U104 (.Y(\ab[1][4] ), 
	.B(n29), 
	.A(n34));
   NOR2X1M U105 (.Y(\ab[1][3] ), 
	.B(n29), 
	.A(n35));
   NOR2X1M U106 (.Y(\ab[1][2] ), 
	.B(n29), 
	.A(n36));
   NOR2X1M U107 (.Y(\ab[1][1] ), 
	.B(n29), 
	.A(n37));
   NOR2X1M U108 (.Y(\ab[1][0] ), 
	.B(n29), 
	.A(n38));
   NOR2X1M U109 (.Y(\ab[0][7] ), 
	.B(n30), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][6] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U111 (.Y(\ab[0][5] ), 
	.B(n30), 
	.A(n33));
   NOR2X1M U112 (.Y(\ab[0][4] ), 
	.B(n30), 
	.A(n34));
   NOR2X1M U113 (.Y(\ab[0][3] ), 
	.B(n30), 
	.A(n35));
   NOR2X1M U114 (.Y(\ab[0][2] ), 
	.B(n30), 
	.A(n36));
   NOR2X1M U115 (.Y(\ab[0][1] ), 
	.B(n30), 
	.A(n37));
   NOR2X1M U116 (.Y(PRODUCT[0]), 
	.B(n30), 
	.A(n38));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	CLK, 
	RST, 
	A, 
	B, 
	ALU_FUN, 
	Enable, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN1_RST_SYNC_1_M);
   input CLK;
   input RST;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input Enable;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN1_RST_SYNC_1_M;

   // Internal wires
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N162;
   wire N163;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n20;
   wire n21;
   wire n22;
   wire n24;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n41;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n50;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n58;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n66;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n74;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n83;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n91;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n102;
   wire n103;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n118;
   wire n120;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n134;
   wire n19;
   wire n23;
   wire n26;
   wire n30;
   wire n31;
   wire n33;
   wire n34;
   wire n40;
   wire n42;
   wire n49;
   wire n51;
   wire n57;
   wire n59;
   wire n65;
   wire n67;
   wire n73;
   wire n75;
   wire n82;
   wire n84;
   wire n90;
   wire n92;
   wire n101;
   wire n104;
   wire n110;
   wire n136;
   wire n138;
   wire n140;
   wire n142;
   wire n144;
   wire n146;
   wire n148;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;

   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(OUT_VALID), 
	.D(Enable), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(ALU_OUT[15]), 
	.D(n84), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(ALU_OUT[14]), 
	.D(n90), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(ALU_OUT[13]), 
	.D(n92), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(ALU_OUT[12]), 
	.D(n101), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(n104), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(n110), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(n136), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(n134), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(n132), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(n130), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(n128), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(n126), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(n124), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(n122), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(n120), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(n118), 
	.CK(CLK));
   INVX2M U3 (.Y(n140), 
	.A(n91));
   NOR3BX2M U4 (.Y(n43), 
	.C(n17), 
	.B(n151), 
	.AN(n103));
   NAND2X2M U5 (.Y(n25), 
	.B(n151), 
	.A(n80));
   NOR2X2M U8 (.Y(n93), 
	.B(n152), 
	.A(n150));
   INVX2M U9 (.Y(n148), 
	.A(n27));
   INVX2M U10 (.Y(n146), 
	.A(n29));
   NAND2X2M U11 (.Y(n91), 
	.B(n153), 
	.A(n108));
   INVX2M U12 (.Y(n150), 
	.A(n105));
   AND2X2M U13 (.Y(n108), 
	.B(n152), 
	.A(n100));
   OAI21X2M U14 (.Y(n28), 
	.B0(Enable), 
	.A1(n94), 
	.A0(n102));
   NOR2X2M U15 (.Y(n102), 
	.B(n150), 
	.A(ALU_FUN[1]));
   OAI21X2M U16 (.Y(n24), 
	.B0(Enable), 
	.A1(n94), 
	.A0(n93));
   NOR3X2M U17 (.Y(n80), 
	.C(n17), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[0]));
   NOR3X2M U18 (.Y(n100), 
	.C(n144), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[2]));
   NAND3X2M U19 (.Y(n27), 
	.C(n93), 
	.B(n153), 
	.A(Enable));
   NAND3X2M U20 (.Y(n29), 
	.C(n103), 
	.B(Enable), 
	.A(n105));
   NAND2X2M U21 (.Y(n17), 
	.B(ALU_FUN[3]), 
	.A(Enable));
   AND3X2M U22 (.Y(n32), 
	.C(n153), 
	.B(ALU_FUN[1]), 
	.A(n100));
   NOR2X2M U23 (.Y(n105), 
	.B(ALU_FUN[3]), 
	.A(n151));
   NOR2X2M U24 (.Y(n103), 
	.B(ALU_FUN[1]), 
	.A(n153));
   INVX2M U25 (.Y(n144), 
	.A(Enable));
   INVX2M U26 (.Y(n152), 
	.A(ALU_FUN[1]));
   INVX2M U27 (.Y(n153), 
	.A(ALU_FUN[0]));
   INVX2M U28 (.Y(n151), 
	.A(ALU_FUN[2]));
   AND2X2M U29 (.Y(n21), 
	.B(ALU_FUN[0]), 
	.A(n108));
   AND3X2M U30 (.Y(n94), 
	.C(n103), 
	.B(n151), 
	.A(ALU_FUN[3]));
   AND2X2M U31 (.Y(n14), 
	.B(ALU_FUN[2]), 
	.A(n80));
   INVX2M U32 (.Y(n138), 
	.A(n106));
   OAI221X1M U33 (.Y(n89), 
	.C0(n27), 
	.B1(n154), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[7]));
   OAI221X1M U34 (.Y(n22), 
	.C0(n27), 
	.B1(n160), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[0]));
   OAI221X1M U35 (.Y(n48), 
	.C0(n27), 
	.B1(n82), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[2]));
   OAI221X1M U36 (.Y(n56), 
	.C0(n27), 
	.B1(n158), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[3]));
   OAI221X1M U37 (.Y(n64), 
	.C0(n27), 
	.B1(n157), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[4]));
   OAI221X1M U38 (.Y(n72), 
	.C0(n27), 
	.B1(n156), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[5]));
   OAI221X1M U39 (.Y(n81), 
	.C0(n27), 
	.B1(n155), 
	.B0(n25), 
	.A1(n24), 
	.A0(A[6]));
   OAI221X1M U40 (.Y(n39), 
	.C0(n27), 
	.B1(n25), 
	.B0(n159), 
	.A1(n24), 
	.A0(A[1]));
   OAI221X1M U41 (.Y(n20), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[0]), 
	.A1(n28), 
	.A0(n160));
   OAI221X1M U42 (.Y(n95), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[7]), 
	.A1(n154), 
	.A0(n28));
   OAI221X1M U43 (.Y(n41), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[1]), 
	.A1(n28), 
	.A0(n159));
   OAI221X1M U44 (.Y(n50), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[2]), 
	.A1(n82), 
	.A0(n28));
   OAI221X1M U45 (.Y(n58), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[3]), 
	.A1(n158), 
	.A0(n28));
   OAI221X1M U46 (.Y(n66), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[4]), 
	.A1(n157), 
	.A0(n28));
   OAI221X1M U47 (.Y(n74), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[5]), 
	.A1(n156), 
	.A0(n28));
   OAI221X1M U48 (.Y(n83), 
	.C0(n29), 
	.B1(n25), 
	.B0(A[6]), 
	.A1(n155), 
	.A0(n28));
   NAND2X2M U49 (.Y(n106), 
	.B(n21), 
	.A(N103));
   NAND4X2M U50 (.Y(n97), 
	.D(n161), 
	.C(n162), 
	.B(n163), 
	.A(n164));
   INVX2M U51 (.Y(n142), 
	.A(n96));
   OAI211X2M U52 (.Y(n96), 
	.C0(n99), 
	.B0(ALU_FUN[0]), 
	.A1(n98), 
	.A0(n97));
   AND2X2M U53 (.Y(n99), 
	.B(ALU_FUN[1]), 
	.A(n100));
   NAND4X2M U54 (.Y(n98), 
	.D(n165), 
	.C(n166), 
	.B(n167), 
	.A(n168));
   INVX2M U55 (.Y(n158), 
	.A(A[3]));
   INVX2M U56 (.Y(n156), 
	.A(A[5]));
   INVX2M U57 (.Y(n159), 
	.A(A[1]));
   INVX2M U58 (.Y(n160), 
	.A(A[0]));
   INVX2M U59 (.Y(n157), 
	.A(A[4]));
   INVX2M U60 (.Y(n155), 
	.A(A[6]));
   INVX2M U61 (.Y(n154), 
	.A(A[7]));
   INVX2M U62 (.Y(n82), 
	.A(A[2]));
   AOI22X1M U63 (.Y(n9), 
	.B1(n144), 
	.B0(ALU_OUT[0]), 
	.A1(n160), 
	.A0(n148));
   AOI22X1M U64 (.Y(n35), 
	.B1(n144), 
	.B0(ALU_OUT[1]), 
	.A1(n159), 
	.A0(n148));
   AOI22X1M U65 (.Y(n44), 
	.B1(n144), 
	.B0(ALU_OUT[2]), 
	.A1(n82), 
	.A0(n148));
   AOI22X1M U66 (.Y(n52), 
	.B1(n144), 
	.B0(ALU_OUT[3]), 
	.A1(n158), 
	.A0(n148));
   AOI22X1M U67 (.Y(n60), 
	.B1(n144), 
	.B0(ALU_OUT[4]), 
	.A1(n157), 
	.A0(n148));
   AOI22X1M U68 (.Y(n68), 
	.B1(n144), 
	.B0(ALU_OUT[5]), 
	.A1(n156), 
	.A0(n148));
   AOI22X1M U69 (.Y(n76), 
	.B1(n144), 
	.B0(ALU_OUT[6]), 
	.A1(n155), 
	.A0(n148));
   AOI22X1M U70 (.Y(n85), 
	.B1(n144), 
	.B0(ALU_OUT[7]), 
	.A1(n154), 
	.A0(n148));
   OAI2B11X2M U71 (.Y(n134), 
	.C0(n107), 
	.B0(n106), 
	.A1N(N94), 
	.A0(n91));
   AOI22X1M U72 (.Y(n107), 
	.B1(n144), 
	.B0(ALU_OUT[8]), 
	.A1(n32), 
	.A0(N112));
   NAND4X2M U73 (.Y(n118), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   AOI221XLM U74 (.Y(n12), 
	.C0(n15), 
	.B1(n14), 
	.B0(A[1]), 
	.A1(n140), 
	.A0(N86));
   AOI222X1M U75 (.Y(n11), 
	.C1(n168), 
	.C0(n22), 
	.B1(n21), 
	.B0(N95), 
	.A1(n20), 
	.A0(B[0]));
   AOI222X1M U76 (.Y(n10), 
	.C1(n32), 
	.C0(N104), 
	.B1(n142), 
	.B0(N122), 
	.A1(A[0]), 
	.A0(n146));
   NAND4X2M U77 (.Y(n120), 
	.D(n38), 
	.C(n37), 
	.B(n36), 
	.A(n35));
   AOI222X1M U78 (.Y(n37), 
	.C1(n41), 
	.C0(B[1]), 
	.B1(n167), 
	.B0(n39), 
	.A1(n142), 
	.A0(N123));
   AOI222X1M U79 (.Y(n38), 
	.C1(n140), 
	.C0(N87), 
	.B1(n14), 
	.B0(A[2]), 
	.A1(n21), 
	.A0(N96));
   AOI222X1M U80 (.Y(n36), 
	.C1(n32), 
	.C0(N105), 
	.B1(A[0]), 
	.B0(n43), 
	.A1(A[1]), 
	.A0(n146));
   NAND4X2M U81 (.Y(n122), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   AOI222X1M U82 (.Y(n46), 
	.C1(n50), 
	.C0(B[2]), 
	.B1(n166), 
	.B0(n48), 
	.A1(n142), 
	.A0(N124));
   AOI222X1M U83 (.Y(n47), 
	.C1(n140), 
	.C0(N88), 
	.B1(n14), 
	.B0(A[3]), 
	.A1(n21), 
	.A0(N97));
   AOI222X1M U84 (.Y(n45), 
	.C1(n32), 
	.C0(N106), 
	.B1(A[1]), 
	.B0(n43), 
	.A1(n146), 
	.A0(A[2]));
   NAND4X2M U85 (.Y(n124), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   AOI222X1M U86 (.Y(n54), 
	.C1(n58), 
	.C0(B[3]), 
	.B1(n165), 
	.B0(n56), 
	.A1(n142), 
	.A0(N125));
   AOI222X1M U87 (.Y(n55), 
	.C1(n140), 
	.C0(N89), 
	.B1(n14), 
	.B0(A[4]), 
	.A1(n21), 
	.A0(N98));
   AOI222X1M U88 (.Y(n53), 
	.C1(n32), 
	.C0(N107), 
	.B1(A[2]), 
	.B0(n43), 
	.A1(n146), 
	.A0(A[3]));
   NAND4X2M U89 (.Y(n126), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.A(n60));
   AOI222X1M U90 (.Y(n62), 
	.C1(n66), 
	.C0(B[4]), 
	.B1(n164), 
	.B0(n64), 
	.A1(n142), 
	.A0(N126));
   AOI222X1M U91 (.Y(n63), 
	.C1(n140), 
	.C0(N90), 
	.B1(n14), 
	.B0(A[5]), 
	.A1(n21), 
	.A0(N99));
   AOI222X1M U92 (.Y(n61), 
	.C1(n32), 
	.C0(N108), 
	.B1(n43), 
	.B0(A[3]), 
	.A1(n146), 
	.A0(A[4]));
   NAND4X2M U93 (.Y(n128), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n68));
   AOI222X1M U94 (.Y(n70), 
	.C1(n74), 
	.C0(B[5]), 
	.B1(n163), 
	.B0(n72), 
	.A1(n142), 
	.A0(N127));
   AOI222X1M U95 (.Y(n71), 
	.C1(n140), 
	.C0(N91), 
	.B1(n14), 
	.B0(A[6]), 
	.A1(n21), 
	.A0(N100));
   AOI222X1M U96 (.Y(n69), 
	.C1(n32), 
	.C0(N109), 
	.B1(n43), 
	.B0(A[4]), 
	.A1(n146), 
	.A0(A[5]));
   NAND4X2M U97 (.Y(n130), 
	.D(n79), 
	.C(n78), 
	.B(n77), 
	.A(n76));
   AOI222X1M U98 (.Y(n78), 
	.C1(n83), 
	.C0(B[6]), 
	.B1(n162), 
	.B0(n81), 
	.A1(n142), 
	.A0(N128));
   AOI222X1M U99 (.Y(n79), 
	.C1(n140), 
	.C0(N92), 
	.B1(n14), 
	.B0(A[7]), 
	.A1(n21), 
	.A0(N101));
   AOI222X1M U100 (.Y(n77), 
	.C1(n32), 
	.C0(N110), 
	.B1(n43), 
	.B0(A[5]), 
	.A1(n146), 
	.A0(A[6]));
   NAND4X2M U101 (.Y(n132), 
	.D(n88), 
	.C(n87), 
	.B(n86), 
	.A(n85));
   AOI22X1M U102 (.Y(n87), 
	.B1(n142), 
	.B0(N129), 
	.A1(n95), 
	.A0(B[7]));
   AOI222X1M U103 (.Y(n88), 
	.C1(n21), 
	.C0(N102), 
	.B1(n140), 
	.B0(N93), 
	.A1(n161), 
	.A0(n89));
   AOI222X1M U104 (.Y(n86), 
	.C1(n32), 
	.C0(N111), 
	.B1(n43), 
	.B0(A[6]), 
	.A1(n146), 
	.A0(A[7]));
   INVX2M U105 (.Y(n136), 
	.A(n109));
   AOI221XLM U106 (.Y(n109), 
	.C0(n138), 
	.B1(n32), 
	.B0(N113), 
	.A1(n144), 
	.A0(ALU_OUT[9]));
   INVX2M U107 (.Y(n110), 
	.A(n111));
   AOI221XLM U108 (.Y(n111), 
	.C0(n138), 
	.B1(n32), 
	.B0(N114), 
	.A1(n144), 
	.A0(ALU_OUT[10]));
   INVX2M U109 (.Y(n104), 
	.A(n112));
   AOI221XLM U110 (.Y(n112), 
	.C0(n138), 
	.B1(n32), 
	.B0(N115), 
	.A1(n144), 
	.A0(ALU_OUT[11]));
   INVX2M U111 (.Y(n101), 
	.A(n113));
   AOI221XLM U112 (.Y(n113), 
	.C0(n138), 
	.B1(n32), 
	.B0(N116), 
	.A1(n144), 
	.A0(ALU_OUT[12]));
   INVX2M U113 (.Y(n92), 
	.A(n114));
   AOI221XLM U114 (.Y(n114), 
	.C0(n138), 
	.B1(n32), 
	.B0(N117), 
	.A1(n144), 
	.A0(ALU_OUT[13]));
   INVX2M U115 (.Y(n90), 
	.A(n115));
   AOI221XLM U116 (.Y(n115), 
	.C0(n138), 
	.B1(n32), 
	.B0(N118), 
	.A1(n144), 
	.A0(ALU_OUT[14]));
   INVX2M U117 (.Y(n84), 
	.A(n116));
   AOI221XLM U118 (.Y(n116), 
	.C0(n138), 
	.B1(n32), 
	.B0(N119), 
	.A1(n144), 
	.A0(ALU_OUT[15]));
   NOR4X1M U119 (.Y(n15), 
	.D(n152), 
	.C(n17), 
	.B(n16), 
	.A(ALU_FUN[2]));
   AOI22X1M U120 (.Y(n16), 
	.B1(ALU_FUN[0]), 
	.B0(N163), 
	.A1(n153), 
	.A0(N162));
   INVX2M U129 (.Y(n164), 
	.A(B[4]));
   INVX2M U147 (.Y(n162), 
	.A(B[6]));
   INVX2M U148 (.Y(n168), 
	.A(B[0]));
   INVX2M U149 (.Y(n161), 
	.A(B[7]));
   INVX2M U150 (.Y(n163), 
	.A(B[5]));
   INVX2M U151 (.Y(n167), 
	.A(B[1]));
   INVX2M U152 (.Y(n165), 
	.A(B[3]));
   INVX2M U153 (.Y(n166), 
	.A(B[2]));
   NOR2BX1M U154 (.Y(n19), 
	.B(A[0]), 
	.AN(B[0]));
   OAI2B2X1M U155 (.Y(n23), 
	.B1(n19), 
	.B0(B[1]), 
	.A1N(A[1]), 
	.A0(n19));
   NAND2BX1M U156 (.Y(n59), 
	.B(B[6]), 
	.AN(A[6]));
   CLKNAND2X2M U157 (.Y(n57), 
	.B(n156), 
	.A(B[5]));
   NAND2BX1M U158 (.Y(n42), 
	.B(B[4]), 
	.AN(A[4]));
   NAND4X1M U159 (.Y(n75), 
	.D(n42), 
	.C(n57), 
	.B(n59), 
	.A(n23));
   CLKNAND2X2M U160 (.Y(n40), 
	.B(n158), 
	.A(B[3]));
   CLKNAND2X2M U161 (.Y(n26), 
	.B(n82), 
	.A(B[2]));
   CLKNAND2X2M U162 (.Y(n73), 
	.B(n26), 
	.A(n40));
   NOR2BX1M U163 (.Y(n67), 
	.B(A[7]), 
	.AN(B[7]));
   NOR2BX1M U164 (.Y(n31), 
	.B(B[0]), 
	.AN(A[0]));
   OAI2BB1X1M U165 (.Y(n30), 
	.B0(B[1]), 
	.A1N(A[1]), 
	.A0N(n31));
   OAI211X1M U166 (.Y(n33), 
	.C0(n26), 
	.B0(n30), 
	.A1(n31), 
	.A0(A[1]));
   OAI221X1M U167 (.Y(n34), 
	.C0(n33), 
	.B1(n158), 
	.B0(B[3]), 
	.A1(n82), 
	.A0(B[2]));
   AOI32X1M U168 (.Y(n49), 
	.B1(n164), 
	.B0(A[4]), 
	.A2(n34), 
	.A1(n40), 
	.A0(n42));
   OAI21X1M U169 (.Y(n51), 
	.B0(n49), 
	.A1(n156), 
	.A0(B[5]));
   AOI32X1M U170 (.Y(n65), 
	.B1(n162), 
	.B0(A[6]), 
	.A2(n51), 
	.A1(n57), 
	.A0(n59));
   OAI2B2X1M U171 (.Y(N163), 
	.B1(n65), 
	.B0(n67), 
	.A1N(A[7]), 
	.A0(B[7]));
   NOR4X1M U172 (.Y(N162), 
	.D(n67), 
	.C(N163), 
	.B(n73), 
	.A(n75));
   ALU_DW_div_uns_0 div_50 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N129,
		N128,
		N127,
		N126,
		N125,
		N124,
		N123,
		N122 }), 
	.n161(n161), 
	.n82(n82), 
	.n155(n155), 
	.n168(n168), 
	.n165(n165), 
	.n159(n159), 
	.n156(n156), 
	.n164(n164), 
	.n166(n166), 
	.n160(n160), 
	.n157(n157), 
	.n162(n162), 
	.n163(n163), 
	.n158(n158), 
	.n167(n167));
   ALU_DW01_sub_0 sub_43 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N103,
		N102,
		N101,
		N100,
		N99,
		N98,
		N97,
		N96,
		N95 }), 
	.n161(n161), 
	.n167(n167), 
	.n168(n168), 
	.n165(n165), 
	.n164(n164), 
	.n166(n166), 
	.n160(n160), 
	.n162(n162), 
	.n163(n163));
   ALU_DW01_add_0 add_39 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86 }));
   ALU_DW02_mult_0 mult_47 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109,
		N108,
		N107,
		N106,
		N105,
		N104 }), 
	.n161(n161), 
	.n167(n167), 
	.n82(n82), 
	.n155(n155), 
	.n168(n168), 
	.n165(n165), 
	.n159(n159), 
	.n156(n156), 
	.n164(n164), 
	.n166(n166), 
	.n160(n160), 
	.n157(n157), 
	.n162(n162), 
	.n163(n163), 
	.n158(n158), 
	.n154(n154));
endmodule

module DATA_SYNC_test_1 (
	Unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se, 
	REF_CLK_M__L5_N6, 
	REF_CLK_M__L5_N8);
   input [7:0] Unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;
   input REF_CLK_M__L5_N6;
   input REF_CLK_M__L5_N8;

   // Internal wires
   wire sync_enable_d;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [1:0] enable_sync;

   assign test_so = sync_enable_d ;

   SDFFRQX2M sync_enable_d_reg (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_enable_d), 
	.D(enable_sync[1]), 
	.CK(CLK));
   SDFFRQX2M \enable_sync_reg[1]  (.SI(enable_sync[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_sync[1]), 
	.D(enable_sync[0]), 
	.CK(REF_CLK_M__L5_N8));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_sync[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \enable_sync_reg[0]  (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_sync[0]), 
	.D(bus_enable), 
	.CK(REF_CLK_M__L5_N8));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(enable_sync[1]), 
	.AN(sync_enable_d));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(Unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(Unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(Unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(Unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(Unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(Unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(Unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(Unsync_bus[7]));
endmodule

module FIFO_MEM_CNTRL_test_1 (
	wclk, 
	wrst_n, 
	winc, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	REF_CLK_M__L5_N12, 
	REF_CLK_M__L5_N13, 
	REF_CLK_M__L5_N9);
   input wclk;
   input wrst_n;
   input winc;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input REF_CLK_M__L5_N12;
   input REF_CLK_M__L5_N13;
   input REF_CLK_M__L5_N9;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \FIFO_MEM[0][7] ;
   wire \FIFO_MEM[0][6] ;
   wire \FIFO_MEM[0][5] ;
   wire \FIFO_MEM[0][4] ;
   wire \FIFO_MEM[0][3] ;
   wire \FIFO_MEM[0][2] ;
   wire \FIFO_MEM[0][1] ;
   wire \FIFO_MEM[0][0] ;
   wire \FIFO_MEM[1][7] ;
   wire \FIFO_MEM[1][6] ;
   wire \FIFO_MEM[1][5] ;
   wire \FIFO_MEM[1][4] ;
   wire \FIFO_MEM[1][3] ;
   wire \FIFO_MEM[1][2] ;
   wire \FIFO_MEM[1][1] ;
   wire \FIFO_MEM[1][0] ;
   wire \FIFO_MEM[2][7] ;
   wire \FIFO_MEM[2][6] ;
   wire \FIFO_MEM[2][5] ;
   wire \FIFO_MEM[2][4] ;
   wire \FIFO_MEM[2][3] ;
   wire \FIFO_MEM[2][2] ;
   wire \FIFO_MEM[2][1] ;
   wire \FIFO_MEM[2][0] ;
   wire \FIFO_MEM[3][7] ;
   wire \FIFO_MEM[3][6] ;
   wire \FIFO_MEM[3][5] ;
   wire \FIFO_MEM[3][4] ;
   wire \FIFO_MEM[3][3] ;
   wire \FIFO_MEM[3][2] ;
   wire \FIFO_MEM[3][1] ;
   wire \FIFO_MEM[3][0] ;
   wire \FIFO_MEM[4][7] ;
   wire \FIFO_MEM[4][6] ;
   wire \FIFO_MEM[4][5] ;
   wire \FIFO_MEM[4][4] ;
   wire \FIFO_MEM[4][3] ;
   wire \FIFO_MEM[4][2] ;
   wire \FIFO_MEM[4][1] ;
   wire \FIFO_MEM[4][0] ;
   wire \FIFO_MEM[5][7] ;
   wire \FIFO_MEM[5][6] ;
   wire \FIFO_MEM[5][5] ;
   wire \FIFO_MEM[5][4] ;
   wire \FIFO_MEM[5][3] ;
   wire \FIFO_MEM[5][2] ;
   wire \FIFO_MEM[5][1] ;
   wire \FIFO_MEM[5][0] ;
   wire \FIFO_MEM[6][7] ;
   wire \FIFO_MEM[6][6] ;
   wire \FIFO_MEM[6][5] ;
   wire \FIFO_MEM[6][4] ;
   wire \FIFO_MEM[6][3] ;
   wire \FIFO_MEM[6][2] ;
   wire \FIFO_MEM[6][1] ;
   wire \FIFO_MEM[6][0] ;
   wire \FIFO_MEM[7][7] ;
   wire \FIFO_MEM[7][6] ;
   wire \FIFO_MEM[7][5] ;
   wire \FIFO_MEM[7][4] ;
   wire \FIFO_MEM[7][3] ;
   wire \FIFO_MEM[7][2] ;
   wire \FIFO_MEM[7][1] ;
   wire \FIFO_MEM[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;

   assign N10 = raddr[0] ;
   assign N11 = raddr[1] ;
   assign N12 = raddr[2] ;
   assign test_so2 = \FIFO_MEM[7][7]  ;
   assign test_so1 = \FIFO_MEM[7][0]  ;

   SDFFRQX2M \FIFO_MEM_reg[0][7]  (.SI(\FIFO_MEM[0][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][7] ), 
	.D(n148), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[0][6]  (.SI(\FIFO_MEM[0][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][6] ), 
	.D(n147), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[0][5]  (.SI(\FIFO_MEM[0][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][5] ), 
	.D(n146), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[0][4]  (.SI(\FIFO_MEM[0][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][4] ), 
	.D(n145), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[0][3]  (.SI(\FIFO_MEM[0][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][3] ), 
	.D(n144), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[0][2]  (.SI(\FIFO_MEM[0][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][2] ), 
	.D(n143), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[0][1]  (.SI(\FIFO_MEM[0][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][1] ), 
	.D(n142), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[0][0]  (.SI(test_si1), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[0][0] ), 
	.D(n141), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[1][7]  (.SI(\FIFO_MEM[1][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][7] ), 
	.D(n140), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[1][6]  (.SI(\FIFO_MEM[1][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][6] ), 
	.D(n139), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[1][5]  (.SI(\FIFO_MEM[1][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][5] ), 
	.D(n138), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[1][4]  (.SI(\FIFO_MEM[1][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][4] ), 
	.D(n137), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[1][3]  (.SI(\FIFO_MEM[1][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][3] ), 
	.D(n136), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[1][2]  (.SI(\FIFO_MEM[1][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][2] ), 
	.D(n135), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[1][1]  (.SI(\FIFO_MEM[1][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][1] ), 
	.D(n134), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[1][0]  (.SI(\FIFO_MEM[0][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[1][0] ), 
	.D(n133), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[4][7]  (.SI(\FIFO_MEM[4][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][7] ), 
	.D(n116), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[4][6]  (.SI(\FIFO_MEM[4][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][6] ), 
	.D(n115), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[4][5]  (.SI(\FIFO_MEM[4][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][5] ), 
	.D(n114), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[4][4]  (.SI(\FIFO_MEM[4][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][4] ), 
	.D(n113), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[4][3]  (.SI(\FIFO_MEM[4][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][3] ), 
	.D(n112), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[4][2]  (.SI(\FIFO_MEM[4][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][2] ), 
	.D(n111), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[4][1]  (.SI(\FIFO_MEM[4][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][1] ), 
	.D(n110), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[4][0]  (.SI(\FIFO_MEM[3][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[4][0] ), 
	.D(n109), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[5][7]  (.SI(\FIFO_MEM[5][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][7] ), 
	.D(n108), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][6]  (.SI(\FIFO_MEM[5][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][6] ), 
	.D(n107), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][5]  (.SI(\FIFO_MEM[5][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][5] ), 
	.D(n106), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][4]  (.SI(\FIFO_MEM[5][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][4] ), 
	.D(n105), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][3]  (.SI(\FIFO_MEM[5][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][3] ), 
	.D(n104), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][2]  (.SI(\FIFO_MEM[5][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][2] ), 
	.D(n103), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[5][1]  (.SI(\FIFO_MEM[5][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][1] ), 
	.D(n102), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[5][0]  (.SI(\FIFO_MEM[4][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[5][0] ), 
	.D(n101), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[6][7]  (.SI(\FIFO_MEM[6][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][7] ), 
	.D(n100), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[6][6]  (.SI(\FIFO_MEM[6][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][6] ), 
	.D(n99), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[6][5]  (.SI(\FIFO_MEM[6][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][5] ), 
	.D(n98), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[6][4]  (.SI(\FIFO_MEM[6][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][4] ), 
	.D(n97), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[6][3]  (.SI(\FIFO_MEM[6][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][3] ), 
	.D(n96), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[6][2]  (.SI(\FIFO_MEM[6][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][2] ), 
	.D(n95), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[6][1]  (.SI(\FIFO_MEM[6][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][1] ), 
	.D(n94), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[6][0]  (.SI(\FIFO_MEM[5][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[6][0] ), 
	.D(n93), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][7]  (.SI(\FIFO_MEM[7][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][7] ), 
	.D(n92), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][6]  (.SI(\FIFO_MEM[7][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][6] ), 
	.D(n91), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][5]  (.SI(\FIFO_MEM[7][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][5] ), 
	.D(n90), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][4]  (.SI(\FIFO_MEM[7][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][4] ), 
	.D(n89), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][3]  (.SI(\FIFO_MEM[7][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][3] ), 
	.D(n88), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[7][2]  (.SI(\FIFO_MEM[7][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][2] ), 
	.D(n87), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[7][1]  (.SI(test_si2), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][1] ), 
	.D(n86), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[7][0]  (.SI(\FIFO_MEM[6][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[7][0] ), 
	.D(n85), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \FIFO_MEM_reg[2][7]  (.SI(\FIFO_MEM[2][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][7] ), 
	.D(n132), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[2][6]  (.SI(\FIFO_MEM[2][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][6] ), 
	.D(n131), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[2][5]  (.SI(\FIFO_MEM[2][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][5] ), 
	.D(n130), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[2][4]  (.SI(\FIFO_MEM[2][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][4] ), 
	.D(n129), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[2][3]  (.SI(\FIFO_MEM[2][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][3] ), 
	.D(n128), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[2][2]  (.SI(\FIFO_MEM[2][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][2] ), 
	.D(n127), 
	.CK(REF_CLK_M__L5_N13));
   SDFFRQX2M \FIFO_MEM_reg[2][1]  (.SI(\FIFO_MEM[2][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][1] ), 
	.D(n126), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[2][0]  (.SI(\FIFO_MEM[1][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[2][0] ), 
	.D(n125), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[3][7]  (.SI(\FIFO_MEM[3][6] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][7] ), 
	.D(n124), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[3][6]  (.SI(\FIFO_MEM[3][5] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][6] ), 
	.D(n123), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[3][5]  (.SI(\FIFO_MEM[3][4] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][5] ), 
	.D(n122), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[3][4]  (.SI(\FIFO_MEM[3][3] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][4] ), 
	.D(n121), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[3][3]  (.SI(\FIFO_MEM[3][2] ), 
	.SE(n207), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][3] ), 
	.D(n120), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[3][2]  (.SI(\FIFO_MEM[3][1] ), 
	.SE(n206), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][2] ), 
	.D(n119), 
	.CK(wclk));
   SDFFRQX2M \FIFO_MEM_reg[3][1]  (.SI(\FIFO_MEM[3][0] ), 
	.SE(n205), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][1] ), 
	.D(n118), 
	.CK(REF_CLK_M__L5_N12));
   SDFFRQX2M \FIFO_MEM_reg[3][0]  (.SI(\FIFO_MEM[2][7] ), 
	.SE(n204), 
	.RN(wrst_n), 
	.Q(\FIFO_MEM[3][0] ), 
	.D(n117), 
	.CK(REF_CLK_M__L5_N12));
   NOR2X2M U78 (.Y(n171), 
	.B(n176), 
	.A(n175));
   NAND3X2M U79 (.Y(n79), 
	.C(n76), 
	.B(n199), 
	.A(n198));
   NAND3X2M U80 (.Y(n84), 
	.C(n81), 
	.B(n199), 
	.A(n198));
   NOR2X2M U81 (.Y(n172), 
	.B(N11), 
	.A(n175));
   NOR2X2M U82 (.Y(n169), 
	.B(N12), 
	.A(n176));
   NOR2X2M U83 (.Y(n168), 
	.B(N12), 
	.A(N11));
   INVX2M U84 (.Y(n176), 
	.A(N11));
   INVX2M U85 (.Y(n175), 
	.A(N12));
   NAND3X2M U86 (.Y(n78), 
	.C(waddr[0]), 
	.B(n199), 
	.A(n76));
   NAND3X2M U87 (.Y(n75), 
	.C(waddr[1]), 
	.B(n76), 
	.A(waddr[0]));
   NOR2BX2M U88 (.Y(n81), 
	.B(waddr[2]), 
	.AN(winc));
   OAI2BB2X1M U89 (.Y(n85), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][0] ));
   OAI2BB2X1M U90 (.Y(n86), 
	.B1(n196), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][1] ));
   OAI2BB2X1M U91 (.Y(n87), 
	.B1(n195), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][2] ));
   OAI2BB2X1M U92 (.Y(n88), 
	.B1(n194), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][3] ));
   OAI2BB2X1M U93 (.Y(n89), 
	.B1(n193), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][4] ));
   OAI2BB2X1M U94 (.Y(n90), 
	.B1(n192), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][5] ));
   OAI2BB2X1M U95 (.Y(n91), 
	.B1(n191), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][6] ));
   OAI2BB2X1M U96 (.Y(n92), 
	.B1(n190), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[7][7] ));
   OAI2BB2X1M U97 (.Y(n101), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][0] ));
   OAI2BB2X1M U98 (.Y(n102), 
	.B1(n78), 
	.B0(n196), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][1] ));
   OAI2BB2X1M U99 (.Y(n103), 
	.B1(n78), 
	.B0(n195), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][2] ));
   OAI2BB2X1M U100 (.Y(n104), 
	.B1(n78), 
	.B0(n194), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][3] ));
   OAI2BB2X1M U101 (.Y(n105), 
	.B1(n78), 
	.B0(n193), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][4] ));
   OAI2BB2X1M U102 (.Y(n106), 
	.B1(n78), 
	.B0(n192), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][5] ));
   OAI2BB2X1M U103 (.Y(n107), 
	.B1(n78), 
	.B0(n191), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][6] ));
   OAI2BB2X1M U104 (.Y(n108), 
	.B1(n78), 
	.B0(n190), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[5][7] ));
   OAI2BB2X1M U105 (.Y(n141), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][0] ));
   OAI2BB2X1M U106 (.Y(n142), 
	.B1(n84), 
	.B0(n196), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][1] ));
   OAI2BB2X1M U107 (.Y(n143), 
	.B1(n84), 
	.B0(n195), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][2] ));
   OAI2BB2X1M U108 (.Y(n144), 
	.B1(n84), 
	.B0(n194), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][3] ));
   OAI2BB2X1M U109 (.Y(n145), 
	.B1(n84), 
	.B0(n193), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][4] ));
   OAI2BB2X1M U110 (.Y(n146), 
	.B1(n84), 
	.B0(n192), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][5] ));
   OAI2BB2X1M U111 (.Y(n147), 
	.B1(n84), 
	.B0(n191), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][6] ));
   OAI2BB2X1M U112 (.Y(n148), 
	.B1(n84), 
	.B0(n190), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[0][7] ));
   OAI2BB2X1M U113 (.Y(n109), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][0] ));
   OAI2BB2X1M U114 (.Y(n110), 
	.B1(n79), 
	.B0(n196), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][1] ));
   OAI2BB2X1M U115 (.Y(n111), 
	.B1(n79), 
	.B0(n195), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][2] ));
   OAI2BB2X1M U116 (.Y(n112), 
	.B1(n79), 
	.B0(n194), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][3] ));
   OAI2BB2X1M U117 (.Y(n113), 
	.B1(n79), 
	.B0(n193), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][4] ));
   OAI2BB2X1M U118 (.Y(n114), 
	.B1(n79), 
	.B0(n192), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][5] ));
   OAI2BB2X1M U119 (.Y(n115), 
	.B1(n79), 
	.B0(n191), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][6] ));
   OAI2BB2X1M U120 (.Y(n116), 
	.B1(n79), 
	.B0(n190), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[4][7] ));
   INVX2M U121 (.Y(n197), 
	.A(wdata[0]));
   INVX2M U122 (.Y(n196), 
	.A(wdata[1]));
   INVX2M U123 (.Y(n195), 
	.A(wdata[2]));
   INVX2M U124 (.Y(n194), 
	.A(wdata[3]));
   INVX2M U125 (.Y(n193), 
	.A(wdata[4]));
   INVX2M U126 (.Y(n192), 
	.A(wdata[5]));
   INVX2M U127 (.Y(n191), 
	.A(wdata[6]));
   INVX2M U128 (.Y(n190), 
	.A(wdata[7]));
   OAI2BB2X1M U129 (.Y(n93), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][0] ));
   OAI2BB2X1M U130 (.Y(n94), 
	.B1(n77), 
	.B0(n196), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][1] ));
   OAI2BB2X1M U131 (.Y(n95), 
	.B1(n77), 
	.B0(n195), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][2] ));
   OAI2BB2X1M U132 (.Y(n96), 
	.B1(n77), 
	.B0(n194), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][3] ));
   OAI2BB2X1M U133 (.Y(n97), 
	.B1(n77), 
	.B0(n193), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][4] ));
   OAI2BB2X1M U134 (.Y(n98), 
	.B1(n77), 
	.B0(n192), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][5] ));
   OAI2BB2X1M U135 (.Y(n99), 
	.B1(n77), 
	.B0(n191), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][6] ));
   OAI2BB2X1M U136 (.Y(n100), 
	.B1(n77), 
	.B0(n190), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[6][7] ));
   OAI2BB2X1M U137 (.Y(n117), 
	.B1(n80), 
	.B0(n197), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][0] ));
   OAI2BB2X1M U138 (.Y(n118), 
	.B1(n80), 
	.B0(n196), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][1] ));
   OAI2BB2X1M U139 (.Y(n119), 
	.B1(n80), 
	.B0(n195), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][2] ));
   OAI2BB2X1M U140 (.Y(n120), 
	.B1(n80), 
	.B0(n194), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][3] ));
   OAI2BB2X1M U141 (.Y(n121), 
	.B1(n80), 
	.B0(n193), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][4] ));
   OAI2BB2X1M U142 (.Y(n122), 
	.B1(n80), 
	.B0(n192), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][5] ));
   OAI2BB2X1M U143 (.Y(n123), 
	.B1(n80), 
	.B0(n191), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][6] ));
   OAI2BB2X1M U144 (.Y(n124), 
	.B1(n80), 
	.B0(n190), 
	.A1N(n80), 
	.A0N(\FIFO_MEM[3][7] ));
   OAI2BB2X1M U145 (.Y(n125), 
	.B1(n82), 
	.B0(n197), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][0] ));
   OAI2BB2X1M U146 (.Y(n126), 
	.B1(n82), 
	.B0(n196), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][1] ));
   OAI2BB2X1M U147 (.Y(n127), 
	.B1(n82), 
	.B0(n195), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][2] ));
   OAI2BB2X1M U148 (.Y(n128), 
	.B1(n82), 
	.B0(n194), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][3] ));
   OAI2BB2X1M U149 (.Y(n129), 
	.B1(n82), 
	.B0(n193), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][4] ));
   OAI2BB2X1M U150 (.Y(n130), 
	.B1(n82), 
	.B0(n192), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][5] ));
   OAI2BB2X1M U151 (.Y(n131), 
	.B1(n82), 
	.B0(n191), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][6] ));
   OAI2BB2X1M U152 (.Y(n132), 
	.B1(n82), 
	.B0(n190), 
	.A1N(n82), 
	.A0N(\FIFO_MEM[2][7] ));
   OAI2BB2X1M U153 (.Y(n133), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][0] ));
   OAI2BB2X1M U154 (.Y(n134), 
	.B1(n83), 
	.B0(n196), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][1] ));
   OAI2BB2X1M U155 (.Y(n135), 
	.B1(n83), 
	.B0(n195), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][2] ));
   OAI2BB2X1M U156 (.Y(n136), 
	.B1(n83), 
	.B0(n194), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][3] ));
   OAI2BB2X1M U157 (.Y(n137), 
	.B1(n83), 
	.B0(n193), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][4] ));
   OAI2BB2X1M U158 (.Y(n138), 
	.B1(n83), 
	.B0(n192), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][5] ));
   OAI2BB2X1M U159 (.Y(n139), 
	.B1(n83), 
	.B0(n191), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][6] ));
   OAI2BB2X1M U160 (.Y(n140), 
	.B1(n83), 
	.B0(n190), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[1][7] ));
   AND2X2M U161 (.Y(n76), 
	.B(waddr[2]), 
	.A(winc));
   NAND3X2M U162 (.Y(n77), 
	.C(waddr[1]), 
	.B(n198), 
	.A(n76));
   NAND3X2M U163 (.Y(n80), 
	.C(n81), 
	.B(waddr[0]), 
	.A(waddr[1]));
   NAND3X2M U164 (.Y(n82), 
	.C(n81), 
	.B(n198), 
	.A(waddr[1]));
   NAND3X2M U165 (.Y(n83), 
	.C(n81), 
	.B(n199), 
	.A(waddr[0]));
   INVX2M U166 (.Y(n177), 
	.A(N10));
   INVX2M U167 (.Y(n199), 
	.A(waddr[1]));
   INVX2M U168 (.Y(n198), 
	.A(waddr[0]));
   AO22X1M U169 (.Y(n65), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][0] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][0] ));
   AOI221XLM U170 (.Y(n68), 
	.C0(n65), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][0] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][0] ));
   AO22X1M U171 (.Y(n66), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][0] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][0] ));
   AOI221XLM U172 (.Y(n67), 
	.C0(n66), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][0] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][0] ));
   OAI22X1M U173 (.Y(rdata[0]), 
	.B1(n67), 
	.B0(N10), 
	.A1(n68), 
	.A0(n177));
   AO22X1M U174 (.Y(n69), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][1] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][1] ));
   AOI221XLM U175 (.Y(n72), 
	.C0(n69), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][1] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][1] ));
   AO22X1M U176 (.Y(n70), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][1] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][1] ));
   AOI221XLM U177 (.Y(n71), 
	.C0(n70), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][1] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][1] ));
   OAI22X1M U178 (.Y(rdata[1]), 
	.B1(n71), 
	.B0(N10), 
	.A1(n72), 
	.A0(n177));
   AO22X1M U179 (.Y(n73), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][2] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][2] ));
   AOI221XLM U180 (.Y(n150), 
	.C0(n73), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][2] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][2] ));
   AO22X1M U181 (.Y(n74), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][2] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][2] ));
   AOI221XLM U182 (.Y(n149), 
	.C0(n74), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][2] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][2] ));
   OAI22X1M U183 (.Y(rdata[2]), 
	.B1(n149), 
	.B0(N10), 
	.A1(n150), 
	.A0(n177));
   AO22X1M U184 (.Y(n151), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][3] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][3] ));
   AOI221XLM U185 (.Y(n154), 
	.C0(n151), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][3] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][3] ));
   AO22X1M U186 (.Y(n152), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][3] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][3] ));
   AOI221XLM U187 (.Y(n153), 
	.C0(n152), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][3] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][3] ));
   OAI22X1M U188 (.Y(rdata[3]), 
	.B1(n153), 
	.B0(N10), 
	.A1(n154), 
	.A0(n177));
   AO22X1M U189 (.Y(n155), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][4] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][4] ));
   AOI221XLM U190 (.Y(n158), 
	.C0(n155), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][4] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][4] ));
   AO22X1M U191 (.Y(n156), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][4] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][4] ));
   AOI221XLM U192 (.Y(n157), 
	.C0(n156), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][4] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][4] ));
   OAI22X1M U193 (.Y(rdata[4]), 
	.B1(n157), 
	.B0(N10), 
	.A1(n158), 
	.A0(n177));
   AO22X1M U194 (.Y(n159), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][5] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][5] ));
   AOI221XLM U195 (.Y(n162), 
	.C0(n159), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][5] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][5] ));
   AO22X1M U196 (.Y(n160), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][5] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][5] ));
   AOI221XLM U197 (.Y(n161), 
	.C0(n160), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][5] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][5] ));
   OAI22X1M U198 (.Y(rdata[5]), 
	.B1(n161), 
	.B0(N10), 
	.A1(n162), 
	.A0(n177));
   AO22X1M U199 (.Y(n163), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][6] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][6] ));
   AOI221XLM U200 (.Y(n166), 
	.C0(n163), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][6] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][6] ));
   AO22X1M U201 (.Y(n164), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][6] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][6] ));
   AOI221XLM U202 (.Y(n165), 
	.C0(n164), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][6] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][6] ));
   OAI22X1M U203 (.Y(rdata[6]), 
	.B1(n165), 
	.B0(N10), 
	.A1(n166), 
	.A0(n177));
   AO22X1M U204 (.Y(n167), 
	.B1(n168), 
	.B0(\FIFO_MEM[1][7] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[3][7] ));
   AOI221XLM U205 (.Y(n174), 
	.C0(n167), 
	.B1(n171), 
	.B0(\FIFO_MEM[7][7] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[5][7] ));
   AO22X1M U206 (.Y(n170), 
	.B1(n168), 
	.B0(\FIFO_MEM[0][7] ), 
	.A1(n169), 
	.A0(\FIFO_MEM[2][7] ));
   AOI221XLM U207 (.Y(n173), 
	.C0(n170), 
	.B1(n171), 
	.B0(\FIFO_MEM[6][7] ), 
	.A1(n172), 
	.A0(\FIFO_MEM[4][7] ));
   OAI22X1M U208 (.Y(rdata[7]), 
	.B1(n173), 
	.B0(N10), 
	.A1(n177), 
	.A0(n174));
   INVXLM U209 (.Y(n203), 
	.A(test_se));
   INVX2M U210 (.Y(n204), 
	.A(n203));
   INVX2M U211 (.Y(n205), 
	.A(n203));
   INVX2M U212 (.Y(n206), 
	.A(n203));
   INVX2M U213 (.Y(n207), 
	.A(n203));
endmodule

module DF_SYNC_test_0 (
	CLK, 
	RST_N, 
	UN_SYNC_IN_Reg, 
	SYNC_OUT_D, 
	test_si, 
	test_se);
   input CLK;
   input RST_N;
   input [3:0] UN_SYNC_IN_Reg;
   output [3:0] SYNC_OUT_D;
   input test_si;
   input test_se;

   // Internal wires
   wire \SYNC_OUT[0][3] ;
   wire \SYNC_OUT[0][2] ;
   wire \SYNC_OUT[0][1] ;
   wire \SYNC_OUT[0][0] ;

   SDFFRQX2M \SYNC_OUT_reg[1][1]  (.SI(SYNC_OUT_D[0]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[1]), 
	.D(\SYNC_OUT[0][1] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][0]  (.SI(\SYNC_OUT[0][3] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[0]), 
	.D(\SYNC_OUT[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][3]  (.SI(SYNC_OUT_D[2]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[3]), 
	.D(\SYNC_OUT[0][3] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][2]  (.SI(SYNC_OUT_D[1]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[2]), 
	.D(\SYNC_OUT[0][2] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][3]  (.SI(\SYNC_OUT[0][2] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][3] ), 
	.D(UN_SYNC_IN_Reg[3]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][2]  (.SI(\SYNC_OUT[0][1] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][2] ), 
	.D(UN_SYNC_IN_Reg[2]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][1]  (.SI(\SYNC_OUT[0][0] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][1] ), 
	.D(UN_SYNC_IN_Reg[1]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][0] ), 
	.D(UN_SYNC_IN_Reg[0]), 
	.CK(CLK));
endmodule

module DF_SYNC_test_1 (
	CLK, 
	RST_N, 
	UN_SYNC_IN_Reg, 
	SYNC_OUT_D, 
	test_si, 
	test_se);
   input CLK;
   input RST_N;
   input [3:0] UN_SYNC_IN_Reg;
   output [3:0] SYNC_OUT_D;
   input test_si;
   input test_se;

   // Internal wires
   wire \SYNC_OUT[0][3] ;
   wire \SYNC_OUT[0][2] ;
   wire \SYNC_OUT[0][1] ;
   wire \SYNC_OUT[0][0] ;

   SDFFRQX2M \SYNC_OUT_reg[1][3]  (.SI(SYNC_OUT_D[2]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[3]), 
	.D(\SYNC_OUT[0][3] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][2]  (.SI(SYNC_OUT_D[1]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[2]), 
	.D(\SYNC_OUT[0][2] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][1]  (.SI(SYNC_OUT_D[0]), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[1]), 
	.D(\SYNC_OUT[0][1] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[1][0]  (.SI(\SYNC_OUT[0][3] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(SYNC_OUT_D[0]), 
	.D(\SYNC_OUT[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][3]  (.SI(\SYNC_OUT[0][2] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][3] ), 
	.D(UN_SYNC_IN_Reg[3]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][2]  (.SI(\SYNC_OUT[0][1] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][2] ), 
	.D(UN_SYNC_IN_Reg[2]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][1]  (.SI(\SYNC_OUT[0][0] ), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][1] ), 
	.D(UN_SYNC_IN_Reg[1]), 
	.CK(CLK));
   SDFFRQX2M \SYNC_OUT_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST_N), 
	.Q(\SYNC_OUT[0][0] ), 
	.D(UN_SYNC_IN_Reg[0]), 
	.CK(CLK));
endmodule

module FIFO_WR_test_1 (
	wclk, 
	wrst_n, 
	winc, 
	rptr_gray_sync, 
	waddr, 
	wptr_gray, 
	wfull, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_RST_SYNC_1_M, 
	REF_CLK_M__L5_N9);
   input wclk;
   input wrst_n;
   input winc;
   input [3:0] rptr_gray_sync;
   output [2:0] waddr;
   output [3:0] wptr_gray;
   output wfull;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_RST_SYNC_1_M;
   input REF_CLK_M__L5_N9;

   // Internal wires
   wire \wr_ptr[3] ;
   wire n10;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n9;
   wire [3:0] wr_ptr_next;
   wire [2:0] wptr_gray_next;

   assign test_so = \wr_ptr[3]  ;

   SDFFRQX2M \wr_ptr_reg[3]  (.SI(waddr[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SYNC_1_M), 
	.Q(\wr_ptr[3] ), 
	.D(wr_ptr_next[3]), 
	.CK(wclk));
   SDFFRQX2M \wr_ptr_reg[2]  (.SI(waddr[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SYNC_1_M), 
	.Q(waddr[2]), 
	.D(n9), 
	.CK(REF_CLK_M__L5_N9));
   SDFFRQX2M \wr_ptr_reg[0]  (.SI(wptr_gray[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SYNC_1_M), 
	.Q(waddr[0]), 
	.D(wr_ptr_next[0]), 
	.CK(wclk));
   SDFFRQX2M \wr_ptr_reg[1]  (.SI(waddr[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_RST_SYNC_1_M), 
	.Q(waddr[1]), 
	.D(wr_ptr_next[1]), 
	.CK(wclk));
   SDFFRQX2M \wptr_gray_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_gray[0]), 
	.D(wptr_gray_next[0]), 
	.CK(wclk));
   SDFFRQX2M \wptr_gray_reg[1]  (.SI(wptr_gray[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_gray[1]), 
	.D(wptr_gray_next[1]), 
	.CK(wclk));
   SDFFRQX2M \wptr_gray_reg[3]  (.SI(wptr_gray[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_gray[3]), 
	.D(wr_ptr_next[3]), 
	.CK(wclk));
   SDFFRQX2M \wptr_gray_reg[2]  (.SI(wptr_gray[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr_gray[2]), 
	.D(wptr_gray_next[2]), 
	.CK(wclk));
   XNOR2X2M U11 (.Y(n9), 
	.B(waddr[2]), 
	.A(n13));
   INVX2M U12 (.Y(wfull), 
	.A(n15));
   NAND2X2M U13 (.Y(n14), 
	.B(n15), 
	.A(winc));
   CLKXOR2X2M U14 (.Y(wptr_gray_next[1]), 
	.B(wr_ptr_next[1]), 
	.A(n9));
   CLKXOR2X2M U15 (.Y(wptr_gray_next[2]), 
	.B(n9), 
	.A(wr_ptr_next[3]));
   CLKXOR2X2M U16 (.Y(wptr_gray_next[0]), 
	.B(wr_ptr_next[0]), 
	.A(wr_ptr_next[1]));
   XNOR2X2M U17 (.Y(wr_ptr_next[3]), 
	.B(\wr_ptr[3] ), 
	.A(n10));
   NAND3X2M U18 (.Y(n10), 
	.C(waddr[2]), 
	.B(n11), 
	.A(waddr[1]));
   NOR2BX2M U19 (.Y(n11), 
	.B(n14), 
	.AN(waddr[0]));
   XNOR2X2M U20 (.Y(wr_ptr_next[0]), 
	.B(waddr[0]), 
	.A(n14));
   NAND4X2M U21 (.Y(n15), 
	.D(n19), 
	.C(n18), 
	.B(n17), 
	.A(n16));
   XNOR2X2M U22 (.Y(n16), 
	.B(rptr_gray_sync[1]), 
	.A(wptr_gray[1]));
   XNOR2X2M U23 (.Y(n17), 
	.B(rptr_gray_sync[0]), 
	.A(wptr_gray[0]));
   CLKXOR2X2M U24 (.Y(n18), 
	.B(rptr_gray_sync[3]), 
	.A(wptr_gray[3]));
   CLKXOR2X2M U25 (.Y(wr_ptr_next[1]), 
	.B(waddr[1]), 
	.A(n11));
   CLKXOR2X2M U26 (.Y(n19), 
	.B(rptr_gray_sync[2]), 
	.A(wptr_gray[2]));
   NAND2X2M U27 (.Y(n13), 
	.B(n11), 
	.A(waddr[1]));
endmodule

module FIFO_RD_test_1 (
	rclk, 
	rrst_n, 
	rinc, 
	wptr_gray_sync, 
	raddr, 
	gray_rd_ptr, 
	rempty, 
	test_si, 
	test_so, 
	test_se);
   input rclk;
   input rrst_n;
   input rinc;
   input [3:0] wptr_gray_sync;
   output [2:0] raddr;
   output [3:0] gray_rd_ptr;
   output rempty;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \rd_ptr[3] ;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] rd_ptr_next;
   wire [2:0] gray_rd_ptr_next;

   assign test_so = \rd_ptr[3]  ;

   SDFFRQX2M \rd_ptr_reg[3]  (.SI(raddr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(\rd_ptr[3] ), 
	.D(rd_ptr_next[3]), 
	.CK(rclk));
   SDFFRQX2M \gray_rd_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[0]), 
	.D(gray_rd_ptr_next[0]), 
	.CK(rclk));
   SDFFRQX2M \gray_rd_ptr_reg[3]  (.SI(gray_rd_ptr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[3]), 
	.D(rd_ptr_next[3]), 
	.CK(rclk));
   SDFFRQX2M \gray_rd_ptr_reg[2]  (.SI(gray_rd_ptr[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[2]), 
	.D(gray_rd_ptr_next[2]), 
	.CK(rclk));
   SDFFRQX2M \gray_rd_ptr_reg[1]  (.SI(gray_rd_ptr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(gray_rd_ptr[1]), 
	.D(gray_rd_ptr_next[1]), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[0]  (.SI(gray_rd_ptr[3]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[0]), 
	.D(rd_ptr_next[0]), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(raddr[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[2]), 
	.D(rd_ptr_next[2]), 
	.CK(rclk));
   SDFFRQX2M \rd_ptr_reg[1]  (.SI(raddr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(raddr[1]), 
	.D(rd_ptr_next[1]), 
	.CK(rclk));
   CLKXOR2X2M U12 (.Y(gray_rd_ptr_next[1]), 
	.B(rd_ptr_next[1]), 
	.A(rd_ptr_next[2]));
   CLKXOR2X2M U13 (.Y(gray_rd_ptr_next[0]), 
	.B(rd_ptr_next[0]), 
	.A(rd_ptr_next[1]));
   CLKXOR2X2M U14 (.Y(gray_rd_ptr_next[2]), 
	.B(rd_ptr_next[2]), 
	.A(rd_ptr_next[3]));
   XNOR2X2M U15 (.Y(n17), 
	.B(gray_rd_ptr[2]), 
	.A(wptr_gray_sync[2]));
   NAND4X2M U16 (.Y(rempty), 
	.D(n17), 
	.C(n16), 
	.B(n15), 
	.A(n14));
   XNOR2X2M U17 (.Y(n14), 
	.B(gray_rd_ptr[1]), 
	.A(wptr_gray_sync[1]));
   XNOR2X2M U18 (.Y(n15), 
	.B(gray_rd_ptr[0]), 
	.A(wptr_gray_sync[0]));
   XNOR2X2M U19 (.Y(n16), 
	.B(gray_rd_ptr[3]), 
	.A(wptr_gray_sync[3]));
   XNOR2X2M U20 (.Y(rd_ptr_next[2]), 
	.B(raddr[2]), 
	.A(n12));
   NAND2X2M U21 (.Y(n12), 
	.B(n11), 
	.A(raddr[1]));
   XNOR2X2M U22 (.Y(rd_ptr_next[3]), 
	.B(\rd_ptr[3] ), 
	.A(n10));
   NAND3X2M U23 (.Y(n10), 
	.C(raddr[2]), 
	.B(n11), 
	.A(raddr[1]));
   NOR2BX2M U24 (.Y(n11), 
	.B(n13), 
	.AN(raddr[0]));
   XNOR2X2M U25 (.Y(rd_ptr_next[0]), 
	.B(raddr[0]), 
	.A(n13));
   NAND2X2M U26 (.Y(n13), 
	.B(rempty), 
	.A(rinc));
   CLKXOR2X2M U27 (.Y(rd_ptr_next[1]), 
	.B(n11), 
	.A(raddr[1]));
endmodule

module ASYNC_FIFO_test_1 (
	wclk, 
	rclk, 
	wrst_n, 
	rrst_n, 
	winc, 
	rinc, 
	wdata, 
	wfull, 
	rempty, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	REF_CLK_M__L5_N12, 
	REF_CLK_M__L5_N13, 
	REF_CLK_M__L5_N8, 
	REF_CLK_M__L5_N9);
   input wclk;
   input rclk;
   input wrst_n;
   input rrst_n;
   input winc;
   input rinc;
   input [7:0] wdata;
   output wfull;
   output rempty;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input REF_CLK_M__L5_N12;
   input REF_CLK_M__L5_N13;
   input REF_CLK_M__L5_N8;
   input REF_CLK_M__L5_N9;

   // Internal wires
   wire FE_OFN3_RST_SYNC_1_M;
   wire _1_net_;
   wire n5;
   wire n6;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] gray_rptr;
   wire [3:0] wq2_rptr;
   wire [3:0] gray_wptr;
   wire [3:0] rq2_wptr;

   CLKBUFX8M FE_OFC3_RST_SYNC_1_M (.Y(FE_OFN3_RST_SYNC_1_M), 
	.A(wrst_n));
   NOR2BX2M U1 (.Y(_1_net_), 
	.B(wfull), 
	.AN(winc));
   FIFO_MEM_CNTRL_test_1 U_FIFO_MEM (.wclk(wclk), 
	.wrst_n(FE_OFN3_RST_SYNC_1_M), 
	.winc(_1_net_), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.wdata({ wdata[7],
		wdata[6],
		wdata[5],
		wdata[4],
		wdata[3],
		wdata[2],
		wdata[1],
		wdata[0] }), 
	.rdata({ rdata[7],
		rdata[6],
		rdata[5],
		rdata[4],
		rdata[3],
		rdata[2],
		rdata[1],
		rdata[0] }), 
	.test_si2(test_si2), 
	.test_si1(rq2_wptr[3]), 
	.test_so2(n6), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.REF_CLK_M__L5_N12(REF_CLK_M__L5_N12), 
	.REF_CLK_M__L5_N13(REF_CLK_M__L5_N13), 
	.REF_CLK_M__L5_N9(REF_CLK_M__L5_N9));
   DF_SYNC_test_0 U0_R2W (.CLK(REF_CLK_M__L5_N8), 
	.RST_N(wrst_n), 
	.UN_SYNC_IN_Reg({ gray_rptr[3],
		gray_rptr[2],
		gray_rptr[1],
		gray_rptr[0] }), 
	.SYNC_OUT_D({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(test_si1), 
	.test_se(test_se));
   DF_SYNC_test_1 U0_W2R (.CLK(rclk), 
	.RST_N(rrst_n), 
	.UN_SYNC_IN_Reg({ gray_wptr[3],
		gray_wptr[2],
		gray_wptr[1],
		gray_wptr[0] }), 
	.SYNC_OUT_D({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(wq2_rptr[3]), 
	.test_se(test_se));
   FIFO_WR_test_1 U_FIFO_WR (.wclk(REF_CLK_M__L5_N8), 
	.wrst_n(wrst_n), 
	.winc(winc), 
	.rptr_gray_sync({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.wptr_gray({ gray_wptr[3],
		gray_wptr[2],
		gray_wptr[1],
		gray_wptr[0] }), 
	.wfull(wfull), 
	.test_si(n5), 
	.test_so(test_so2), 
	.test_se(test_se), 
	.FE_OFN3_RST_SYNC_1_M(FE_OFN3_RST_SYNC_1_M), 
	.REF_CLK_M__L5_N9(REF_CLK_M__L5_N9));
   FIFO_RD_test_1 U_FIFO_RD (.rclk(rclk), 
	.rrst_n(rrst_n), 
	.rinc(rinc), 
	.wptr_gray_sync({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.gray_rd_ptr({ gray_rptr[3],
		gray_rptr[2],
		gray_rptr[1],
		gray_rptr[0] }), 
	.rempty(rempty), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(test_se));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   input test_se;

   // Internal wires
   wire LVL_SIG_D;
   wire N1;

   SDFFRQX2M LVL_SIG_D_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(LVL_SIG_D), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX2M PULSE_SIG_reg (.SI(LVL_SIG_D), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PULSE_SIG), 
	.D(N1), 
	.CK(CLK));
   NOR2BX2M U5 (.Y(N1), 
	.B(LVL_SIG_D), 
	.AN(LVL_SIG));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	UART_RX_DATA, 
	UART_RX_VLD, 
	RF_RdData, 
	RF_RdData_VLD, 
	ALU_OUT, 
	OUT_VALID, 
	FIFO_FULL, 
	RF_WrEn, 
	RF_RdEn, 
	RF_Address, 
	RF_WrData, 
	ALU_FUN, 
	ALU_EN, 
	UART_TX_DATA, 
	UART_TX_VLD, 
	CLKG_EN, 
	CLKDIV_EN, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_RST_SYNC_1_M, 
	FE_OFN1_RST_SYNC_1_M, 
	REF_CLK_M__L5_N6, 
	REF_CLK_M__L5_N7);
   input CLK;
   input RST;
   input [7:0] UART_RX_DATA;
   input UART_RX_VLD;
   input [7:0] RF_RdData;
   input RF_RdData_VLD;
   input [15:0] ALU_OUT;
   input OUT_VALID;
   input FIFO_FULL;
   output RF_WrEn;
   output RF_RdEn;
   output [3:0] RF_Address;
   output [7:0] RF_WrData;
   output [3:0] ALU_FUN;
   output ALU_EN;
   output [7:0] UART_TX_DATA;
   output UART_TX_VLD;
   output CLKG_EN;
   output CLKDIV_EN;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_RST_SYNC_1_M;
   input FE_OFN1_RST_SYNC_1_M;
   input REF_CLK_M__L5_N6;
   input REF_CLK_M__L5_N7;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire n2;
   wire n3;
   wire n6;
   wire n14;
   wire n15;
   wire n16;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n54;
   wire n55;
   wire n57;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n86;
   wire n88;
   wire n90;
   wire n92;
   wire n94;
   wire n96;
   wire n98;
   wire n100;
   wire n102;
   wire n104;
   wire n106;
   wire n108;
   wire n110;
   wire n112;
   wire n114;
   wire n116;
   wire n118;
   wire n120;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n12;
   wire n13;
   wire n17;
   wire n18;
   wire n22;
   wire n24;
   wire n26;
   wire n38;
   wire n46;
   wire n47;
   wire n53;
   wire n56;
   wire n58;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire [3:0] current_state;
   wire [7:0] stored_rd_data;
   wire [15:0] stored_alu_out;

   assign test_so = stored_rd_data[7] ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M \stored_rd_data_reg[7]  (.SI(stored_rd_data[6]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[7]), 
	.D(n132), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[6]  (.SI(stored_rd_data[5]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[6]), 
	.D(n130), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[5]  (.SI(stored_rd_data[4]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[5]), 
	.D(n128), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[4]  (.SI(stored_rd_data[3]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[4]), 
	.D(n126), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[3]  (.SI(stored_rd_data[2]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[3]), 
	.D(n124), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[2]  (.SI(stored_rd_data[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[2]), 
	.D(n122), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[1]  (.SI(stored_rd_data[0]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[1]), 
	.D(n120), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_rd_data_reg[0]  (.SI(stored_alu_out[15]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_rd_data[0]), 
	.D(n118), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRQX2M \stored_alu_out_reg[7]  (.SI(stored_alu_out[6]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[7]), 
	.D(n100), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[6]  (.SI(stored_alu_out[5]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[6]), 
	.D(n98), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[5]  (.SI(stored_alu_out[4]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[5]), 
	.D(n96), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[4]  (.SI(stored_alu_out[3]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[4]), 
	.D(n94), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[3]  (.SI(stored_alu_out[2]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[3]), 
	.D(n92), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[2]  (.SI(stored_alu_out[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[2]), 
	.D(n90), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[1]  (.SI(stored_alu_out[0]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[1]), 
	.D(n88), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[0]  (.SI(n155), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[0]), 
	.D(n86), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[15]  (.SI(stored_alu_out[14]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(stored_alu_out[15]), 
	.D(n116), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[14]  (.SI(stored_alu_out[13]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(stored_alu_out[14]), 
	.D(n114), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[13]  (.SI(stored_alu_out[12]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(stored_alu_out[13]), 
	.D(n112), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[12]  (.SI(stored_alu_out[11]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[12]), 
	.D(n110), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[11]  (.SI(stored_alu_out[10]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[11]), 
	.D(n108), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[10]  (.SI(stored_alu_out[9]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[10]), 
	.D(n106), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[9]  (.SI(stored_alu_out[8]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[9]), 
	.D(n104), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRQX2M \stored_alu_out_reg[8]  (.SI(stored_alu_out[7]), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.Q(stored_alu_out[8]), 
	.D(n102), 
	.CK(REF_CLK_M__L5_N6));
   SDFFRX1M \stored_addr_reg[3]  (.SI(n156), 
	.SE(test_se), 
	.RN(FE_OFN0_RST_SYNC_1_M), 
	.QN(n58), 
	.Q(n155), 
	.D(n144), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRX1M \stored_addr_reg[2]  (.SI(n157), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n77), 
	.Q(n156), 
	.D(n143), 
	.CK(CLK));
   SDFFRX1M \stored_addr_reg[1]  (.SI(n158), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n78), 
	.Q(n157), 
	.D(n142), 
	.CK(REF_CLK_M__L5_N7));
   SDFFRX1M \stored_addr_reg[0]  (.SI(current_state[3]), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n79), 
	.Q(n158), 
	.D(n141), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(current_state[3]), 
	.D(n145), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(current_state[0]), 
	.D(n148), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(current_state[1]), 
	.D(n146), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(FE_OFN1_RST_SYNC_1_M), 
	.Q(current_state[2]), 
	.D(n147), 
	.CK(CLK));
   NOR2X2M U5 (.Y(RF_Address[2]), 
	.B(n77), 
	.A(n72));
   NOR2X2M U6 (.Y(RF_Address[1]), 
	.B(n78), 
	.A(n72));
   NOR2X2M U7 (.Y(ALU_EN), 
	.B(n152), 
	.A(n48));
   NOR2X2M U8 (.Y(ALU_FUN[1]), 
	.B(n22), 
	.A(n150));
   NOR2BX2M U10 (.Y(RF_WrData[7]), 
	.B(RF_WrEn), 
	.AN(UART_RX_DATA[7]));
   OAI31X1M U11 (.Y(n27), 
	.B0(n31), 
	.A2(n54), 
	.A1(n82), 
	.A0(n52));
   INVX2M U13 (.Y(n17), 
	.A(n59));
   NOR2X2M U14 (.Y(UART_TX_VLD), 
	.B(n59), 
	.A(FIFO_FULL));
   INVX2M U15 (.Y(n46), 
	.A(n36));
   INVX2M U16 (.Y(n22), 
	.A(ALU_EN));
   OAI21X2M U18 (.Y(RF_Address[0]), 
	.B0(n36), 
	.A1(n79), 
	.A0(n72));
   NOR3X2M U19 (.Y(n59), 
	.C(n20), 
	.B(n61), 
	.A(n62));
   NOR2X2M U20 (.Y(RF_Address[3]), 
	.B(n58), 
	.A(n72));
   AND2X2M U21 (.Y(n20), 
	.B(n73), 
	.A(n49));
   NAND2X2M U22 (.Y(n28), 
	.B(n50), 
	.A(n74));
   NAND2X2M U23 (.Y(n48), 
	.B(n51), 
	.A(n73));
   AOI21X2M U24 (.Y(n23), 
	.B0(CLKG_EN), 
	.A1(n51), 
	.A0(n56));
   NOR2X2M U25 (.Y(n49), 
	.B(n24), 
	.A(n47));
   NAND2X2M U26 (.Y(n36), 
	.B(n74), 
	.A(n73));
   NAND2X2M U27 (.Y(CLKG_EN), 
	.B(n37), 
	.A(n48));
   AND2X2M U28 (.Y(n41), 
	.B(n74), 
	.A(n14));
   INVX2M U29 (.Y(n38), 
	.A(n74));
   AND2X2M U30 (.Y(n32), 
	.B(n14), 
	.A(n49));
   NOR3X2M U32 (.Y(n61), 
	.C(n56), 
	.B(n53), 
	.A(n38));
   OAI222X1M U33 (.Y(n146), 
	.C1(n47), 
	.C0(n13), 
	.B1(n25), 
	.B0(n80), 
	.A1(n16), 
	.A0(n23));
   INVX2M U34 (.Y(n80), 
	.A(n27));
   NOR2X2M U35 (.Y(RF_WrData[0]), 
	.B(RF_WrEn), 
	.A(n151));
   NOR2X2M U36 (.Y(RF_WrData[1]), 
	.B(RF_WrEn), 
	.A(n150));
   NOR2X2M U37 (.Y(RF_WrData[3]), 
	.B(RF_WrEn), 
	.A(n84));
   NOR2X2M U38 (.Y(RF_WrData[4]), 
	.B(RF_WrEn), 
	.A(n83));
   NOR2X2M U39 (.Y(RF_WrData[5]), 
	.B(RF_WrEn), 
	.A(n82));
   NOR2X2M U40 (.Y(RF_WrData[6]), 
	.B(RF_WrEn), 
	.A(n81));
   NOR2X2M U41 (.Y(RF_WrData[2]), 
	.B(RF_WrEn), 
	.A(n149));
   OAI221X1M U42 (.Y(n145), 
	.C0(n19), 
	.B1(n56), 
	.B0(n13), 
	.A1(n16), 
	.A0(n15));
   NOR4X1M U43 (.Y(n15), 
	.D(n46), 
	.C(n21), 
	.B(n20), 
	.A(CLKG_EN));
   NAND2X2M U44 (.Y(n3), 
	.B(n51), 
	.A(n50));
   INVX2M U45 (.Y(n13), 
	.A(n16));
   AND2X2M U46 (.Y(n21), 
	.B(n50), 
	.A(n49));
   OAI2BB1X2M U47 (.Y(n45), 
	.B0(n36), 
	.A1N(n49), 
	.A0N(n56));
   INVX2M U48 (.Y(n12), 
	.A(n25));
   OAI22X1M U50 (.Y(n144), 
	.B1(n84), 
	.B0(n6), 
	.A1(n58), 
	.A0(n26));
   OAI22X1M U51 (.Y(n142), 
	.B1(n150), 
	.B0(n6), 
	.A1(n78), 
	.A0(n26));
   OAI22X1M U52 (.Y(n141), 
	.B1(n151), 
	.B0(n6), 
	.A1(n79), 
	.A0(n26));
   OAI22X1M U53 (.Y(n143), 
	.B1(n149), 
	.B0(n6), 
	.A1(n77), 
	.A0(n26));
   INVX2M U54 (.Y(n26), 
	.A(n6));
   NOR2X2M U55 (.Y(ALU_FUN[2]), 
	.B(n22), 
	.A(n149));
   NOR2X2M U56 (.Y(ALU_FUN[3]), 
	.B(n22), 
	.A(n84));
   NOR2X2M U57 (.Y(ALU_FUN[0]), 
	.B(n22), 
	.A(n151));
   INVX2M U58 (.Y(n153), 
	.A(OUT_VALID));
   AND3X2M U60 (.Y(n72), 
	.C(n76), 
	.B(n23), 
	.A(n75));
   NOR4X1M U61 (.Y(n76), 
	.D(RF_RdEn), 
	.C(n71), 
	.B(n32), 
	.A(n41));
   AOI21X2M U62 (.Y(n75), 
	.B0(n17), 
	.A1(n38), 
	.A0(current_state[3]));
   INVX2M U63 (.Y(RF_RdEn), 
	.A(n28));
   NOR2X2M U64 (.Y(n50), 
	.B(current_state[3]), 
	.A(n53));
   INVX2M U65 (.Y(n53), 
	.A(current_state[2]));
   NOR3BX2M U67 (.Y(n62), 
	.C(n47), 
	.B(current_state[0]), 
	.AN(n50));
   NOR2X2M U68 (.Y(n74), 
	.B(current_state[0]), 
	.A(current_state[1]));
   NOR2X2M U69 (.Y(n73), 
	.B(current_state[2]), 
	.A(n56));
   NOR2X2M U70 (.Y(n51), 
	.B(current_state[1]), 
	.A(n24));
   NOR2X2M U71 (.Y(n14), 
	.B(current_state[3]), 
	.A(current_state[2]));
   AND3X2M U72 (.Y(n71), 
	.C(current_state[1]), 
	.B(n24), 
	.A(n14));
   NAND3X2M U73 (.Y(n37), 
	.C(current_state[1]), 
	.B(n24), 
	.A(n73));
   INVX2M U74 (.Y(n24), 
	.A(current_state[0]));
   INVX2M U75 (.Y(n56), 
	.A(current_state[3]));
   INVX2M U76 (.Y(n47), 
	.A(current_state[1]));
   OAI31X4M U77 (.Y(RF_WrEn), 
	.B0(UART_RX_VLD), 
	.A2(n21), 
	.A1(n71), 
	.A0(n46));
   NAND4X2M U78 (.Y(n147), 
	.D(n30), 
	.C(n29), 
	.B(n3), 
	.A(n28));
   OAI21X2M U79 (.Y(n29), 
	.B0(n13), 
	.A1(n20), 
	.A0(n32));
   AOI2BB2XLM U80 (.Y(n30), 
	.B1(n16), 
	.B0(current_state[2]), 
	.A1N(n25), 
	.A0N(n31));
   OAI211X2M U81 (.Y(n16), 
	.C0(n43), 
	.B0(n42), 
	.A1(n3), 
	.A0(RF_RdData_VLD));
   OAI31X1M U82 (.Y(n42), 
	.B0(n152), 
	.A2(n18), 
	.A1(n14), 
	.A0(n45));
   AOI2BB2XLM U83 (.Y(n43), 
	.B1(n17), 
	.B0(FIFO_FULL), 
	.A1N(OUT_VALID), 
	.A0N(n37));
   INVX2M U84 (.Y(n18), 
	.A(n48));
   NAND4X2M U85 (.Y(n19), 
	.D(n39), 
	.C(UART_RX_DATA[6]), 
	.B(n12), 
	.A(UART_RX_DATA[4]));
   NOR4X1M U86 (.Y(n39), 
	.D(n149), 
	.C(n151), 
	.B(UART_RX_DATA[1]), 
	.A(UART_RX_DATA[5]));
   NAND4X2M U87 (.Y(n25), 
	.D(UART_RX_DATA[3]), 
	.C(n13), 
	.B(n41), 
	.A(UART_RX_DATA[7]));
   NOR2X2M U88 (.Y(UART_TX_DATA[0]), 
	.B(n69), 
	.A(FIFO_FULL));
   AOI222X1M U89 (.Y(n69), 
	.C1(stored_rd_data[0]), 
	.C0(n62), 
	.B1(stored_alu_out[0]), 
	.B0(n20), 
	.A1(stored_alu_out[8]), 
	.A0(n61));
   NOR2X2M U90 (.Y(UART_TX_DATA[1]), 
	.B(n68), 
	.A(FIFO_FULL));
   AOI222X1M U91 (.Y(n68), 
	.C1(stored_rd_data[1]), 
	.C0(n62), 
	.B1(stored_alu_out[1]), 
	.B0(n20), 
	.A1(stored_alu_out[9]), 
	.A0(n61));
   NOR2X2M U92 (.Y(UART_TX_DATA[2]), 
	.B(n67), 
	.A(FIFO_FULL));
   AOI222X1M U93 (.Y(n67), 
	.C1(stored_rd_data[2]), 
	.C0(n62), 
	.B1(stored_alu_out[2]), 
	.B0(n20), 
	.A1(stored_alu_out[10]), 
	.A0(n61));
   NOR2X2M U94 (.Y(UART_TX_DATA[3]), 
	.B(n66), 
	.A(FIFO_FULL));
   AOI222X1M U95 (.Y(n66), 
	.C1(stored_rd_data[3]), 
	.C0(n62), 
	.B1(stored_alu_out[3]), 
	.B0(n20), 
	.A1(stored_alu_out[11]), 
	.A0(n61));
   NOR2X2M U96 (.Y(UART_TX_DATA[4]), 
	.B(n65), 
	.A(FIFO_FULL));
   AOI222X1M U97 (.Y(n65), 
	.C1(stored_rd_data[4]), 
	.C0(n62), 
	.B1(stored_alu_out[4]), 
	.B0(n20), 
	.A1(stored_alu_out[12]), 
	.A0(n61));
   NOR2X2M U98 (.Y(UART_TX_DATA[5]), 
	.B(n64), 
	.A(FIFO_FULL));
   AOI222X1M U99 (.Y(n64), 
	.C1(stored_rd_data[5]), 
	.C0(n62), 
	.B1(stored_alu_out[5]), 
	.B0(n20), 
	.A1(stored_alu_out[13]), 
	.A0(n61));
   NOR2X2M U100 (.Y(UART_TX_DATA[6]), 
	.B(n63), 
	.A(FIFO_FULL));
   AOI222X1M U101 (.Y(n63), 
	.C1(stored_rd_data[6]), 
	.C0(n62), 
	.B1(stored_alu_out[6]), 
	.B0(n20), 
	.A1(stored_alu_out[14]), 
	.A0(n61));
   NOR2X2M U102 (.Y(UART_TX_DATA[7]), 
	.B(n60), 
	.A(FIFO_FULL));
   AOI222X1M U103 (.Y(n60), 
	.C1(stored_rd_data[7]), 
	.C0(n62), 
	.B1(stored_alu_out[7]), 
	.B0(n20), 
	.A1(stored_alu_out[15]), 
	.A0(n61));
   NAND3X2M U104 (.Y(n148), 
	.C(n34), 
	.B(n19), 
	.A(n33));
   AOI21X2M U105 (.Y(n34), 
	.B0(n35), 
	.A1(n16), 
	.A0(current_state[0]));
   OAI21X2M U106 (.Y(n33), 
	.B0(n12), 
	.A1(n27), 
	.A0(n40));
   AOI31X2M U107 (.Y(n35), 
	.B0(n16), 
	.A2(n28), 
	.A1(n37), 
	.A0(n36));
   NAND3X2M U108 (.Y(n52), 
	.C(UART_RX_DATA[0]), 
	.B(n81), 
	.A(n149));
   NAND2X2M U109 (.Y(n54), 
	.B(UART_RX_DATA[1]), 
	.A(UART_RX_DATA[4]));
   NOR4X1M U110 (.Y(n40), 
	.D(n150), 
	.C(UART_RX_DATA[0]), 
	.B(n82), 
	.A(n57));
   NAND3X2M U111 (.Y(n57), 
	.C(n149), 
	.B(n81), 
	.A(n83));
   NOR2BX2M U112 (.Y(n2), 
	.B(n3), 
	.AN(RF_RdData_VLD));
   NAND3X2M U113 (.Y(n6), 
	.C(UART_RX_VLD), 
	.B(current_state[0]), 
	.A(n14));
   INVX2M U114 (.Y(n149), 
	.A(UART_RX_DATA[2]));
   INVX2M U115 (.Y(n151), 
	.A(UART_RX_DATA[0]));
   INVX2M U116 (.Y(n150), 
	.A(UART_RX_DATA[1]));
   NAND4X2M U117 (.Y(n31), 
	.D(n55), 
	.C(UART_RX_DATA[6]), 
	.B(n151), 
	.A(UART_RX_DATA[2]));
   NOR3X2M U118 (.Y(n55), 
	.C(UART_RX_DATA[4]), 
	.B(UART_RX_DATA[5]), 
	.A(UART_RX_DATA[1]));
   INVX2M U119 (.Y(n82), 
	.A(UART_RX_DATA[5]));
   INVX2M U120 (.Y(n81), 
	.A(UART_RX_DATA[6]));
   INVX2M U121 (.Y(n83), 
	.A(UART_RX_DATA[4]));
   INVX2M U122 (.Y(n84), 
	.A(UART_RX_DATA[3]));
   INVX2M U123 (.Y(n152), 
	.A(UART_RX_VLD));
   AO2B2X2M U124 (.Y(n118), 
	.B1(n2), 
	.B0(RF_RdData[0]), 
	.A1N(n2), 
	.A0(stored_rd_data[0]));
   AO2B2X2M U125 (.Y(n120), 
	.B1(n2), 
	.B0(RF_RdData[1]), 
	.A1N(n2), 
	.A0(stored_rd_data[1]));
   AO2B2X2M U126 (.Y(n122), 
	.B1(n2), 
	.B0(RF_RdData[2]), 
	.A1N(n2), 
	.A0(stored_rd_data[2]));
   AO2B2X2M U127 (.Y(n124), 
	.B1(n2), 
	.B0(RF_RdData[3]), 
	.A1N(n2), 
	.A0(stored_rd_data[3]));
   AO2B2X2M U128 (.Y(n126), 
	.B1(n2), 
	.B0(RF_RdData[4]), 
	.A1N(n2), 
	.A0(stored_rd_data[4]));
   AO2B2X2M U129 (.Y(n128), 
	.B1(n2), 
	.B0(RF_RdData[5]), 
	.A1N(n2), 
	.A0(stored_rd_data[5]));
   AO2B2X2M U130 (.Y(n130), 
	.B1(n2), 
	.B0(RF_RdData[6]), 
	.A1N(n2), 
	.A0(stored_rd_data[6]));
   AO2B2X2M U131 (.Y(n132), 
	.B1(n2), 
	.B0(RF_RdData[7]), 
	.A1N(n2), 
	.A0(stored_rd_data[7]));
   AO22X1M U132 (.Y(n86), 
	.B1(ALU_OUT[0]), 
	.B0(OUT_VALID), 
	.A1(stored_alu_out[0]), 
	.A0(n153));
   AO22X1M U133 (.Y(n88), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[1]), 
	.A1(stored_alu_out[1]), 
	.A0(n153));
   AO22X1M U134 (.Y(n90), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[2]), 
	.A1(stored_alu_out[2]), 
	.A0(n153));
   AO22X1M U135 (.Y(n92), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[3]), 
	.A1(stored_alu_out[3]), 
	.A0(n153));
   AO22X1M U136 (.Y(n94), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[4]), 
	.A1(stored_alu_out[4]), 
	.A0(n153));
   AO22X1M U137 (.Y(n96), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[5]), 
	.A1(stored_alu_out[5]), 
	.A0(n153));
   AO22X1M U138 (.Y(n98), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[6]), 
	.A1(stored_alu_out[6]), 
	.A0(n153));
   AO22X1M U139 (.Y(n100), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[7]), 
	.A1(stored_alu_out[7]), 
	.A0(n153));
   AO22X1M U140 (.Y(n102), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[8]), 
	.A1(stored_alu_out[8]), 
	.A0(n153));
   AO22X1M U141 (.Y(n104), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[9]), 
	.A1(stored_alu_out[9]), 
	.A0(n153));
   AO22X1M U142 (.Y(n106), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[10]), 
	.A1(stored_alu_out[10]), 
	.A0(n153));
   AO22X1M U143 (.Y(n108), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[11]), 
	.A1(stored_alu_out[11]), 
	.A0(n153));
   AO22X1M U176 (.Y(n110), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[12]), 
	.A1(stored_alu_out[12]), 
	.A0(n153));
   AO22X1M U177 (.Y(n112), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[13]), 
	.A1(stored_alu_out[13]), 
	.A0(n153));
   AO22X1M U178 (.Y(n114), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[14]), 
	.A1(stored_alu_out[14]), 
	.A0(n153));
   AO22X1M U179 (.Y(n116), 
	.B1(OUT_VALID), 
	.B0(ALU_OUT[15]), 
	.A1(stored_alu_out[15]), 
	.A0(n153));
   INVX2M U3 (.Y(CLKDIV_EN), 
	.A(LTIE_LTIELO_NET));
endmodule

module Parity_Calc_test_1 (
	clk, 
	rst_n, 
	P_DATA, 
	DATA_VALID, 
	PAR_TYP, 
	PAR_EN, 
	par_bit, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_TYP;
   input PAR_EN;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(par_bit), 
	.D(n8), 
	.CK(clk));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XNOR2X2M U4 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_bit));
   NAND2X2M U6 (.Y(n2), 
	.B(DATA_VALID), 
	.A(PAR_EN));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(PAR_TYP), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
endmodule

module serializer_test_1 (
	clk, 
	rst_n, 
	P_DATA, 
	ser_en, 
	Data_Valid, 
	ser_data, 
	ser_done, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input [7:0] P_DATA;
   input ser_en;
   input Data_Valid;
   output ser_data;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N1;
   wire N2;
   wire N3;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n12;
   wire n13;
   wire n14;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n39;
   wire n40;
   wire [7:0] data_reg;

   assign test_so = data_reg[7] ;

   SDFFRQX2M \data_reg_reg[7]  (.SI(data_reg[6]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[7]), 
	.D(n27), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[5]  (.SI(data_reg[4]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[5]), 
	.D(n25), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[3]  (.SI(data_reg[2]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[3]), 
	.D(n23), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[1]  (.SI(data_reg[0]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[1]), 
	.D(n21), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[6]  (.SI(data_reg[5]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[6]), 
	.D(n26), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[4]  (.SI(data_reg[3]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[4]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[2]  (.SI(data_reg[1]), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[2]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \data_reg_reg[0]  (.SI(N3), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(data_reg[0]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(N2), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(N3), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(N1), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(N2), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(n40), 
	.RN(rst_n), 
	.Q(N1), 
	.D(n30), 
	.CK(clk));
   INVX2M U14 (.Y(n34), 
	.A(Data_Valid));
   NAND2X2M U15 (.Y(n16), 
	.B(n34), 
	.A(ser_en));
   OAI2BB1X2M U16 (.Y(n19), 
	.B0(n34), 
	.A1N(ser_en), 
	.A0N(n15));
   NOR2BX2M U17 (.Y(ser_done), 
	.B(n15), 
	.AN(ser_en));
   OAI32X1M U18 (.Y(n28), 
	.B1(n36), 
	.B0(n17), 
	.A2(n35), 
	.A1(N2), 
	.A0(n16));
   OAI31X1M U19 (.Y(n29), 
	.B0(n18), 
	.A2(n36), 
	.A1(n35), 
	.A0(n16));
   OAI2BB1X2M U20 (.Y(n18), 
	.B0(N3), 
	.A1N(n17), 
	.A0N(n16));
   OA21X2M U21 (.Y(n17), 
	.B0(n19), 
	.A1(n16), 
	.A0(N1));
   AO22X1M U22 (.Y(n27), 
	.B1(n34), 
	.B0(data_reg[7]), 
	.A1(Data_Valid), 
	.A0(P_DATA[7]));
   AO22X1M U23 (.Y(n26), 
	.B1(n34), 
	.B0(data_reg[6]), 
	.A1(Data_Valid), 
	.A0(P_DATA[6]));
   AO22X1M U24 (.Y(n22), 
	.B1(n34), 
	.B0(data_reg[2]), 
	.A1(Data_Valid), 
	.A0(P_DATA[2]));
   AO22X1M U25 (.Y(n23), 
	.B1(n34), 
	.B0(data_reg[3]), 
	.A1(Data_Valid), 
	.A0(P_DATA[3]));
   AO22X1M U26 (.Y(n20), 
	.B1(n34), 
	.B0(data_reg[0]), 
	.A1(Data_Valid), 
	.A0(P_DATA[0]));
   AO22X1M U27 (.Y(n21), 
	.B1(n34), 
	.B0(data_reg[1]), 
	.A1(Data_Valid), 
	.A0(P_DATA[1]));
   AO22X1M U28 (.Y(n24), 
	.B1(n34), 
	.B0(data_reg[4]), 
	.A1(Data_Valid), 
	.A0(P_DATA[4]));
   AO22X1M U29 (.Y(n25), 
	.B1(n34), 
	.B0(data_reg[5]), 
	.A1(Data_Valid), 
	.A0(P_DATA[5]));
   OAI22X1M U30 (.Y(n30), 
	.B1(n16), 
	.B0(N1), 
	.A1(n19), 
	.A0(n35));
   NAND3X2M U31 (.Y(n15), 
	.C(N3), 
	.B(N1), 
	.A(N2));
   INVX2M U32 (.Y(n35), 
	.A(N1));
   INVX2M U33 (.Y(n36), 
	.A(N2));
   AOI22X1M U34 (.Y(n13), 
	.B1(N1), 
	.B0(data_reg[3]), 
	.A1(n35), 
	.A0(data_reg[2]));
   AOI22X1M U35 (.Y(n12), 
	.B1(N1), 
	.B0(data_reg[1]), 
	.A1(n35), 
	.A0(data_reg[0]));
   OA22X1M U36 (.Y(n33), 
	.B1(n12), 
	.B0(N2), 
	.A1(n13), 
	.A0(n36));
   AOI22X1M U37 (.Y(n31), 
	.B1(N1), 
	.B0(data_reg[7]), 
	.A1(n35), 
	.A0(data_reg[6]));
   AOI22X1M U38 (.Y(n14), 
	.B1(N1), 
	.B0(data_reg[5]), 
	.A1(n35), 
	.A0(data_reg[4]));
   OAI22X1M U39 (.Y(n32), 
	.B1(n14), 
	.B0(N2), 
	.A1(n36), 
	.A0(n31));
   OAI2BB2X1M U40 (.Y(ser_data), 
	.B1(N3), 
	.B0(n33), 
	.A1N(n32), 
	.A0N(N3));
   INVXLM U41 (.Y(n39), 
	.A(test_se));
   CLKINVX2M U42 (.Y(n40), 
	.A(n39));
endmodule

module FSM_test_1 (
	clk, 
	rst_n, 
	DATA_VALID, 
	ser_done, 
	PAR_EN, 
	ser_en, 
	mux_sel, 
	Busy, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input DATA_VALID;
   input ser_done;
   input PAR_EN;
   output ser_en;
   output [1:0] mux_sel;
   output Busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [2:0] current_state;

   assign test_so = current_state[2] ;

   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[0]), 
	.D(n21), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[1]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[2]), 
	.D(n20), 
	.CK(clk));
   AND2X2M U6 (.Y(n11), 
	.B(n6), 
	.A(n14));
   INVX2M U7 (.Y(ser_en), 
	.A(n10));
   INVX2M U8 (.Y(n6), 
	.A(ser_done));
   OAI31X1M U9 (.Y(n21), 
	.B0(n16), 
	.A2(n10), 
	.A1(n9), 
	.A0(n6));
   NAND3X2M U10 (.Y(n16), 
	.C(DATA_VALID), 
	.B(n8), 
	.A(n17));
   OAI211X2M U11 (.Y(Busy), 
	.C0(mux_sel[0]), 
	.B0(n19), 
	.A1(n8), 
	.A0(current_state[2]));
   NAND3X2M U12 (.Y(n19), 
	.C(current_state[2]), 
	.B(n8), 
	.A(n7));
   INVX2M U13 (.Y(mux_sel[0]), 
	.A(n13));
   NOR2X2M U14 (.Y(n13), 
	.B(current_state[2]), 
	.A(n7));
   NOR2X2M U15 (.Y(n17), 
	.B(current_state[2]), 
	.A(n13));
   INVX2M U16 (.Y(n8), 
	.A(current_state[1]));
   NAND2X2M U17 (.Y(n10), 
	.B(n17), 
	.A(current_state[1]));
   INVX2M U18 (.Y(n5), 
	.A(n15));
   AOI221XLM U19 (.Y(n15), 
	.C0(n11), 
	.B1(PAR_EN), 
	.B0(n14), 
	.A1(n13), 
	.A0(n8));
   INVX2M U20 (.Y(n7), 
	.A(current_state[0]));
   NOR3X2M U21 (.Y(n14), 
	.C(n8), 
	.B(current_state[2]), 
	.A(current_state[0]));
   NOR2X2M U22 (.Y(n20), 
	.B(n12), 
	.A(n11));
   AOI22X1M U23 (.Y(n12), 
	.B1(n9), 
	.B0(n14), 
	.A1(n13), 
	.A0(current_state[1]));
   INVX2M U24 (.Y(n9), 
	.A(PAR_EN));
   NAND2BX2M U25 (.Y(mux_sel[1]), 
	.B(n18), 
	.AN(current_state[2]));
   CLKXOR2X2M U26 (.Y(n18), 
	.B(current_state[0]), 
	.A(current_state[1]));
endmodule

module TX_MUX (
	mux_sel, 
	par_bit, 
	ser_data, 
	start_bit, 
	stop_bit, 
	TX_OUT);
   input [1:0] mux_sel;
   input par_bit;
   input ser_data;
   input start_bit;
   input stop_bit;
   output TX_OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_OFN5_UART_TX_OUT;
   wire n2;
   wire n3;
   wire n1;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC5_UART_TX_OUT (.Y(TX_OUT), 
	.A(FE_OFN5_UART_TX_OUT));
   INVX2M U1 (.Y(n1), 
	.A(mux_sel[0]));
   OAI2B2X1M U2 (.Y(FE_OFN5_UART_TX_OUT), 
	.B1(n3), 
	.B0(mux_sel[1]), 
	.A1N(mux_sel[1]), 
	.A0(n2));
   AOI22X1M U3 (.Y(n3), 
	.B1(mux_sel[0]), 
	.B0(ser_data), 
	.A1(n1), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U4 (.Y(n2), 
	.B1(mux_sel[0]), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n1), 
	.A0(par_bit));
endmodule

module UART_TX_test_1 (
	P_DATA, 
	clk, 
	rst_n, 
	DATA_VALID, 
	PAR_EN, 
	PAR_TYP, 
	TX_OUT, 
	Busy, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input clk;
   input rst_n;
   input DATA_VALID;
   input PAR_EN;
   input PAR_TYP;
   output TX_OUT;
   output Busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire DATA_LOAD;
   wire par_bit;
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire n3;
   wire [1:0] mux_sel;

   NOR2BX2M U3 (.Y(DATA_LOAD), 
	.B(Busy), 
	.AN(DATA_VALID));
   Parity_Calc_test_1 parity_calc_inst (.clk(clk), 
	.rst_n(rst_n), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.DATA_VALID(DATA_LOAD), 
	.PAR_TYP(PAR_TYP), 
	.PAR_EN(PAR_EN), 
	.par_bit(par_bit), 
	.test_si(n3), 
	.test_se(test_se));
   serializer_test_1 serializer_inst (.clk(clk), 
	.rst_n(rst_n), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.Data_Valid(DATA_LOAD), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(par_bit), 
	.test_so(test_so), 
	.test_se(test_se));
   FSM_test_1 fsm_inst (.clk(clk), 
	.rst_n(rst_n), 
	.DATA_VALID(DATA_VALID), 
	.ser_done(ser_done), 
	.PAR_EN(PAR_EN), 
	.ser_en(ser_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.Busy(Busy), 
	.test_si(test_si), 
	.test_so(n3), 
	.test_se(test_se));
   TX_MUX tx_mux_inst (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.par_bit(par_bit), 
	.ser_data(ser_data), 
	.start_bit(1'b0), 
	.stop_bit(1'b1), 
	.TX_OUT(TX_OUT));
endmodule

module edge_bit_counter_test_1 (
	clk, 
	rst_n, 
	enable, 
	PAR_EN, 
	Prescale, 
	bit_cnt, 
	edge_cnt, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input enable;
   input PAR_EN;
   input [5:0] Prescale;
   output [3:0] bit_cnt;
   output [5:0] edge_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire \add_88/carry[5] ;
   wire \add_88/carry[4] ;
   wire \add_88/carry[3] ;
   wire \add_88/carry[2] ;
   wire n1;
   wire n2;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire [5:0] edge_cnt_next;

   SDFFRQX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(bit_cnt[3]), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(bit_cnt[2]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(bit_cnt[1]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[5]  (.SI(edge_cnt[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[5]), 
	.D(edge_cnt_next[5]), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(bit_cnt[0]), 
	.D(n31), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(bit_cnt[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[0]), 
	.D(edge_cnt_next[0]), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[3]), 
	.D(edge_cnt_next[3]), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[2]), 
	.D(edge_cnt_next[2]), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[4]), 
	.D(edge_cnt_next[4]), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(edge_cnt[1]), 
	.D(edge_cnt_next[1]), 
	.CK(clk));
   INVX2M U7 (.Y(n39), 
	.A(n21));
   NOR2X2M U14 (.Y(n21), 
	.B(N14), 
	.A(n40));
   AND2X2M U15 (.Y(edge_cnt_next[1]), 
	.B(n21), 
	.A(N37));
   AND2X2M U16 (.Y(edge_cnt_next[2]), 
	.B(n21), 
	.A(N38));
   AND2X2M U17 (.Y(edge_cnt_next[3]), 
	.B(n21), 
	.A(N39));
   AND2X2M U18 (.Y(edge_cnt_next[4]), 
	.B(n21), 
	.A(N40));
   INVX2M U19 (.Y(n40), 
	.A(enable));
   OAI32X1M U20 (.Y(n28), 
	.B1(n43), 
	.B0(n20), 
	.A2(n19), 
	.A1(bit_cnt[3]), 
	.A0(n18));
   AOI2B1X1M U21 (.Y(n20), 
	.B0(n21), 
	.A1N(n18), 
	.A0(n19));
   NAND3X2M U22 (.Y(n19), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   OAI22X1M U23 (.Y(n31), 
	.B1(n18), 
	.B0(bit_cnt[0]), 
	.A1(n39), 
	.A0(n41));
   OAI22X1M U24 (.Y(n30), 
	.B1(n18), 
	.B0(n24), 
	.A1(n39), 
	.A0(n42));
   XNOR2X2M U25 (.Y(n24), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[0]));
   NAND3X2M U26 (.Y(n18), 
	.C(enable), 
	.B(n39), 
	.A(n25));
   OAI2B2X1M U27 (.Y(n25), 
	.B1(n27), 
	.B0(PAR_EN), 
	.A1N(PAR_EN), 
	.A0(n26));
   NOR4X1M U28 (.Y(n26), 
	.D(n42), 
	.C(n43), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[2]));
   NOR4X1M U29 (.Y(n27), 
	.D(n43), 
	.C(n41), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   OR2X2M U30 (.Y(n1), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   NOR2X2M U31 (.Y(n29), 
	.B(n40), 
	.A(n22));
   CLKXOR2X2M U32 (.Y(n22), 
	.B(bit_cnt[2]), 
	.A(n23));
   NAND3X2M U33 (.Y(n23), 
	.C(N14), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   INVX2M U34 (.Y(n15), 
	.A(Prescale[3]));
   AND2X2M U35 (.Y(edge_cnt_next[5]), 
	.B(n21), 
	.A(N41));
   AND2X2M U36 (.Y(edge_cnt_next[0]), 
	.B(n21), 
	.A(N36));
   INVX2M U37 (.Y(n41), 
	.A(bit_cnt[0]));
   INVX2M U38 (.Y(n42), 
	.A(bit_cnt[1]));
   INVX2M U39 (.Y(n43), 
	.A(bit_cnt[3]));
   ADDHX1M U40 (.S(N37), 
	.CO(\add_88/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U41 (.S(N38), 
	.CO(\add_88/carry[3] ), 
	.B(\add_88/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U42 (.S(N39), 
	.CO(\add_88/carry[4] ), 
	.B(\add_88/carry[3] ), 
	.A(edge_cnt[3]));
   ADDHX1M U43 (.S(N40), 
	.CO(\add_88/carry[5] ), 
	.B(\add_88/carry[4] ), 
	.A(edge_cnt[4]));
   CLKINVX1M U44 (.Y(N8), 
	.A(Prescale[0]));
   OAI2BB1X1M U45 (.Y(N9), 
	.B0(n1), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   NOR2X1M U46 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   AO21XLM U47 (.Y(N10), 
	.B0(n2), 
	.A1(Prescale[2]), 
	.A0(n1));
   CLKNAND2X2M U48 (.Y(n13), 
	.B(n15), 
	.A(n2));
   OAI21X1M U49 (.Y(N11), 
	.B0(n13), 
	.A1(n15), 
	.A0(n2));
   XNOR2X1M U50 (.Y(N12), 
	.B(n13), 
	.A(Prescale[4]));
   NOR2X1M U51 (.Y(n14), 
	.B(n13), 
	.A(Prescale[4]));
   CLKXOR2X2M U52 (.Y(N13), 
	.B(n14), 
	.A(Prescale[5]));
   CLKINVX1M U53 (.Y(N36), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U54 (.Y(N41), 
	.B(edge_cnt[5]), 
	.A(\add_88/carry[5] ));
   NOR2BX1M U55 (.Y(n16), 
	.B(N8), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U56 (.Y(n34), 
	.B1(n16), 
	.B0(edge_cnt[1]), 
	.A1N(N9), 
	.A0(n16));
   NOR2BX1M U57 (.Y(n17), 
	.B(edge_cnt[0]), 
	.AN(N8));
   OAI2B2X1M U58 (.Y(n33), 
	.B1(n17), 
	.B0(N9), 
	.A1N(edge_cnt[1]), 
	.A0(n17));
   XNOR2X1M U59 (.Y(n32), 
	.B(edge_cnt[5]), 
	.A(N13));
   NAND3X1M U60 (.Y(n38), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   CLKXOR2X2M U61 (.Y(n37), 
	.B(edge_cnt[4]), 
	.A(N12));
   CLKXOR2X2M U62 (.Y(n36), 
	.B(edge_cnt[2]), 
	.A(N10));
   CLKXOR2X2M U63 (.Y(n35), 
	.B(edge_cnt[3]), 
	.A(N11));
   NOR4X1M U64 (.Y(N14), 
	.D(n35), 
	.C(n36), 
	.B(n37), 
	.A(n38));
endmodule

module data_sampling_test_1 (
	clk, 
	rst_n, 
	data_samp_en, 
	Prescale, 
	edge_cnt, 
	RX_IN, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input data_samp_en;
   input [5:0] Prescale;
   input [5:0] edge_cnt;
   input RX_IN;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire n26;
   wire n27;
   wire \add_41/carry[4] ;
   wire \add_41/carry[3] ;
   wire \add_41/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire [1:0] samples;

   assign test_so = samples[1] ;

   SDFFRQX2M \samples_reg[1]  (.SI(samples[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(samples[1]), 
	.D(n40), 
	.CK(clk));
   SDFFRQX2M \samples_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(samples[0]), 
	.D(n27), 
	.CK(clk));
   SDFFRQX2M sampled_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(sampled_bit), 
	.D(n26), 
	.CK(clk));
   OR2X2M U4 (.Y(n1), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U5 (.S(N14), 
	.CO(\add_41/carry[3] ), 
	.B(\add_41/carry[2] ), 
	.A(Prescale[3]));
   ADDHX1M U6 (.S(N15), 
	.CO(\add_41/carry[4] ), 
	.B(\add_41/carry[3] ), 
	.A(Prescale[4]));
   ADDHX1M U7 (.S(N13), 
	.CO(\add_41/carry[2] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U8 (.S(N16), 
	.CO(N17), 
	.B(\add_41/carry[4] ), 
	.A(Prescale[5]));
   CLKINVX1M U11 (.Y(N4), 
	.A(Prescale[1]));
   OAI2BB1X1M U12 (.Y(N5), 
	.B0(n1), 
	.A1N(Prescale[2]), 
	.A0N(Prescale[1]));
   OR2X1M U13 (.Y(n2), 
	.B(Prescale[3]), 
	.A(n1));
   OAI2BB1X1M U14 (.Y(N6), 
	.B0(n2), 
	.A1N(Prescale[3]), 
	.A0N(n1));
   XNOR2X1M U15 (.Y(N7), 
	.B(n2), 
	.A(Prescale[4]));
   NOR3X1M U16 (.Y(N9), 
	.C(n2), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   OAI21X1M U17 (.Y(n3), 
	.B0(Prescale[5]), 
	.A1(n2), 
	.A0(Prescale[4]));
   NAND2BX1M U18 (.Y(N8), 
	.B(n3), 
	.AN(N9));
   NOR2X1M U19 (.Y(n40), 
	.B(n5), 
	.A(n4));
   MXI2X1M U20 (.Y(n5), 
	.S0(n6), 
	.B(RX_IN), 
	.A(samples[1]));
   NOR2X1M U21 (.Y(n6), 
	.B(n8), 
	.A(n7));
   NOR2X1M U22 (.Y(n27), 
	.B(n9), 
	.A(n4));
   MXI2X1M U23 (.Y(n9), 
	.S0(n7), 
	.B(RX_IN), 
	.A(samples[0]));
   NOR2X1M U24 (.Y(n26), 
	.B(n10), 
	.A(n4));
   MXI2X1M U25 (.Y(n10), 
	.S0(n15), 
	.B(n14), 
	.A(sampled_bit));
   NOR4BX1M U26 (.Y(n15), 
	.D(n7), 
	.C(n17), 
	.B(n16), 
	.AN(n8));
   AND4X1M U27 (.Y(n7), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   NOR3X1M U28 (.Y(n21), 
	.C(n24), 
	.B(n23), 
	.A(n22));
   CLKXOR2X2M U29 (.Y(n24), 
	.B(N8), 
	.A(edge_cnt[4]));
   CLKXOR2X2M U30 (.Y(n23), 
	.B(N5), 
	.A(edge_cnt[1]));
   CLKXOR2X2M U31 (.Y(n22), 
	.B(N4), 
	.A(edge_cnt[0]));
   XNOR2X1M U32 (.Y(n20), 
	.B(N6), 
	.A(edge_cnt[2]));
   XNOR2X1M U33 (.Y(n19), 
	.B(N7), 
	.A(edge_cnt[3]));
   XNOR2X1M U34 (.Y(n18), 
	.B(N9), 
	.A(edge_cnt[5]));
   CLKNAND2X2M U35 (.Y(n17), 
	.B(n28), 
	.A(n25));
   XNOR2X1M U36 (.Y(n28), 
	.B(N16), 
	.A(edge_cnt[4]));
   XNOR2X1M U37 (.Y(n25), 
	.B(N4), 
	.A(edge_cnt[0]));
   NAND4X1M U38 (.Y(n16), 
	.D(n32), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   XNOR2X1M U39 (.Y(n32), 
	.B(N13), 
	.A(edge_cnt[1]));
   XNOR2X1M U40 (.Y(n31), 
	.B(N17), 
	.A(edge_cnt[5]));
   XNOR2X1M U41 (.Y(n30), 
	.B(N14), 
	.A(edge_cnt[2]));
   XNOR2X1M U42 (.Y(n29), 
	.B(N15), 
	.A(edge_cnt[3]));
   NAND4X1M U43 (.Y(n8), 
	.D(n36), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   NOR3X1M U44 (.Y(n36), 
	.C(n38), 
	.B(edge_cnt[5]), 
	.A(n37));
   CLKXOR2X2M U45 (.Y(n38), 
	.B(Prescale[1]), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U46 (.Y(n37), 
	.B(Prescale[5]), 
	.A(edge_cnt[4]));
   XNOR2X1M U47 (.Y(n35), 
	.B(Prescale[3]), 
	.A(edge_cnt[2]));
   XNOR2X1M U48 (.Y(n34), 
	.B(Prescale[4]), 
	.A(edge_cnt[3]));
   XNOR2X1M U49 (.Y(n33), 
	.B(Prescale[2]), 
	.A(edge_cnt[1]));
   OAI2BB1X1M U50 (.Y(n14), 
	.B0(n39), 
	.A1N(samples[0]), 
	.A0N(RX_IN));
   OAI21X1M U51 (.Y(n39), 
	.B0(samples[1]), 
	.A1(samples[0]), 
	.A0(RX_IN));
   CLKINVX1M U52 (.Y(n4), 
	.A(data_samp_en));
endmodule

module deserializer_test_1 (
	clk, 
	rst_n, 
	deser_en, 
	sampled_bit, 
	P_DATA, 
	test_si, 
	test_se);
   input clk;
   input rst_n;
   input deser_en;
   input sampled_bit;
   output [7:0] P_DATA;
   input test_si;
   input test_se;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;

   SDFFRQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[7]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[0]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[5]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[1]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[4]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[3]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[6]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(P_DATA[2]), 
	.D(n14), 
	.CK(clk));
   INVX2M U2 (.Y(n2), 
	.A(deser_en));
   OAI22X1M U3 (.Y(n12), 
	.B1(n25), 
	.B0(deser_en), 
	.A1(n8), 
	.A0(n2));
   OAI22X1M U4 (.Y(n14), 
	.B1(n8), 
	.B0(deser_en), 
	.A1(n7), 
	.A0(n2));
   OAI22X1M U5 (.Y(n16), 
	.B1(n7), 
	.B0(deser_en), 
	.A1(n6), 
	.A0(n2));
   OAI22X1M U6 (.Y(n18), 
	.B1(n6), 
	.B0(deser_en), 
	.A1(n5), 
	.A0(n2));
   OAI22X1M U7 (.Y(n20), 
	.B1(n5), 
	.B0(deser_en), 
	.A1(n4), 
	.A0(n2));
   OAI22X1M U8 (.Y(n22), 
	.B1(n4), 
	.B0(deser_en), 
	.A1(n3), 
	.A0(n2));
   OAI2BB2X1M U10 (.Y(n24), 
	.B1(n3), 
	.B0(deser_en), 
	.A1N(deser_en), 
	.A0N(sampled_bit));
   OAI2BB2X1M U11 (.Y(n10), 
	.B1(n2), 
	.B0(n25), 
	.A1N(n2), 
	.A0N(P_DATA[0]));
   INVX2M U12 (.Y(n8), 
	.A(P_DATA[2]));
   INVX2M U13 (.Y(n4), 
	.A(P_DATA[6]));
   INVX2M U14 (.Y(n3), 
	.A(P_DATA[7]));
   INVX2M U15 (.Y(n7), 
	.A(P_DATA[3]));
   INVX2M U16 (.Y(n25), 
	.A(P_DATA[1]));
   INVX2M U17 (.Y(n6), 
	.A(P_DATA[4]));
   INVX2M U26 (.Y(n5), 
	.A(P_DATA[5]));
endmodule

module start_check (
	strt_chk_en, 
	sampled_bit, 
	strt_glitch);
   input strt_chk_en;
   input sampled_bit;
   output strt_glitch;

   AND2X2M U2 (.Y(strt_glitch), 
	.B(sampled_bit), 
	.A(strt_chk_en));
endmodule

module parity_check (
	par_chk_en, 
	P_DATA, 
	sampled_bit, 
	PAR_TYP, 
	par_err);
   input par_chk_en;
   input [7:0] P_DATA;
   input sampled_bit;
   input PAR_TYP;
   output par_err;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   NOR2BX4M U3 (.Y(par_err), 
	.B(n1), 
	.AN(par_chk_en));
   XOR3XLM U4 (.Y(n1), 
	.C(n4), 
	.B(n3), 
	.A(n2));
   XNOR2X2M U5 (.Y(n4), 
	.B(PAR_TYP), 
	.A(P_DATA[7]));
   XOR3XLM U6 (.Y(n3), 
	.C(n5), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U7 (.Y(n5), 
	.B(P_DATA[6]), 
	.A(sampled_bit));
   XOR3XLM U8 (.Y(n2), 
	.C(n6), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U9 (.Y(n6), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
endmodule

module stop_check (
	stp_chk_en, 
	sampled_bit, 
	stp_err);
   input stp_chk_en;
   input sampled_bit;
   output stp_err;

   NOR2BX4M U2 (.Y(stp_err), 
	.B(sampled_bit), 
	.AN(stp_chk_en));
endmodule

module uart_rx_fsm_test_1 (
	clk, 
	rst_n, 
	RX_IN, 
	PAR_EN, 
	par_err, 
	strt_glitch, 
	stp_err, 
	bit_cnt, 
	edge_cnt, 
	Prescale, 
	edge_bit_counter_en, 
	data_valid, 
	data_samp_en, 
	deser_en, 
	strt_chk_en, 
	par_chk_en, 
	stp_chk_en, 
	test_so, 
	test_se);
   input clk;
   input rst_n;
   input RX_IN;
   input PAR_EN;
   input par_err;
   input strt_glitch;
   input stp_err;
   input [3:0] bit_cnt;
   input [5:0] edge_cnt;
   input [5:0] Prescale;
   output edge_bit_counter_en;
   output data_valid;
   output data_samp_en;
   output deser_en;
   output strt_chk_en;
   output par_chk_en;
   output stp_chk_en;
   output test_so;
   input test_se;

   // Internal wires
   wire par_err_latched;
   wire stp_err_latched;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire \r80/carry[4] ;
   wire \r80/carry[3] ;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire [2:0] current_state;

   assign test_so = stp_err_latched ;
   assign N26 = Prescale[1] ;

   SDFFRQX2M par_err_latched_reg (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(par_err_latched), 
	.D(n43), 
	.CK(clk));
   SDFFRQX2M stp_err_latched_reg (.SI(par_err_latched), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(stp_err_latched), 
	.D(n44), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(edge_cnt[5]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[0]), 
	.D(n47), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[2]), 
	.D(n46), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(current_state[1]), 
	.D(n45), 
	.CK(clk));
   NOR2X2M U7 (.Y(stp_chk_en), 
	.B(n30), 
	.A(n1));
   NOR2X2M U8 (.Y(par_chk_en), 
	.B(n1), 
	.A(n27));
   NOR2X2M U10 (.Y(deser_en), 
	.B(n38), 
	.A(n1));
   AOI2BB2XLM U11 (.Y(n31), 
	.B1(n41), 
	.B0(strt_chk_en), 
	.A1N(n38), 
	.A0N(n39));
   AOI21X2M U12 (.Y(n41), 
	.B0(strt_glitch), 
	.A1(n34), 
	.A0(n23));
   NAND2BX2M U13 (.Y(n36), 
	.B(n39), 
	.AN(n38));
   AND3X2M U14 (.Y(n25), 
	.C(n20), 
	.B(n24), 
	.A(n29));
   OAI31X1M U15 (.Y(n43), 
	.B0(n26), 
	.A2(n25), 
	.A1(par_chk_en), 
	.A0(n22));
   INVX2M U16 (.Y(n22), 
	.A(par_err_latched));
   NAND2X2M U17 (.Y(n26), 
	.B(par_chk_en), 
	.A(par_err));
   OAI31X1M U18 (.Y(n44), 
	.B0(n28), 
	.A2(n25), 
	.A1(stp_chk_en), 
	.A0(n21));
   INVX2M U19 (.Y(n21), 
	.A(stp_err_latched));
   NAND2X2M U20 (.Y(n28), 
	.B(stp_chk_en), 
	.A(stp_err));
   OR4X1M U21 (.Y(n1), 
	.D(n8), 
	.C(n9), 
	.B(n10), 
	.A(n16));
   NOR3BX2M U22 (.Y(n34), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.AN(bit_cnt[0]));
   AOI22X1M U23 (.Y(n33), 
	.B1(PAR_EN), 
	.B0(n17), 
	.A1(n19), 
	.A0(n35));
   INVX2M U24 (.Y(n19), 
	.A(n27));
   INVX2M U25 (.Y(n17), 
	.A(n36));
   OAI221X1M U26 (.Y(n46), 
	.C0(n30), 
	.B1(n36), 
	.B0(PAR_EN), 
	.A1(n35), 
	.A0(n27));
   NOR2X2M U27 (.Y(n29), 
	.B(current_state[0]), 
	.A(current_state[1]));
   OAI2B11X2M U28 (.Y(n45), 
	.C0(n33), 
	.B0(n32), 
	.A1N(current_state[1]), 
	.A0(n31));
   NAND4BX1M U29 (.Y(n32), 
	.D(n23), 
	.C(n34), 
	.B(strt_chk_en), 
	.AN(strt_glitch));
   OAI211X2M U30 (.Y(n47), 
	.C0(n33), 
	.B0(n37), 
	.A1(n18), 
	.A0(n31));
   OAI221X1M U31 (.Y(n37), 
	.C0(n29), 
	.B1(n20), 
	.B0(n40), 
	.A1(n24), 
	.A0(current_state[2]));
   NOR4X1M U32 (.Y(n40), 
	.D(bit_cnt[0]), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[3]));
   NAND2X2M U33 (.Y(n30), 
	.B(n29), 
	.A(current_state[2]));
   AND2X2M U34 (.Y(n39), 
	.B(bit_cnt[3]), 
	.A(n34));
   INVX2M U35 (.Y(N27), 
	.A(Prescale[2]));
   NOR3X2M U36 (.Y(strt_chk_en), 
	.C(n18), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NAND4BBX1M U37 (.Y(n35), 
	.D(bit_cnt[3]), 
	.C(bit_cnt[1]), 
	.BN(bit_cnt[2]), 
	.AN(bit_cnt[0]));
   NOR4X1M U38 (.Y(data_valid), 
	.D(par_err_latched), 
	.C(stp_err_latched), 
	.B(current_state[1]), 
	.A(n42));
   NAND2X2M U39 (.Y(n42), 
	.B(current_state[0]), 
	.A(current_state[2]));
   NAND3X2M U40 (.Y(n27), 
	.C(current_state[1]), 
	.B(n20), 
	.A(current_state[0]));
   NAND3X2M U41 (.Y(n38), 
	.C(current_state[1]), 
	.B(n20), 
	.A(n18));
   INVX2M U42 (.Y(n20), 
	.A(current_state[2]));
   INVX2M U43 (.Y(n18), 
	.A(current_state[0]));
   INVX2M U44 (.Y(n23), 
	.A(bit_cnt[3]));
   INVX2M U45 (.Y(n24), 
	.A(RX_IN));
   BUFX2M U46 (.Y(data_samp_en), 
	.A(edge_bit_counter_en));
   OAI21X2M U47 (.Y(edge_bit_counter_en), 
	.B0(n30), 
	.A1(n29), 
	.A0(current_state[2]));
   AND2X1M U48 (.Y(N31), 
	.B(Prescale[5]), 
	.A(\r80/carry[4] ));
   CLKXOR2X2M U49 (.Y(N30), 
	.B(\r80/carry[4] ), 
	.A(Prescale[5]));
   AND2X1M U50 (.Y(\r80/carry[4] ), 
	.B(Prescale[4]), 
	.A(\r80/carry[3] ));
   CLKXOR2X2M U51 (.Y(N29), 
	.B(\r80/carry[3] ), 
	.A(Prescale[4]));
   AND2X1M U52 (.Y(\r80/carry[3] ), 
	.B(Prescale[3]), 
	.A(Prescale[2]));
   CLKXOR2X2M U53 (.Y(N28), 
	.B(Prescale[2]), 
	.A(Prescale[3]));
   NOR2BX1M U54 (.Y(n3), 
	.B(N26), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U55 (.Y(n7), 
	.B1(n3), 
	.B0(edge_cnt[1]), 
	.A1N(N27), 
	.A0(n3));
   NOR2BX1M U56 (.Y(n4), 
	.B(edge_cnt[0]), 
	.AN(N26));
   OAI2B2X1M U57 (.Y(n6), 
	.B1(n4), 
	.B0(N27), 
	.A1N(edge_cnt[1]), 
	.A0(n4));
   XNOR2X1M U58 (.Y(n5), 
	.B(edge_cnt[5]), 
	.A(N31));
   NAND3X1M U59 (.Y(n16), 
	.C(n5), 
	.B(n6), 
	.A(n7));
   CLKXOR2X2M U60 (.Y(n10), 
	.B(edge_cnt[4]), 
	.A(N30));
   CLKXOR2X2M U61 (.Y(n9), 
	.B(edge_cnt[2]), 
	.A(N28));
   CLKXOR2X2M U62 (.Y(n8), 
	.B(edge_cnt[3]), 
	.A(N29));
endmodule

module UART_RX_test_1 (
	RX_IN, 
	clk, 
	rst_n, 
	PAR_EN, 
	PAR_TYP, 
	Prescale, 
	P_DATA, 
	DATA_VALID, 
	PAR_ERR, 
	Stop_ERR, 
	test_si, 
	test_so, 
	test_se);
   input RX_IN;
   input clk;
   input rst_n;
   input PAR_EN;
   input PAR_TYP;
   input [5:0] Prescale;
   output [7:0] P_DATA;
   output DATA_VALID;
   output PAR_ERR;
   output Stop_ERR;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire data_valid_fsm;
   wire edge_bit_counter_en;
   wire data_samp_en;
   wire sampled_bit;
   wire deser_en;
   wire strt_chk_en;
   wire strt_glitch;
   wire par_chk_en;
   wire stp_chk_en;
   wire n6;
   wire [3:0] bit_cnt;
   wire [5:0] edge_cnt;

   SDFFRQX2M data_valid_reg_reg (.SI(n6), 
	.SE(test_se), 
	.RN(rst_n), 
	.Q(DATA_VALID), 
	.D(data_valid_fsm), 
	.CK(clk));
   edge_bit_counter_test_1 edge_bit_counter_inst (.clk(clk), 
	.rst_n(rst_n), 
	.enable(edge_bit_counter_en), 
	.PAR_EN(PAR_EN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.test_si(P_DATA[7]), 
	.test_se(test_se));
   data_sampling_test_1 data_sampling_inst (.clk(clk), 
	.rst_n(rst_n), 
	.data_samp_en(data_samp_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.RX_IN(RX_IN), 
	.sampled_bit(sampled_bit), 
	.test_si(test_si), 
	.test_so(n6), 
	.test_se(test_se));
   deserializer_test_1 deserializer_inst (.clk(clk), 
	.rst_n(rst_n), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(DATA_VALID), 
	.test_se(test_se));
   start_check start_check_inst (.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.strt_glitch(strt_glitch));
   parity_check parity_check_inst (.par_chk_en(par_chk_en), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.sampled_bit(sampled_bit), 
	.PAR_TYP(PAR_TYP), 
	.par_err(PAR_ERR));
   stop_check stop_check_inst (.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.stp_err(Stop_ERR));
   uart_rx_fsm_test_1 uart_rx_fsm_inst (.clk(clk), 
	.rst_n(rst_n), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.par_err(PAR_ERR), 
	.strt_glitch(strt_glitch), 
	.stp_err(Stop_ERR), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_bit_counter_en(edge_bit_counter_en), 
	.data_valid(data_valid_fsm), 
	.data_samp_en(data_samp_en), 
	.deser_en(deser_en), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.test_so(test_so), 
	.test_se(test_se));
endmodule

module UART_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	Prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si, 
	test_so, 
	test_se);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n5;

   UART_TX_test_1 U0_UART_TX (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.clk(TX_CLK), 
	.rst_n(RST), 
	.DATA_VALID(TX_IN_V), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.TX_OUT(TX_OUT_S), 
	.Busy(TX_OUT_V), 
	.test_si(n5), 
	.test_so(test_so), 
	.test_se(test_se));
   UART_RX_test_1 U0_UART_RX (.RX_IN(RX_IN_S), 
	.clk(RX_CLK), 
	.rst_n(RST), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.DATA_VALID(RX_OUT_V), 
	.PAR_ERR(parity_error), 
	.Stop_ERR(framing_error), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(test_se));
endmodule

