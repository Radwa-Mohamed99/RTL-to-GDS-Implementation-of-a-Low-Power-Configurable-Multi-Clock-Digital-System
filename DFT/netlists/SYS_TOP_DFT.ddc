/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 07:13:48 2026
/////////////////////////////////////////////////////////////


module MUX2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module CLK_DIV_MUX ( PRESCALE, RX_Div_Ratio );
  input [5:0] PRESCALE;
  output [7:0] RX_Div_Ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(PRESCALE[4]), .B(PRESCALE[3]), .C(n15), .D(n14), .Y(n6)
         );
  NOR3X2M U12 ( .A(n6), .B(PRESCALE[1]), .C(PRESCALE[0]), .Y(RX_Div_Ratio[2])
         );
  INVX2M U13 ( .A(PRESCALE[2]), .Y(n15) );
  NAND4BX1M U14 ( .AN(PRESCALE[3]), .B(PRESCALE[4]), .C(n15), .D(n14), .Y(n7)
         );
  NOR3X2M U15 ( .A(n7), .B(PRESCALE[1]), .C(PRESCALE[0]), .Y(RX_Div_Ratio[1])
         );
  NOR4X1M U16 ( .A(n5), .B(PRESCALE[3]), .C(PRESCALE[5]), .D(PRESCALE[4]), .Y(
        RX_Div_Ratio[3]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(PRESCALE[2]), .Y(n5) );
  INVX2M U18 ( .A(PRESCALE[1]), .Y(n16) );
  INVX2M U19 ( .A(PRESCALE[0]), .Y(n17) );
  INVX2M U20 ( .A(PRESCALE[5]), .Y(n14) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(RX_Div_Ratio[0]) );
  NOR4X1M U22 ( .A(PRESCALE[5]), .B(PRESCALE[4]), .C(PRESCALE[3]), .D(n15), 
        .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(RX_Div_Ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(RX_Div_Ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(RX_Div_Ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(RX_Div_Ratio[4]) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( I_div_ratio, I_ref_clk, I_rst, I_clk_en, O_div_clk, 
        test_si, test_so, test_se );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst, I_clk_en, test_si, test_se;
  output O_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, N33,
         N34, N35, N36, N37, N38, N39, n26, n27, n1, n2, n3, n4, n5, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(I_ref_clk), 
        .RN(I_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        I_ref_clk), .SN(I_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[5]  ( .D(N38), .SI(count[4]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(N37), .SI(count[3]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[6]  ( .D(N39), .SI(count[5]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(N33), .SI(test_si), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[3]  ( .D(N36), .SI(count[2]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(N35), .SI(count[1]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(N34), .SI(count[0]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[1]) );
  OR2X2M U5 ( .A(I_div_ratio[2]), .B(I_div_ratio[1]), .Y(n1) );
  INVX2M U6 ( .A(I_div_ratio[5]), .Y(n15) );
  MX2X2M U13 ( .A(I_ref_clk), .B(div_clk), .S0(N2), .Y(O_div_clk) );
  OAI211X2M U15 ( .A0(I_div_ratio[0]), .A1(n20), .B0(n19), .C0(N2), .Y(n17) );
  CLKINVX1M U16 ( .A(I_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(I_div_ratio[1]), .A1N(I_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(I_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(I_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(I_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(I_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(I_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(I_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  MXI2X1M U27 ( .A(n16), .B(n17), .S0(div_clk), .Y(n27) );
  CLKNAND2X2M U28 ( .A(N2), .B(n17), .Y(n16) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n18), .Y(n26) );
  NAND2BX1M U30 ( .AN(n19), .B(N2), .Y(n18) );
  NOR2BX1M U31 ( .AN(N22), .B(n17), .Y(N39) );
  NOR2BX1M U32 ( .AN(N21), .B(n17), .Y(N38) );
  NOR2BX1M U33 ( .AN(N20), .B(n17), .Y(N37) );
  NOR2BX1M U34 ( .AN(N19), .B(n17), .Y(N36) );
  NOR2BX1M U35 ( .AN(N18), .B(n17), .Y(N35) );
  NOR2BX1M U36 ( .AN(N17), .B(n17), .Y(N34) );
  NOR2BX1M U37 ( .AN(N16), .B(n17), .Y(N33) );
  CLKNAND2X2M U38 ( .A(n21), .B(I_div_ratio[0]), .Y(n19) );
  MXI2X1M U39 ( .A(n22), .B(n20), .S0(odd_edge_tog), .Y(n21) );
  NAND4X1M U40 ( .A(n23), .B(n24), .C(n25), .D(n28), .Y(n22) );
  NOR4X1M U41 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U42 ( .A(count[3]), .B(I_div_ratio[4]), .Y(n32) );
  CLKXOR2X2M U43 ( .A(count[2]), .B(I_div_ratio[3]), .Y(n31) );
  CLKXOR2X2M U44 ( .A(count[1]), .B(I_div_ratio[2]), .Y(n30) );
  CLKXOR2X2M U45 ( .A(count[0]), .B(I_div_ratio[1]), .Y(n29) );
  XNOR2X1M U46 ( .A(I_div_ratio[6]), .B(count[5]), .Y(n25) );
  XNOR2X1M U47 ( .A(I_div_ratio[7]), .B(count[6]), .Y(n24) );
  XNOR2X1M U48 ( .A(I_div_ratio[5]), .B(count[4]), .Y(n23) );
  NAND4X1M U49 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n20) );
  NOR4X1M U50 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U51 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U52 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n37) );
  XNOR2X1M U55 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n35) );
  XNOR2X1M U56 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n34) );
  XNOR2X1M U57 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n33) );
  OA21X1M U58 ( .A0(n41), .A1(n42), .B0(I_clk_en), .Y(N2) );
  OR3X1M U59 ( .A(I_div_ratio[2]), .B(I_div_ratio[3]), .C(I_div_ratio[1]), .Y(
        n42) );
  OR4X1M U60 ( .A(I_div_ratio[4]), .B(I_div_ratio[5]), .C(I_div_ratio[6]), .D(
        I_div_ratio[7]), .Y(n41) );
  ClkDiv_0_DW01_inc_0 add_62 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_0 ( I_div_ratio, I_ref_clk, I_rst, I_clk_en, O_div_clk, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst, I_clk_en, test_si2, test_si1, test_se;
  output O_div_clk, test_so2, test_so1;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, N33,
         N34, N35, N36, N37, N38, N39, n1, n2, n3, n4, n5, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so1 = count[1];
  assign test_so2 = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n43), .SI(count[6]), .SE(test_se), .CK(I_ref_clk), 
        .RN(I_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n44), .SI(div_clk), .SE(test_se), .CK(
        I_ref_clk), .SN(I_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(N39), .SI(count[5]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(N33), .SI(test_si1), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(N38), .SI(count[4]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(N37), .SI(count[3]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(N36), .SI(count[2]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(N35), .SI(test_si2), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(N34), .SI(count[0]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst), .Q(count[1]) );
  OR2X2M U5 ( .A(I_div_ratio[2]), .B(I_div_ratio[1]), .Y(n1) );
  OAI211X2M U6 ( .A0(I_div_ratio[0]), .A1(n20), .B0(n19), .C0(N2), .Y(n17) );
  INVX2M U13 ( .A(I_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(I_ref_clk), .B(div_clk), .S0(N2), .Y(O_div_clk) );
  CLKINVX1M U16 ( .A(I_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(I_div_ratio[1]), .A1N(I_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(I_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(I_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(I_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(I_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(I_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(I_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  MXI2X1M U27 ( .A(n16), .B(n17), .S0(div_clk), .Y(n43) );
  CLKNAND2X2M U28 ( .A(N2), .B(n17), .Y(n16) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n18), .Y(n44) );
  NAND2BX1M U30 ( .AN(n19), .B(N2), .Y(n18) );
  NOR2BX1M U31 ( .AN(N22), .B(n17), .Y(N39) );
  NOR2BX1M U32 ( .AN(N21), .B(n17), .Y(N38) );
  NOR2BX1M U33 ( .AN(N20), .B(n17), .Y(N37) );
  NOR2BX1M U34 ( .AN(N19), .B(n17), .Y(N36) );
  NOR2BX1M U35 ( .AN(N18), .B(n17), .Y(N35) );
  NOR2BX1M U36 ( .AN(N17), .B(n17), .Y(N34) );
  NOR2BX1M U37 ( .AN(N16), .B(n17), .Y(N33) );
  CLKNAND2X2M U38 ( .A(n21), .B(I_div_ratio[0]), .Y(n19) );
  MXI2X1M U39 ( .A(n22), .B(n20), .S0(odd_edge_tog), .Y(n21) );
  NAND4X1M U40 ( .A(n23), .B(n24), .C(n25), .D(n28), .Y(n22) );
  NOR4X1M U41 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U42 ( .A(count[3]), .B(I_div_ratio[4]), .Y(n32) );
  CLKXOR2X2M U43 ( .A(count[2]), .B(I_div_ratio[3]), .Y(n31) );
  CLKXOR2X2M U44 ( .A(count[1]), .B(I_div_ratio[2]), .Y(n30) );
  CLKXOR2X2M U45 ( .A(count[0]), .B(I_div_ratio[1]), .Y(n29) );
  XNOR2X1M U46 ( .A(I_div_ratio[6]), .B(count[5]), .Y(n25) );
  XNOR2X1M U47 ( .A(I_div_ratio[7]), .B(count[6]), .Y(n24) );
  XNOR2X1M U48 ( .A(I_div_ratio[5]), .B(count[4]), .Y(n23) );
  NAND4X1M U49 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n20) );
  NOR4X1M U50 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U51 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U52 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n37) );
  XNOR2X1M U55 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n35) );
  XNOR2X1M U56 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n34) );
  XNOR2X1M U57 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n33) );
  OA21X1M U58 ( .A0(n41), .A1(n42), .B0(I_clk_en), .Y(N2) );
  OR3X1M U59 ( .A(I_div_ratio[2]), .B(I_div_ratio[3]), .C(I_div_ratio[1]), .Y(
        n42) );
  OR4X1M U60 ( .A(I_div_ratio[4]), .B(I_div_ratio[5]), .C(I_div_ratio[6]), .D(
        I_div_ratio[7]), .Y(n41) );
  ClkDiv_1_DW01_inc_0 add_62 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module Reg_File_test_1 ( WrData, Address, WrEn, RdEn, CLK, rst_n, RdData, 
        RdData_Valid, Reg_0, Reg_1, Reg_2, Reg_3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] Reg_0;
  output [7:0] Reg_1;
  output [7:0] Reg_2;
  output [7:0] Reg_3;
  input WrEn, RdEn, CLK, rst_n, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \reg_file[4][7] , \reg_file[4][6] ,
         \reg_file[4][5] , \reg_file[4][4] , \reg_file[4][3] ,
         \reg_file[4][2] , \reg_file[4][1] , \reg_file[4][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[6][7] ,
         \reg_file[6][6] , \reg_file[6][5] , \reg_file[6][4] ,
         \reg_file[6][3] , \reg_file[6][2] , \reg_file[6][1] ,
         \reg_file[6][0] , \reg_file[7][7] , \reg_file[7][6] ,
         \reg_file[7][5] , \reg_file[7][4] , \reg_file[7][3] ,
         \reg_file[7][2] , \reg_file[7][1] , \reg_file[7][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[9][7] ,
         \reg_file[9][6] , \reg_file[9][5] , \reg_file[9][4] ,
         \reg_file[9][3] , \reg_file[9][2] , \reg_file[9][1] ,
         \reg_file[9][0] , \reg_file[10][7] , \reg_file[10][6] ,
         \reg_file[10][5] , \reg_file[10][4] , \reg_file[10][3] ,
         \reg_file[10][2] , \reg_file[10][1] , \reg_file[10][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[12][7] ,
         \reg_file[12][6] , \reg_file[12][5] , \reg_file[12][4] ,
         \reg_file[12][3] , \reg_file[12][2] , \reg_file[12][1] ,
         \reg_file[12][0] , \reg_file[13][7] , \reg_file[13][6] ,
         \reg_file[13][5] , \reg_file[13][4] , \reg_file[13][3] ,
         \reg_file[13][2] , \reg_file[13][1] , \reg_file[13][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[15][7] ,
         \reg_file[15][6] , \reg_file[15][5] , \reg_file[15][4] ,
         \reg_file[15][3] , \reg_file[15][2] , \reg_file[15][1] ,
         \reg_file[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n442, n443, n444, n445;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so1 = \reg_file[5][3] ;
  assign test_so2 = \reg_file[15][7] ;

  SDFFRQX2M \reg_file_reg[5][7]  ( .D(n266), .SI(\reg_file[5][6] ), .SE(n444), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][7] ) );
  SDFFRQX2M \reg_file_reg[5][6]  ( .D(n265), .SI(\reg_file[5][5] ), .SE(n443), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][6] ) );
  SDFFRQX2M \reg_file_reg[5][5]  ( .D(n264), .SI(\reg_file[5][4] ), .SE(n442), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][5] ) );
  SDFFRQX2M \reg_file_reg[5][4]  ( .D(n263), .SI(test_si2), .SE(n445), .CK(CLK), .RN(n415), .Q(\reg_file[5][4] ) );
  SDFFRQX2M \reg_file_reg[5][3]  ( .D(n262), .SI(\reg_file[5][2] ), .SE(n444), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][3] ) );
  SDFFRQX2M \reg_file_reg[5][2]  ( .D(n261), .SI(\reg_file[5][1] ), .SE(n443), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][2] ) );
  SDFFRQX2M \reg_file_reg[5][1]  ( .D(n260), .SI(\reg_file[5][0] ), .SE(n442), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][1] ) );
  SDFFRQX2M \reg_file_reg[5][0]  ( .D(n259), .SI(\reg_file[4][7] ), .SE(n445), 
        .CK(CLK), .RN(n415), .Q(\reg_file[5][0] ) );
  SDFFRQX2M \reg_file_reg[7][7]  ( .D(n250), .SI(\reg_file[7][6] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][7] ) );
  SDFFRQX2M \reg_file_reg[7][6]  ( .D(n249), .SI(\reg_file[7][5] ), .SE(n443), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][6] ) );
  SDFFRQX2M \reg_file_reg[7][5]  ( .D(n248), .SI(\reg_file[7][4] ), .SE(n442), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][5] ) );
  SDFFRQX2M \reg_file_reg[7][4]  ( .D(n247), .SI(\reg_file[7][3] ), .SE(n445), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][4] ) );
  SDFFRQX2M \reg_file_reg[7][3]  ( .D(n246), .SI(\reg_file[7][2] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][3] ) );
  SDFFRQX2M \reg_file_reg[7][2]  ( .D(n245), .SI(\reg_file[7][1] ), .SE(n443), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][2] ) );
  SDFFRQX2M \reg_file_reg[7][1]  ( .D(n244), .SI(\reg_file[7][0] ), .SE(n442), 
        .CK(CLK), .RN(n416), .Q(\reg_file[7][1] ) );
  SDFFRQX2M \reg_file_reg[7][0]  ( .D(n243), .SI(\reg_file[6][7] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][0] ) );
  SDFFRQX2M \reg_file_reg[9][7]  ( .D(n234), .SI(\reg_file[9][6] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][7] ) );
  SDFFRQX2M \reg_file_reg[9][6]  ( .D(n233), .SI(\reg_file[9][5] ), .SE(n443), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][6] ) );
  SDFFRQX2M \reg_file_reg[9][5]  ( .D(n232), .SI(\reg_file[9][4] ), .SE(n442), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][5] ) );
  SDFFRQX2M \reg_file_reg[9][4]  ( .D(n231), .SI(\reg_file[9][3] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][4] ) );
  SDFFRQX2M \reg_file_reg[9][3]  ( .D(n230), .SI(\reg_file[9][2] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][3] ) );
  SDFFRQX2M \reg_file_reg[9][2]  ( .D(n229), .SI(\reg_file[9][1] ), .SE(n443), 
        .CK(CLK), .RN(n419), .Q(\reg_file[9][2] ) );
  SDFFRQX2M \reg_file_reg[9][1]  ( .D(n228), .SI(\reg_file[9][0] ), .SE(n442), 
        .CK(CLK), .RN(n419), .Q(\reg_file[9][1] ) );
  SDFFRQX2M \reg_file_reg[9][0]  ( .D(n227), .SI(\reg_file[8][7] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\reg_file[9][0] ) );
  SDFFRQX2M \reg_file_reg[11][7]  ( .D(n218), .SI(\reg_file[11][6] ), .SE(n444), .CK(CLK), .RN(n418), .Q(\reg_file[11][7] ) );
  SDFFRQX2M \reg_file_reg[11][6]  ( .D(n217), .SI(\reg_file[11][5] ), .SE(n443), .CK(CLK), .RN(n418), .Q(\reg_file[11][6] ) );
  SDFFRQX2M \reg_file_reg[11][5]  ( .D(n216), .SI(\reg_file[11][4] ), .SE(n442), .CK(CLK), .RN(n418), .Q(\reg_file[11][5] ) );
  SDFFRQX2M \reg_file_reg[11][4]  ( .D(n215), .SI(\reg_file[11][3] ), .SE(n445), .CK(CLK), .RN(n420), .Q(\reg_file[11][4] ) );
  SDFFRQX2M \reg_file_reg[11][3]  ( .D(n214), .SI(\reg_file[11][2] ), .SE(n444), .CK(CLK), .RN(n420), .Q(\reg_file[11][3] ) );
  SDFFRQX2M \reg_file_reg[11][2]  ( .D(n213), .SI(\reg_file[11][1] ), .SE(n443), .CK(CLK), .RN(n420), .Q(\reg_file[11][2] ) );
  SDFFRQX2M \reg_file_reg[11][1]  ( .D(n212), .SI(\reg_file[11][0] ), .SE(n442), .CK(CLK), .RN(n419), .Q(\reg_file[11][1] ) );
  SDFFRQX2M \reg_file_reg[11][0]  ( .D(n211), .SI(\reg_file[10][7] ), .SE(n445), .CK(CLK), .RN(n419), .Q(\reg_file[11][0] ) );
  SDFFRQX2M \reg_file_reg[13][7]  ( .D(n202), .SI(\reg_file[13][6] ), .SE(n444), .CK(CLK), .RN(n419), .Q(\reg_file[13][7] ) );
  SDFFRQX2M \reg_file_reg[13][6]  ( .D(n201), .SI(\reg_file[13][5] ), .SE(n443), .CK(CLK), .RN(n421), .Q(\reg_file[13][6] ) );
  SDFFRQX2M \reg_file_reg[13][5]  ( .D(n200), .SI(\reg_file[13][4] ), .SE(n442), .CK(CLK), .RN(n421), .Q(\reg_file[13][5] ) );
  SDFFRQX2M \reg_file_reg[13][4]  ( .D(n199), .SI(\reg_file[13][3] ), .SE(n445), .CK(CLK), .RN(n421), .Q(\reg_file[13][4] ) );
  SDFFRQX2M \reg_file_reg[13][3]  ( .D(n198), .SI(\reg_file[13][2] ), .SE(n444), .CK(CLK), .RN(n420), .Q(\reg_file[13][3] ) );
  SDFFRQX2M \reg_file_reg[13][2]  ( .D(n197), .SI(\reg_file[13][1] ), .SE(n443), .CK(CLK), .RN(n420), .Q(\reg_file[13][2] ) );
  SDFFRQX2M \reg_file_reg[13][1]  ( .D(n196), .SI(\reg_file[13][0] ), .SE(n442), .CK(CLK), .RN(n420), .Q(\reg_file[13][1] ) );
  SDFFRQX2M \reg_file_reg[13][0]  ( .D(n195), .SI(\reg_file[12][7] ), .SE(n445), .CK(CLK), .RN(n420), .Q(\reg_file[13][0] ) );
  SDFFRQX2M \reg_file_reg[15][7]  ( .D(n186), .SI(\reg_file[15][6] ), .SE(n444), .CK(CLK), .RN(n421), .Q(\reg_file[15][7] ) );
  SDFFRQX2M \reg_file_reg[15][6]  ( .D(n185), .SI(\reg_file[15][5] ), .SE(n443), .CK(CLK), .RN(n421), .Q(\reg_file[15][6] ) );
  SDFFRQX2M \reg_file_reg[15][5]  ( .D(n184), .SI(\reg_file[15][4] ), .SE(n442), .CK(CLK), .RN(n421), .Q(\reg_file[15][5] ) );
  SDFFRQX2M \reg_file_reg[15][4]  ( .D(n183), .SI(\reg_file[15][3] ), .SE(n445), .CK(CLK), .RN(n421), .Q(\reg_file[15][4] ) );
  SDFFRQX2M \reg_file_reg[15][3]  ( .D(n182), .SI(\reg_file[15][2] ), .SE(n444), .CK(CLK), .RN(n421), .Q(\reg_file[15][3] ) );
  SDFFRQX2M \reg_file_reg[15][2]  ( .D(n181), .SI(\reg_file[15][1] ), .SE(n443), .CK(CLK), .RN(n421), .Q(\reg_file[15][2] ) );
  SDFFRQX2M \reg_file_reg[15][1]  ( .D(n180), .SI(\reg_file[15][0] ), .SE(n442), .CK(CLK), .RN(n421), .Q(\reg_file[15][1] ) );
  SDFFRQX2M \reg_file_reg[15][0]  ( .D(n179), .SI(\reg_file[14][7] ), .SE(n445), .CK(CLK), .RN(n421), .Q(\reg_file[15][0] ) );
  SDFFRQX2M \reg_file_reg[4][7]  ( .D(n274), .SI(\reg_file[4][6] ), .SE(n444), 
        .CK(CLK), .RN(n414), .Q(\reg_file[4][7] ) );
  SDFFRQX2M \reg_file_reg[4][6]  ( .D(n273), .SI(\reg_file[4][5] ), .SE(n443), 
        .CK(CLK), .RN(n414), .Q(\reg_file[4][6] ) );
  SDFFRQX2M \reg_file_reg[4][5]  ( .D(n272), .SI(\reg_file[4][4] ), .SE(n442), 
        .CK(CLK), .RN(n414), .Q(\reg_file[4][5] ) );
  SDFFRQX2M \reg_file_reg[4][4]  ( .D(n271), .SI(\reg_file[4][3] ), .SE(n445), 
        .CK(CLK), .RN(n414), .Q(\reg_file[4][4] ) );
  SDFFRQX2M \reg_file_reg[4][3]  ( .D(n270), .SI(\reg_file[4][2] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\reg_file[4][3] ) );
  SDFFRQX2M \reg_file_reg[4][2]  ( .D(n269), .SI(\reg_file[4][1] ), .SE(n443), 
        .CK(CLK), .RN(n416), .Q(\reg_file[4][2] ) );
  SDFFRQX2M \reg_file_reg[4][1]  ( .D(n268), .SI(\reg_file[4][0] ), .SE(n442), 
        .CK(CLK), .RN(n415), .Q(\reg_file[4][1] ) );
  SDFFRQX2M \reg_file_reg[4][0]  ( .D(n267), .SI(Reg_3[7]), .SE(n445), .CK(CLK), .RN(n415), .Q(\reg_file[4][0] ) );
  SDFFRQX2M \reg_file_reg[6][7]  ( .D(n258), .SI(\reg_file[6][6] ), .SE(n444), 
        .CK(CLK), .RN(n415), .Q(\reg_file[6][7] ) );
  SDFFRQX2M \reg_file_reg[6][6]  ( .D(n257), .SI(\reg_file[6][5] ), .SE(n443), 
        .CK(CLK), .RN(n415), .Q(\reg_file[6][6] ) );
  SDFFRQX2M \reg_file_reg[6][5]  ( .D(n256), .SI(\reg_file[6][4] ), .SE(n442), 
        .CK(CLK), .RN(n417), .Q(\reg_file[6][5] ) );
  SDFFRQX2M \reg_file_reg[6][4]  ( .D(n255), .SI(\reg_file[6][3] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\reg_file[6][4] ) );
  SDFFRQX2M \reg_file_reg[6][3]  ( .D(n254), .SI(\reg_file[6][2] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\reg_file[6][3] ) );
  SDFFRQX2M \reg_file_reg[6][2]  ( .D(n253), .SI(\reg_file[6][1] ), .SE(n443), 
        .CK(CLK), .RN(n416), .Q(\reg_file[6][2] ) );
  SDFFRQX2M \reg_file_reg[6][1]  ( .D(n252), .SI(\reg_file[6][0] ), .SE(n442), 
        .CK(CLK), .RN(n416), .Q(\reg_file[6][1] ) );
  SDFFRQX2M \reg_file_reg[6][0]  ( .D(n251), .SI(\reg_file[5][7] ), .SE(n445), 
        .CK(CLK), .RN(n416), .Q(\reg_file[6][0] ) );
  SDFFRQX2M \reg_file_reg[8][7]  ( .D(n242), .SI(\reg_file[8][6] ), .SE(n444), 
        .CK(CLK), .RN(n418), .Q(\reg_file[8][7] ) );
  SDFFRQX2M \reg_file_reg[8][6]  ( .D(n241), .SI(\reg_file[8][5] ), .SE(n443), 
        .CK(CLK), .RN(n418), .Q(\reg_file[8][6] ) );
  SDFFRQX2M \reg_file_reg[8][5]  ( .D(n240), .SI(\reg_file[8][4] ), .SE(n442), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][5] ) );
  SDFFRQX2M \reg_file_reg[8][4]  ( .D(n239), .SI(\reg_file[8][3] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][4] ) );
  SDFFRQX2M \reg_file_reg[8][3]  ( .D(n238), .SI(\reg_file[8][2] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][3] ) );
  SDFFRQX2M \reg_file_reg[8][2]  ( .D(n237), .SI(\reg_file[8][1] ), .SE(n443), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][2] ) );
  SDFFRQX2M \reg_file_reg[8][1]  ( .D(n236), .SI(\reg_file[8][0] ), .SE(n442), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][1] ) );
  SDFFRQX2M \reg_file_reg[8][0]  ( .D(n235), .SI(\reg_file[7][7] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][0] ) );
  SDFFRQX2M \reg_file_reg[10][7]  ( .D(n226), .SI(\reg_file[10][6] ), .SE(n444), .CK(CLK), .RN(n418), .Q(\reg_file[10][7] ) );
  SDFFRQX2M \reg_file_reg[10][6]  ( .D(n225), .SI(\reg_file[10][5] ), .SE(n443), .CK(CLK), .RN(n418), .Q(\reg_file[10][6] ) );
  SDFFRQX2M \reg_file_reg[10][5]  ( .D(n224), .SI(\reg_file[10][4] ), .SE(n442), .CK(CLK), .RN(n418), .Q(\reg_file[10][5] ) );
  SDFFRQX2M \reg_file_reg[10][4]  ( .D(n223), .SI(\reg_file[10][3] ), .SE(n445), .CK(CLK), .RN(n418), .Q(\reg_file[10][4] ) );
  SDFFRQX2M \reg_file_reg[10][3]  ( .D(n222), .SI(\reg_file[10][2] ), .SE(n444), .CK(CLK), .RN(n418), .Q(\reg_file[10][3] ) );
  SDFFRQX2M \reg_file_reg[10][2]  ( .D(n221), .SI(\reg_file[10][1] ), .SE(n443), .CK(CLK), .RN(n418), .Q(\reg_file[10][2] ) );
  SDFFRQX2M \reg_file_reg[10][1]  ( .D(n220), .SI(\reg_file[10][0] ), .SE(n442), .CK(CLK), .RN(n418), .Q(\reg_file[10][1] ) );
  SDFFRQX2M \reg_file_reg[10][0]  ( .D(n219), .SI(\reg_file[9][7] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\reg_file[10][0] ) );
  SDFFRQX2M \reg_file_reg[12][7]  ( .D(n210), .SI(\reg_file[12][6] ), .SE(n444), .CK(CLK), .RN(n419), .Q(\reg_file[12][7] ) );
  SDFFRQX2M \reg_file_reg[12][6]  ( .D(n209), .SI(\reg_file[12][5] ), .SE(n443), .CK(CLK), .RN(n419), .Q(\reg_file[12][6] ) );
  SDFFRQX2M \reg_file_reg[12][5]  ( .D(n208), .SI(\reg_file[12][4] ), .SE(n442), .CK(CLK), .RN(n419), .Q(\reg_file[12][5] ) );
  SDFFRQX2M \reg_file_reg[12][4]  ( .D(n207), .SI(\reg_file[12][3] ), .SE(n445), .CK(CLK), .RN(n419), .Q(\reg_file[12][4] ) );
  SDFFRQX2M \reg_file_reg[12][3]  ( .D(n206), .SI(\reg_file[12][2] ), .SE(n444), .CK(CLK), .RN(n419), .Q(\reg_file[12][3] ) );
  SDFFRQX2M \reg_file_reg[12][2]  ( .D(n205), .SI(\reg_file[12][1] ), .SE(n443), .CK(CLK), .RN(n419), .Q(\reg_file[12][2] ) );
  SDFFRQX2M \reg_file_reg[12][1]  ( .D(n204), .SI(\reg_file[12][0] ), .SE(n442), .CK(CLK), .RN(n419), .Q(\reg_file[12][1] ) );
  SDFFRQX2M \reg_file_reg[12][0]  ( .D(n203), .SI(\reg_file[11][7] ), .SE(n445), .CK(CLK), .RN(n419), .Q(\reg_file[12][0] ) );
  SDFFRQX2M \reg_file_reg[14][7]  ( .D(n194), .SI(\reg_file[14][6] ), .SE(n444), .CK(CLK), .RN(n420), .Q(\reg_file[14][7] ) );
  SDFFRQX2M \reg_file_reg[14][6]  ( .D(n193), .SI(\reg_file[14][5] ), .SE(n443), .CK(CLK), .RN(n420), .Q(\reg_file[14][6] ) );
  SDFFRQX2M \reg_file_reg[14][5]  ( .D(n192), .SI(\reg_file[14][4] ), .SE(n442), .CK(CLK), .RN(n420), .Q(\reg_file[14][5] ) );
  SDFFRQX2M \reg_file_reg[14][4]  ( .D(n191), .SI(\reg_file[14][3] ), .SE(n445), .CK(CLK), .RN(n420), .Q(\reg_file[14][4] ) );
  SDFFRQX2M \reg_file_reg[14][3]  ( .D(n190), .SI(\reg_file[14][2] ), .SE(n444), .CK(CLK), .RN(n420), .Q(\reg_file[14][3] ) );
  SDFFRQX2M \reg_file_reg[14][2]  ( .D(n189), .SI(\reg_file[14][1] ), .SE(n443), .CK(CLK), .RN(n420), .Q(\reg_file[14][2] ) );
  SDFFRQX2M \reg_file_reg[14][1]  ( .D(n188), .SI(\reg_file[14][0] ), .SE(n442), .CK(CLK), .RN(n412), .Q(\reg_file[14][1] ) );
  SDFFRQX2M \reg_file_reg[14][0]  ( .D(n187), .SI(\reg_file[13][7] ), .SE(n445), .CK(CLK), .RN(n420), .Q(\reg_file[14][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n314), .SI(RdData[6]), .SE(n444), .CK(CLK), 
        .RN(n421), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n313), .SI(RdData[5]), .SE(n443), .CK(CLK), 
        .RN(n413), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n312), .SI(RdData[4]), .SE(n442), .CK(CLK), 
        .RN(n413), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n311), .SI(RdData[3]), .SE(n445), .CK(CLK), 
        .RN(n412), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n310), .SI(RdData[2]), .SE(n444), .CK(CLK), 
        .RN(n412), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n309), .SI(RdData[1]), .SE(n443), .CK(CLK), 
        .RN(n412), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n308), .SI(RdData[0]), .SE(n442), .CK(CLK), 
        .RN(n412), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n307), .SI(RdData_Valid), .SE(n445), .CK(CLK), 
        .RN(n412), .Q(RdData[0]) );
  SDFFRQX2M \reg_file_reg[3][0]  ( .D(n275), .SI(Reg_2[7]), .SE(n444), .CK(CLK), .RN(n414), .Q(Reg_3[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n437), .SI(test_si1), .SE(n443), .CK(CLK), 
        .RN(n416), .Q(RdData_Valid) );
  SDFFRQX2M \reg_file_reg[0][7]  ( .D(n306), .SI(Reg_0[6]), .SE(n442), .CK(CLK), .RN(n412), .Q(Reg_0[7]) );
  SDFFRQX2M \reg_file_reg[0][6]  ( .D(n305), .SI(Reg_0[5]), .SE(n445), .CK(CLK), .RN(n412), .Q(Reg_0[6]) );
  SDFFRQX2M \reg_file_reg[0][5]  ( .D(n304), .SI(Reg_0[4]), .SE(n444), .CK(CLK), .RN(n412), .Q(Reg_0[5]) );
  SDFFRQX2M \reg_file_reg[0][4]  ( .D(n303), .SI(Reg_0[3]), .SE(n443), .CK(CLK), .RN(n412), .Q(Reg_0[4]) );
  SDFFRQX2M \reg_file_reg[0][3]  ( .D(n302), .SI(Reg_0[2]), .SE(n442), .CK(CLK), .RN(n417), .Q(Reg_0[3]) );
  SDFFRQX2M \reg_file_reg[0][2]  ( .D(n301), .SI(Reg_0[1]), .SE(n445), .CK(CLK), .RN(n414), .Q(Reg_0[2]) );
  SDFFRQX2M \reg_file_reg[0][1]  ( .D(n300), .SI(Reg_0[0]), .SE(n444), .CK(CLK), .RN(n414), .Q(Reg_0[1]) );
  SDFFRQX2M \reg_file_reg[0][0]  ( .D(n299), .SI(RdData[7]), .SE(n443), .CK(
        CLK), .RN(n413), .Q(Reg_0[0]) );
  SDFFRQX2M \reg_file_reg[2][1]  ( .D(n284), .SI(Reg_2[0]), .SE(n442), .CK(CLK), .RN(n414), .Q(Reg_2[1]) );
  SDFFSQX2M \reg_file_reg[2][0]  ( .D(n283), .SI(Reg_1[7]), .SE(test_se), .CK(
        CLK), .SN(n412), .Q(Reg_2[0]) );
  SDFFRQX2M \reg_file_reg[1][1]  ( .D(n292), .SI(Reg_1[0]), .SE(n445), .CK(CLK), .RN(n413), .Q(Reg_1[1]) );
  SDFFRQX2M \reg_file_reg[1][3]  ( .D(n294), .SI(Reg_1[2]), .SE(n444), .CK(CLK), .RN(n413), .Q(Reg_1[3]) );
  SDFFRQX2M \reg_file_reg[1][2]  ( .D(n293), .SI(Reg_1[1]), .SE(n443), .CK(CLK), .RN(n413), .Q(Reg_1[2]) );
  SDFFRQX2M \reg_file_reg[1][5]  ( .D(n296), .SI(Reg_1[4]), .SE(n442), .CK(CLK), .RN(n413), .Q(Reg_1[5]) );
  SDFFRQX2M \reg_file_reg[1][7]  ( .D(n298), .SI(Reg_1[6]), .SE(n445), .CK(CLK), .RN(n413), .Q(Reg_1[7]) );
  SDFFRQX2M \reg_file_reg[1][0]  ( .D(n291), .SI(Reg_0[7]), .SE(n444), .CK(CLK), .RN(n413), .Q(Reg_1[0]) );
  SDFFRQX2M \reg_file_reg[1][4]  ( .D(n295), .SI(Reg_1[3]), .SE(n443), .CK(CLK), .RN(n413), .Q(Reg_1[4]) );
  SDFFRQX2M \reg_file_reg[1][6]  ( .D(n297), .SI(Reg_1[5]), .SE(n442), .CK(CLK), .RN(n413), .Q(Reg_1[6]) );
  SDFFRQX2M \reg_file_reg[3][4]  ( .D(n279), .SI(Reg_3[3]), .SE(n445), .CK(CLK), .RN(n414), .Q(Reg_3[4]) );
  SDFFRQX2M \reg_file_reg[3][7]  ( .D(n282), .SI(Reg_3[6]), .SE(n444), .CK(CLK), .RN(n414), .Q(Reg_3[7]) );
  SDFFRQX2M \reg_file_reg[3][6]  ( .D(n281), .SI(Reg_3[5]), .SE(n443), .CK(CLK), .RN(n414), .Q(Reg_3[6]) );
  SDFFSQX2M \reg_file_reg[3][5]  ( .D(n280), .SI(Reg_3[4]), .SE(n442), .CK(CLK), .SN(n412), .Q(Reg_3[5]) );
  SDFFRQX2M \reg_file_reg[3][2]  ( .D(n277), .SI(Reg_3[1]), .SE(n442), .CK(CLK), .RN(n414), .Q(Reg_3[2]) );
  SDFFRQX2M \reg_file_reg[3][3]  ( .D(n278), .SI(Reg_3[2]), .SE(n445), .CK(CLK), .RN(n414), .Q(Reg_3[3]) );
  SDFFRQX2M \reg_file_reg[3][1]  ( .D(n276), .SI(Reg_3[0]), .SE(n444), .CK(CLK), .RN(n414), .Q(Reg_3[1]) );
  SDFFRQX2M \reg_file_reg[2][2]  ( .D(n285), .SI(Reg_2[1]), .SE(n443), .CK(CLK), .RN(n415), .Q(Reg_2[2]) );
  SDFFRQX2M \reg_file_reg[2][3]  ( .D(n286), .SI(Reg_2[2]), .SE(n442), .CK(CLK), .RN(n415), .Q(Reg_2[3]) );
  SDFFSQX2M \reg_file_reg[2][7]  ( .D(n290), .SI(Reg_2[6]), .SE(n445), .CK(CLK), .SN(n412), .Q(Reg_2[7]) );
  SDFFRQX2M \reg_file_reg[2][6]  ( .D(n289), .SI(Reg_2[5]), .SE(n445), .CK(CLK), .RN(n413), .Q(Reg_2[6]) );
  SDFFRQX2M \reg_file_reg[2][5]  ( .D(n288), .SI(Reg_2[4]), .SE(n444), .CK(CLK), .RN(n413), .Q(Reg_2[5]) );
  SDFFRQX2M \reg_file_reg[2][4]  ( .D(n287), .SI(Reg_2[3]), .SE(n443), .CK(CLK), .RN(n413), .Q(Reg_2[4]) );
  INVX2M U140 ( .A(WrData[7]), .Y(n429) );
  NOR2X2M U141 ( .A(n428), .B(N12), .Y(n157) );
  NOR2X2M U142 ( .A(n427), .B(N13), .Y(n160) );
  NOR2X2M U143 ( .A(N12), .B(N13), .Y(n163) );
  INVX2M U144 ( .A(n138), .Y(n408) );
  NAND2X2M U145 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U146 ( .A(n170), .B(n152), .Y(n169) );
  OR2X2M U147 ( .A(n427), .B(n407), .Y(n138) );
  INVX2M U148 ( .A(n140), .Y(n410) );
  INVX2M U149 ( .A(n139), .Y(n409) );
  NOR2X2M U150 ( .A(n428), .B(n427), .Y(n152) );
  NAND2X2M U151 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U152 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U153 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U154 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U155 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U156 ( .A(n168), .B(n157), .Y(n171) );
  NAND2X2M U157 ( .A(n170), .B(n157), .Y(n172) );
  NAND2X2M U158 ( .A(n168), .B(n160), .Y(n173) );
  NAND2X2M U159 ( .A(n170), .B(n160), .Y(n174) );
  NAND2X2M U160 ( .A(n170), .B(n163), .Y(n177) );
  NAND2X2M U161 ( .A(n168), .B(n152), .Y(n167) );
  NAND2X2M U162 ( .A(n152), .B(n153), .Y(n151) );
  AND2X2M U163 ( .A(n164), .B(n407), .Y(n155) );
  AND2X2M U164 ( .A(n176), .B(n407), .Y(n170) );
  INVX2M U165 ( .A(n141), .Y(n411) );
  NAND2X2M U166 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U167 ( .A(n168), .B(n163), .Y(n175) );
  INVX2M U168 ( .A(n178), .Y(n437) );
  OR2X2M U169 ( .A(n427), .B(N11), .Y(n139) );
  OR2X2M U170 ( .A(n407), .B(N12), .Y(n140) );
  INVX2M U171 ( .A(N11), .Y(n407) );
  OR2X2M U172 ( .A(N11), .B(N12), .Y(n141) );
  AND2X2M U173 ( .A(n176), .B(N11), .Y(n168) );
  INVX2M U174 ( .A(N13), .Y(n428) );
  INVX2M U175 ( .A(N12), .Y(n427) );
  INVX2M U176 ( .A(N14), .Y(n406) );
  NAND2X2M U177 ( .A(RdEn), .B(n438), .Y(n178) );
  AND2X2M U178 ( .A(n164), .B(N11), .Y(n153) );
  NOR2BX2M U179 ( .AN(n166), .B(N14), .Y(n176) );
  NOR2X2M U180 ( .A(n438), .B(RdEn), .Y(n166) );
  AND2X2M U181 ( .A(N14), .B(n166), .Y(n164) );
  BUFX2M U182 ( .A(n422), .Y(n420) );
  BUFX2M U183 ( .A(n423), .Y(n419) );
  BUFX2M U184 ( .A(n423), .Y(n418) );
  BUFX2M U185 ( .A(n424), .Y(n416) );
  BUFX2M U186 ( .A(n425), .Y(n415) );
  BUFX2M U187 ( .A(n425), .Y(n414) );
  BUFX2M U188 ( .A(n424), .Y(n417) );
  BUFX2M U189 ( .A(n426), .Y(n413) );
  BUFX2M U190 ( .A(n426), .Y(n412) );
  BUFX2M U191 ( .A(n422), .Y(n421) );
  INVX2M U192 ( .A(WrData[0]), .Y(n430) );
  INVX2M U193 ( .A(WrData[1]), .Y(n431) );
  INVX2M U194 ( .A(WrData[3]), .Y(n433) );
  INVX2M U195 ( .A(WrData[4]), .Y(n434) );
  INVX2M U196 ( .A(WrData[5]), .Y(n435) );
  INVX2M U197 ( .A(WrData[6]), .Y(n436) );
  INVX2M U198 ( .A(WrData[2]), .Y(n432) );
  INVX2M U199 ( .A(WrEn), .Y(n438) );
  BUFX2M U200 ( .A(rst_n), .Y(n423) );
  BUFX2M U201 ( .A(rst_n), .Y(n425) );
  BUFX2M U202 ( .A(rst_n), .Y(n424) );
  BUFX2M U203 ( .A(rst_n), .Y(n426) );
  BUFX2M U204 ( .A(rst_n), .Y(n422) );
  AO22X1M U205 ( .A0(N43), .A1(n437), .B0(RdData[0]), .B1(n178), .Y(n307) );
  AO22X1M U206 ( .A0(N42), .A1(n437), .B0(RdData[1]), .B1(n178), .Y(n308) );
  AO22X1M U207 ( .A0(N41), .A1(n437), .B0(RdData[2]), .B1(n178), .Y(n309) );
  AO22X1M U208 ( .A0(N40), .A1(n437), .B0(RdData[3]), .B1(n178), .Y(n310) );
  AO22X1M U209 ( .A0(N39), .A1(n437), .B0(RdData[4]), .B1(n178), .Y(n311) );
  AO22X1M U210 ( .A0(N38), .A1(n437), .B0(RdData[5]), .B1(n178), .Y(n312) );
  AO22X1M U211 ( .A0(N37), .A1(n437), .B0(RdData[6]), .B1(n178), .Y(n313) );
  AO22X1M U212 ( .A0(N36), .A1(n437), .B0(RdData[7]), .B1(n178), .Y(n314) );
  OAI2BB2X1M U213 ( .B0(n151), .B1(n430), .A0N(\reg_file[15][0] ), .A1N(n151), 
        .Y(n179) );
  OAI2BB2X1M U214 ( .B0(n151), .B1(n431), .A0N(\reg_file[15][1] ), .A1N(n151), 
        .Y(n180) );
  OAI2BB2X1M U215 ( .B0(n151), .B1(n432), .A0N(\reg_file[15][2] ), .A1N(n151), 
        .Y(n181) );
  OAI2BB2X1M U216 ( .B0(n151), .B1(n433), .A0N(\reg_file[15][3] ), .A1N(n151), 
        .Y(n182) );
  OAI2BB2X1M U217 ( .B0(n151), .B1(n434), .A0N(\reg_file[15][4] ), .A1N(n151), 
        .Y(n183) );
  OAI2BB2X1M U218 ( .B0(n151), .B1(n435), .A0N(\reg_file[15][5] ), .A1N(n151), 
        .Y(n184) );
  OAI2BB2X1M U219 ( .B0(n151), .B1(n436), .A0N(\reg_file[15][6] ), .A1N(n151), 
        .Y(n185) );
  OAI2BB2X1M U220 ( .B0(n151), .B1(n429), .A0N(\reg_file[15][7] ), .A1N(n151), 
        .Y(n186) );
  OAI2BB2X1M U221 ( .B0(n430), .B1(n156), .A0N(\reg_file[13][0] ), .A1N(n156), 
        .Y(n195) );
  OAI2BB2X1M U222 ( .B0(n431), .B1(n156), .A0N(\reg_file[13][1] ), .A1N(n156), 
        .Y(n196) );
  OAI2BB2X1M U223 ( .B0(n432), .B1(n156), .A0N(\reg_file[13][2] ), .A1N(n156), 
        .Y(n197) );
  OAI2BB2X1M U224 ( .B0(n433), .B1(n156), .A0N(\reg_file[13][3] ), .A1N(n156), 
        .Y(n198) );
  OAI2BB2X1M U225 ( .B0(n434), .B1(n156), .A0N(\reg_file[13][4] ), .A1N(n156), 
        .Y(n199) );
  OAI2BB2X1M U226 ( .B0(n435), .B1(n156), .A0N(\reg_file[13][5] ), .A1N(n156), 
        .Y(n200) );
  OAI2BB2X1M U227 ( .B0(n436), .B1(n156), .A0N(\reg_file[13][6] ), .A1N(n156), 
        .Y(n201) );
  OAI2BB2X1M U228 ( .B0(n429), .B1(n156), .A0N(\reg_file[13][7] ), .A1N(n156), 
        .Y(n202) );
  OAI2BB2X1M U229 ( .B0(n430), .B1(n158), .A0N(\reg_file[12][0] ), .A1N(n158), 
        .Y(n203) );
  OAI2BB2X1M U230 ( .B0(n431), .B1(n158), .A0N(\reg_file[12][1] ), .A1N(n158), 
        .Y(n204) );
  OAI2BB2X1M U231 ( .B0(n432), .B1(n158), .A0N(\reg_file[12][2] ), .A1N(n158), 
        .Y(n205) );
  OAI2BB2X1M U232 ( .B0(n433), .B1(n158), .A0N(\reg_file[12][3] ), .A1N(n158), 
        .Y(n206) );
  OAI2BB2X1M U233 ( .B0(n434), .B1(n158), .A0N(\reg_file[12][4] ), .A1N(n158), 
        .Y(n207) );
  OAI2BB2X1M U234 ( .B0(n435), .B1(n158), .A0N(\reg_file[12][5] ), .A1N(n158), 
        .Y(n208) );
  OAI2BB2X1M U235 ( .B0(n436), .B1(n158), .A0N(\reg_file[12][6] ), .A1N(n158), 
        .Y(n209) );
  OAI2BB2X1M U236 ( .B0(n429), .B1(n158), .A0N(\reg_file[12][7] ), .A1N(n158), 
        .Y(n210) );
  OAI2BB2X1M U237 ( .B0(n430), .B1(n159), .A0N(\reg_file[11][0] ), .A1N(n159), 
        .Y(n211) );
  OAI2BB2X1M U238 ( .B0(n431), .B1(n159), .A0N(\reg_file[11][1] ), .A1N(n159), 
        .Y(n212) );
  OAI2BB2X1M U239 ( .B0(n432), .B1(n159), .A0N(\reg_file[11][2] ), .A1N(n159), 
        .Y(n213) );
  OAI2BB2X1M U240 ( .B0(n433), .B1(n159), .A0N(\reg_file[11][3] ), .A1N(n159), 
        .Y(n214) );
  OAI2BB2X1M U241 ( .B0(n434), .B1(n159), .A0N(\reg_file[11][4] ), .A1N(n159), 
        .Y(n215) );
  OAI2BB2X1M U242 ( .B0(n435), .B1(n159), .A0N(\reg_file[11][5] ), .A1N(n159), 
        .Y(n216) );
  OAI2BB2X1M U243 ( .B0(n436), .B1(n159), .A0N(\reg_file[11][6] ), .A1N(n159), 
        .Y(n217) );
  OAI2BB2X1M U244 ( .B0(n429), .B1(n159), .A0N(\reg_file[11][7] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U245 ( .B0(n430), .B1(n161), .A0N(\reg_file[10][0] ), .A1N(n161), 
        .Y(n219) );
  OAI2BB2X1M U246 ( .B0(n431), .B1(n161), .A0N(\reg_file[10][1] ), .A1N(n161), 
        .Y(n220) );
  OAI2BB2X1M U247 ( .B0(n432), .B1(n161), .A0N(\reg_file[10][2] ), .A1N(n161), 
        .Y(n221) );
  OAI2BB2X1M U248 ( .B0(n433), .B1(n161), .A0N(\reg_file[10][3] ), .A1N(n161), 
        .Y(n222) );
  OAI2BB2X1M U249 ( .B0(n434), .B1(n161), .A0N(\reg_file[10][4] ), .A1N(n161), 
        .Y(n223) );
  OAI2BB2X1M U250 ( .B0(n435), .B1(n161), .A0N(\reg_file[10][5] ), .A1N(n161), 
        .Y(n224) );
  OAI2BB2X1M U251 ( .B0(n436), .B1(n161), .A0N(\reg_file[10][6] ), .A1N(n161), 
        .Y(n225) );
  OAI2BB2X1M U252 ( .B0(n429), .B1(n161), .A0N(\reg_file[10][7] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U253 ( .B0(n430), .B1(n165), .A0N(\reg_file[8][0] ), .A1N(n165), 
        .Y(n235) );
  OAI2BB2X1M U254 ( .B0(n431), .B1(n165), .A0N(\reg_file[8][1] ), .A1N(n165), 
        .Y(n236) );
  OAI2BB2X1M U255 ( .B0(n432), .B1(n165), .A0N(\reg_file[8][2] ), .A1N(n165), 
        .Y(n237) );
  OAI2BB2X1M U256 ( .B0(n433), .B1(n165), .A0N(\reg_file[8][3] ), .A1N(n165), 
        .Y(n238) );
  OAI2BB2X1M U257 ( .B0(n434), .B1(n165), .A0N(\reg_file[8][4] ), .A1N(n165), 
        .Y(n239) );
  OAI2BB2X1M U258 ( .B0(n435), .B1(n165), .A0N(\reg_file[8][5] ), .A1N(n165), 
        .Y(n240) );
  OAI2BB2X1M U259 ( .B0(n436), .B1(n165), .A0N(\reg_file[8][6] ), .A1N(n165), 
        .Y(n241) );
  OAI2BB2X1M U260 ( .B0(n429), .B1(n165), .A0N(\reg_file[8][7] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U261 ( .B0(n430), .B1(n154), .A0N(\reg_file[14][0] ), .A1N(n154), 
        .Y(n187) );
  OAI2BB2X1M U262 ( .B0(n431), .B1(n154), .A0N(\reg_file[14][1] ), .A1N(n154), 
        .Y(n188) );
  OAI2BB2X1M U263 ( .B0(n432), .B1(n154), .A0N(\reg_file[14][2] ), .A1N(n154), 
        .Y(n189) );
  OAI2BB2X1M U264 ( .B0(n433), .B1(n154), .A0N(\reg_file[14][3] ), .A1N(n154), 
        .Y(n190) );
  OAI2BB2X1M U265 ( .B0(n434), .B1(n154), .A0N(\reg_file[14][4] ), .A1N(n154), 
        .Y(n191) );
  OAI2BB2X1M U266 ( .B0(n435), .B1(n154), .A0N(\reg_file[14][5] ), .A1N(n154), 
        .Y(n192) );
  OAI2BB2X1M U267 ( .B0(n436), .B1(n154), .A0N(\reg_file[14][6] ), .A1N(n154), 
        .Y(n193) );
  OAI2BB2X1M U268 ( .B0(n429), .B1(n154), .A0N(\reg_file[14][7] ), .A1N(n154), 
        .Y(n194) );
  OAI2BB2X1M U269 ( .B0(n430), .B1(n167), .A0N(\reg_file[7][0] ), .A1N(n167), 
        .Y(n243) );
  OAI2BB2X1M U270 ( .B0(n431), .B1(n167), .A0N(\reg_file[7][1] ), .A1N(n167), 
        .Y(n244) );
  OAI2BB2X1M U271 ( .B0(n432), .B1(n167), .A0N(\reg_file[7][2] ), .A1N(n167), 
        .Y(n245) );
  OAI2BB2X1M U272 ( .B0(n433), .B1(n167), .A0N(\reg_file[7][3] ), .A1N(n167), 
        .Y(n246) );
  OAI2BB2X1M U273 ( .B0(n434), .B1(n167), .A0N(\reg_file[7][4] ), .A1N(n167), 
        .Y(n247) );
  OAI2BB2X1M U274 ( .B0(n435), .B1(n167), .A0N(\reg_file[7][5] ), .A1N(n167), 
        .Y(n248) );
  OAI2BB2X1M U275 ( .B0(n436), .B1(n167), .A0N(\reg_file[7][6] ), .A1N(n167), 
        .Y(n249) );
  OAI2BB2X1M U276 ( .B0(n429), .B1(n167), .A0N(\reg_file[7][7] ), .A1N(n167), 
        .Y(n250) );
  OAI2BB2X1M U277 ( .B0(n430), .B1(n169), .A0N(\reg_file[6][0] ), .A1N(n169), 
        .Y(n251) );
  OAI2BB2X1M U278 ( .B0(n431), .B1(n169), .A0N(\reg_file[6][1] ), .A1N(n169), 
        .Y(n252) );
  OAI2BB2X1M U279 ( .B0(n432), .B1(n169), .A0N(\reg_file[6][2] ), .A1N(n169), 
        .Y(n253) );
  OAI2BB2X1M U280 ( .B0(n433), .B1(n169), .A0N(\reg_file[6][3] ), .A1N(n169), 
        .Y(n254) );
  OAI2BB2X1M U281 ( .B0(n434), .B1(n169), .A0N(\reg_file[6][4] ), .A1N(n169), 
        .Y(n255) );
  OAI2BB2X1M U282 ( .B0(n435), .B1(n169), .A0N(\reg_file[6][5] ), .A1N(n169), 
        .Y(n256) );
  OAI2BB2X1M U283 ( .B0(n436), .B1(n169), .A0N(\reg_file[6][6] ), .A1N(n169), 
        .Y(n257) );
  OAI2BB2X1M U284 ( .B0(n429), .B1(n169), .A0N(\reg_file[6][7] ), .A1N(n169), 
        .Y(n258) );
  OAI2BB2X1M U285 ( .B0(n430), .B1(n171), .A0N(\reg_file[5][0] ), .A1N(n171), 
        .Y(n259) );
  OAI2BB2X1M U286 ( .B0(n431), .B1(n171), .A0N(\reg_file[5][1] ), .A1N(n171), 
        .Y(n260) );
  OAI2BB2X1M U287 ( .B0(n432), .B1(n171), .A0N(\reg_file[5][2] ), .A1N(n171), 
        .Y(n261) );
  OAI2BB2X1M U288 ( .B0(n433), .B1(n171), .A0N(\reg_file[5][3] ), .A1N(n171), 
        .Y(n262) );
  OAI2BB2X1M U289 ( .B0(n434), .B1(n171), .A0N(\reg_file[5][4] ), .A1N(n171), 
        .Y(n263) );
  OAI2BB2X1M U290 ( .B0(n435), .B1(n171), .A0N(\reg_file[5][5] ), .A1N(n171), 
        .Y(n264) );
  OAI2BB2X1M U291 ( .B0(n436), .B1(n171), .A0N(\reg_file[5][6] ), .A1N(n171), 
        .Y(n265) );
  OAI2BB2X1M U292 ( .B0(n429), .B1(n171), .A0N(\reg_file[5][7] ), .A1N(n171), 
        .Y(n266) );
  OAI2BB2X1M U293 ( .B0(n430), .B1(n172), .A0N(\reg_file[4][0] ), .A1N(n172), 
        .Y(n267) );
  OAI2BB2X1M U294 ( .B0(n431), .B1(n172), .A0N(\reg_file[4][1] ), .A1N(n172), 
        .Y(n268) );
  OAI2BB2X1M U295 ( .B0(n432), .B1(n172), .A0N(\reg_file[4][2] ), .A1N(n172), 
        .Y(n269) );
  OAI2BB2X1M U296 ( .B0(n433), .B1(n172), .A0N(\reg_file[4][3] ), .A1N(n172), 
        .Y(n270) );
  OAI2BB2X1M U297 ( .B0(n434), .B1(n172), .A0N(\reg_file[4][4] ), .A1N(n172), 
        .Y(n271) );
  OAI2BB2X1M U298 ( .B0(n435), .B1(n172), .A0N(\reg_file[4][5] ), .A1N(n172), 
        .Y(n272) );
  OAI2BB2X1M U299 ( .B0(n436), .B1(n172), .A0N(\reg_file[4][6] ), .A1N(n172), 
        .Y(n273) );
  OAI2BB2X1M U300 ( .B0(n429), .B1(n172), .A0N(\reg_file[4][7] ), .A1N(n172), 
        .Y(n274) );
  OAI2BB2X1M U301 ( .B0(n430), .B1(n173), .A0N(Reg_3[0]), .A1N(n173), .Y(n275)
         );
  OAI2BB2X1M U302 ( .B0(n431), .B1(n173), .A0N(Reg_3[1]), .A1N(n173), .Y(n276)
         );
  OAI2BB2X1M U303 ( .B0(n432), .B1(n173), .A0N(Reg_3[2]), .A1N(n173), .Y(n277)
         );
  OAI2BB2X1M U304 ( .B0(n433), .B1(n173), .A0N(Reg_3[3]), .A1N(n173), .Y(n278)
         );
  OAI2BB2X1M U305 ( .B0(n434), .B1(n173), .A0N(Reg_3[4]), .A1N(n173), .Y(n279)
         );
  OAI2BB2X1M U306 ( .B0(n436), .B1(n173), .A0N(Reg_3[6]), .A1N(n173), .Y(n281)
         );
  OAI2BB2X1M U307 ( .B0(n429), .B1(n173), .A0N(Reg_3[7]), .A1N(n173), .Y(n282)
         );
  OAI2BB2X1M U308 ( .B0(n431), .B1(n174), .A0N(Reg_2[1]), .A1N(n174), .Y(n284)
         );
  OAI2BB2X1M U309 ( .B0(n432), .B1(n174), .A0N(Reg_2[2]), .A1N(n174), .Y(n285)
         );
  OAI2BB2X1M U310 ( .B0(n433), .B1(n174), .A0N(Reg_2[3]), .A1N(n174), .Y(n286)
         );
  OAI2BB2X1M U311 ( .B0(n434), .B1(n174), .A0N(Reg_2[4]), .A1N(n174), .Y(n287)
         );
  OAI2BB2X1M U312 ( .B0(n435), .B1(n174), .A0N(Reg_2[5]), .A1N(n174), .Y(n288)
         );
  OAI2BB2X1M U313 ( .B0(n436), .B1(n174), .A0N(Reg_2[6]), .A1N(n174), .Y(n289)
         );
  OAI2BB2X1M U314 ( .B0(n430), .B1(n177), .A0N(Reg_0[0]), .A1N(n177), .Y(n299)
         );
  OAI2BB2X1M U315 ( .B0(n431), .B1(n177), .A0N(Reg_0[1]), .A1N(n177), .Y(n300)
         );
  OAI2BB2X1M U316 ( .B0(n432), .B1(n177), .A0N(Reg_0[2]), .A1N(n177), .Y(n301)
         );
  OAI2BB2X1M U317 ( .B0(n433), .B1(n177), .A0N(Reg_0[3]), .A1N(n177), .Y(n302)
         );
  OAI2BB2X1M U318 ( .B0(n434), .B1(n177), .A0N(Reg_0[4]), .A1N(n177), .Y(n303)
         );
  OAI2BB2X1M U319 ( .B0(n435), .B1(n177), .A0N(Reg_0[5]), .A1N(n177), .Y(n304)
         );
  OAI2BB2X1M U320 ( .B0(n436), .B1(n177), .A0N(Reg_0[6]), .A1N(n177), .Y(n305)
         );
  OAI2BB2X1M U321 ( .B0(n429), .B1(n177), .A0N(Reg_0[7]), .A1N(n177), .Y(n306)
         );
  OAI2BB2X1M U322 ( .B0(n435), .B1(n173), .A0N(Reg_3[5]), .A1N(n173), .Y(n280)
         );
  OAI2BB2X1M U323 ( .B0(n430), .B1(n174), .A0N(Reg_2[0]), .A1N(n174), .Y(n283)
         );
  OAI2BB2X1M U324 ( .B0(n429), .B1(n174), .A0N(Reg_2[7]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U325 ( .B0(n430), .B1(n162), .A0N(\reg_file[9][0] ), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U326 ( .B0(n431), .B1(n162), .A0N(\reg_file[9][1] ), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U327 ( .B0(n432), .B1(n162), .A0N(\reg_file[9][2] ), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U328 ( .B0(n433), .B1(n162), .A0N(\reg_file[9][3] ), .A1N(n162), 
        .Y(n230) );
  OAI2BB2X1M U329 ( .B0(n434), .B1(n162), .A0N(\reg_file[9][4] ), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U330 ( .B0(n435), .B1(n162), .A0N(\reg_file[9][5] ), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U331 ( .B0(n436), .B1(n162), .A0N(\reg_file[9][6] ), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U332 ( .B0(n429), .B1(n162), .A0N(\reg_file[9][7] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U333 ( .B0(n430), .B1(n175), .A0N(Reg_1[0]), .A1N(n175), .Y(n291)
         );
  OAI2BB2X1M U334 ( .B0(n431), .B1(n175), .A0N(Reg_1[1]), .A1N(n175), .Y(n292)
         );
  OAI2BB2X1M U335 ( .B0(n432), .B1(n175), .A0N(Reg_1[2]), .A1N(n175), .Y(n293)
         );
  OAI2BB2X1M U336 ( .B0(n433), .B1(n175), .A0N(Reg_1[3]), .A1N(n175), .Y(n294)
         );
  OAI2BB2X1M U337 ( .B0(n434), .B1(n175), .A0N(Reg_1[4]), .A1N(n175), .Y(n295)
         );
  OAI2BB2X1M U338 ( .B0(n435), .B1(n175), .A0N(Reg_1[5]), .A1N(n175), .Y(n296)
         );
  OAI2BB2X1M U339 ( .B0(n436), .B1(n175), .A0N(Reg_1[6]), .A1N(n175), .Y(n297)
         );
  OAI2BB2X1M U340 ( .B0(n429), .B1(n175), .A0N(Reg_1[7]), .A1N(n175), .Y(n298)
         );
  AOI22X1M U341 ( .A0(\reg_file[10][0] ), .A1(n409), .B0(\reg_file[11][0] ), 
        .B1(n408), .Y(n143) );
  AOI22X1M U342 ( .A0(\reg_file[8][0] ), .A1(n411), .B0(\reg_file[9][0] ), 
        .B1(n410), .Y(n142) );
  CLKNAND2X2M U343 ( .A(N14), .B(n428), .Y(n390) );
  AOI21X1M U344 ( .A0(n143), .A1(n142), .B0(n390), .Y(n317) );
  AOI22X1M U345 ( .A0(\reg_file[14][0] ), .A1(n409), .B0(\reg_file[15][0] ), 
        .B1(n408), .Y(n145) );
  AOI22X1M U346 ( .A0(\reg_file[12][0] ), .A1(n411), .B0(\reg_file[13][0] ), 
        .B1(n410), .Y(n144) );
  CLKNAND2X2M U347 ( .A(N14), .B(N13), .Y(n393) );
  AOI21X1M U348 ( .A0(n145), .A1(n144), .B0(n393), .Y(n316) );
  AOI22X1M U349 ( .A0(Reg_2[0]), .A1(n409), .B0(Reg_3[0]), .B1(n408), .Y(n147)
         );
  AOI22X1M U350 ( .A0(Reg_0[0]), .A1(n411), .B0(Reg_1[0]), .B1(n410), .Y(n146)
         );
  CLKNAND2X2M U351 ( .A(n428), .B(n406), .Y(n396) );
  AOI21X1M U352 ( .A0(n147), .A1(n146), .B0(n396), .Y(n315) );
  AOI22X1M U353 ( .A0(\reg_file[6][0] ), .A1(n409), .B0(\reg_file[7][0] ), 
        .B1(n408), .Y(n149) );
  AOI22X1M U354 ( .A0(\reg_file[4][0] ), .A1(n411), .B0(\reg_file[5][0] ), 
        .B1(n410), .Y(n148) );
  CLKNAND2X2M U355 ( .A(N13), .B(n406), .Y(n399) );
  AOI21X1M U356 ( .A0(n149), .A1(n148), .B0(n399), .Y(n150) );
  OR4X1M U357 ( .A(n317), .B(n316), .C(n315), .D(n150), .Y(N43) );
  AOI22X1M U358 ( .A0(\reg_file[10][1] ), .A1(n409), .B0(\reg_file[11][1] ), 
        .B1(n408), .Y(n319) );
  AOI22X1M U359 ( .A0(\reg_file[8][1] ), .A1(n411), .B0(\reg_file[9][1] ), 
        .B1(n410), .Y(n318) );
  AOI21X1M U360 ( .A0(n319), .A1(n318), .B0(n390), .Y(n329) );
  AOI22X1M U361 ( .A0(\reg_file[14][1] ), .A1(n409), .B0(\reg_file[15][1] ), 
        .B1(n408), .Y(n321) );
  AOI22X1M U362 ( .A0(\reg_file[12][1] ), .A1(n411), .B0(\reg_file[13][1] ), 
        .B1(n410), .Y(n320) );
  AOI21X1M U363 ( .A0(n321), .A1(n320), .B0(n393), .Y(n328) );
  AOI22X1M U364 ( .A0(Reg_2[1]), .A1(n409), .B0(Reg_3[1]), .B1(n408), .Y(n323)
         );
  AOI22X1M U365 ( .A0(Reg_0[1]), .A1(n411), .B0(Reg_1[1]), .B1(n410), .Y(n322)
         );
  AOI21X1M U366 ( .A0(n323), .A1(n322), .B0(n396), .Y(n327) );
  AOI22X1M U367 ( .A0(\reg_file[6][1] ), .A1(n409), .B0(\reg_file[7][1] ), 
        .B1(n408), .Y(n325) );
  AOI22X1M U368 ( .A0(\reg_file[4][1] ), .A1(n411), .B0(\reg_file[5][1] ), 
        .B1(n410), .Y(n324) );
  AOI21X1M U369 ( .A0(n325), .A1(n324), .B0(n399), .Y(n326) );
  OR4X1M U370 ( .A(n329), .B(n328), .C(n327), .D(n326), .Y(N42) );
  AOI22X1M U371 ( .A0(\reg_file[10][2] ), .A1(n409), .B0(\reg_file[11][2] ), 
        .B1(n408), .Y(n331) );
  AOI22X1M U372 ( .A0(\reg_file[8][2] ), .A1(n411), .B0(\reg_file[9][2] ), 
        .B1(n410), .Y(n330) );
  AOI21X1M U373 ( .A0(n331), .A1(n330), .B0(n390), .Y(n341) );
  AOI22X1M U374 ( .A0(\reg_file[14][2] ), .A1(n409), .B0(\reg_file[15][2] ), 
        .B1(n408), .Y(n333) );
  AOI22X1M U375 ( .A0(\reg_file[12][2] ), .A1(n411), .B0(\reg_file[13][2] ), 
        .B1(n410), .Y(n332) );
  AOI21X1M U376 ( .A0(n333), .A1(n332), .B0(n393), .Y(n340) );
  AOI22X1M U377 ( .A0(Reg_2[2]), .A1(n409), .B0(Reg_3[2]), .B1(n408), .Y(n335)
         );
  AOI22X1M U378 ( .A0(Reg_0[2]), .A1(n411), .B0(Reg_1[2]), .B1(n410), .Y(n334)
         );
  AOI21X1M U379 ( .A0(n335), .A1(n334), .B0(n396), .Y(n339) );
  AOI22X1M U380 ( .A0(\reg_file[6][2] ), .A1(n409), .B0(\reg_file[7][2] ), 
        .B1(n408), .Y(n337) );
  AOI22X1M U381 ( .A0(\reg_file[4][2] ), .A1(n411), .B0(\reg_file[5][2] ), 
        .B1(n410), .Y(n336) );
  AOI21X1M U382 ( .A0(n337), .A1(n336), .B0(n399), .Y(n338) );
  OR4X1M U383 ( .A(n341), .B(n340), .C(n339), .D(n338), .Y(N41) );
  AOI22X1M U384 ( .A0(\reg_file[10][3] ), .A1(n409), .B0(\reg_file[11][3] ), 
        .B1(n408), .Y(n343) );
  AOI22X1M U385 ( .A0(\reg_file[8][3] ), .A1(n411), .B0(\reg_file[9][3] ), 
        .B1(n410), .Y(n342) );
  AOI21X1M U386 ( .A0(n343), .A1(n342), .B0(n390), .Y(n353) );
  AOI22X1M U387 ( .A0(\reg_file[14][3] ), .A1(n409), .B0(\reg_file[15][3] ), 
        .B1(n408), .Y(n345) );
  AOI22X1M U388 ( .A0(\reg_file[12][3] ), .A1(n411), .B0(\reg_file[13][3] ), 
        .B1(n410), .Y(n344) );
  AOI21X1M U389 ( .A0(n345), .A1(n344), .B0(n393), .Y(n352) );
  AOI22X1M U390 ( .A0(Reg_2[3]), .A1(n409), .B0(Reg_3[3]), .B1(n408), .Y(n347)
         );
  AOI22X1M U391 ( .A0(Reg_0[3]), .A1(n411), .B0(Reg_1[3]), .B1(n410), .Y(n346)
         );
  AOI21X1M U392 ( .A0(n347), .A1(n346), .B0(n396), .Y(n351) );
  AOI22X1M U393 ( .A0(\reg_file[6][3] ), .A1(n409), .B0(\reg_file[7][3] ), 
        .B1(n408), .Y(n349) );
  AOI22X1M U394 ( .A0(\reg_file[4][3] ), .A1(n411), .B0(\reg_file[5][3] ), 
        .B1(n410), .Y(n348) );
  AOI21X1M U395 ( .A0(n349), .A1(n348), .B0(n399), .Y(n350) );
  OR4X1M U396 ( .A(n353), .B(n352), .C(n351), .D(n350), .Y(N40) );
  AOI22X1M U397 ( .A0(\reg_file[10][4] ), .A1(n409), .B0(\reg_file[11][4] ), 
        .B1(n408), .Y(n355) );
  AOI22X1M U398 ( .A0(\reg_file[8][4] ), .A1(n411), .B0(\reg_file[9][4] ), 
        .B1(n410), .Y(n354) );
  AOI21X1M U399 ( .A0(n355), .A1(n354), .B0(n390), .Y(n365) );
  AOI22X1M U400 ( .A0(\reg_file[14][4] ), .A1(n409), .B0(\reg_file[15][4] ), 
        .B1(n408), .Y(n357) );
  AOI22X1M U401 ( .A0(\reg_file[12][4] ), .A1(n411), .B0(\reg_file[13][4] ), 
        .B1(n410), .Y(n356) );
  AOI21X1M U402 ( .A0(n357), .A1(n356), .B0(n393), .Y(n364) );
  AOI22X1M U403 ( .A0(Reg_2[4]), .A1(n409), .B0(Reg_3[4]), .B1(n408), .Y(n359)
         );
  AOI22X1M U404 ( .A0(Reg_0[4]), .A1(n411), .B0(Reg_1[4]), .B1(n410), .Y(n358)
         );
  AOI21X1M U405 ( .A0(n359), .A1(n358), .B0(n396), .Y(n363) );
  AOI22X1M U406 ( .A0(\reg_file[6][4] ), .A1(n409), .B0(\reg_file[7][4] ), 
        .B1(n408), .Y(n361) );
  AOI22X1M U407 ( .A0(\reg_file[4][4] ), .A1(n411), .B0(\reg_file[5][4] ), 
        .B1(n410), .Y(n360) );
  AOI21X1M U408 ( .A0(n361), .A1(n360), .B0(n399), .Y(n362) );
  OR4X1M U409 ( .A(n365), .B(n364), .C(n363), .D(n362), .Y(N39) );
  AOI22X1M U410 ( .A0(\reg_file[10][5] ), .A1(n409), .B0(\reg_file[11][5] ), 
        .B1(n408), .Y(n367) );
  AOI22X1M U411 ( .A0(\reg_file[8][5] ), .A1(n411), .B0(\reg_file[9][5] ), 
        .B1(n410), .Y(n366) );
  AOI21X1M U412 ( .A0(n367), .A1(n366), .B0(n390), .Y(n377) );
  AOI22X1M U413 ( .A0(\reg_file[14][5] ), .A1(n409), .B0(\reg_file[15][5] ), 
        .B1(n408), .Y(n369) );
  AOI22X1M U414 ( .A0(\reg_file[12][5] ), .A1(n411), .B0(\reg_file[13][5] ), 
        .B1(n410), .Y(n368) );
  AOI21X1M U415 ( .A0(n369), .A1(n368), .B0(n393), .Y(n376) );
  AOI22X1M U416 ( .A0(Reg_2[5]), .A1(n409), .B0(Reg_3[5]), .B1(n408), .Y(n371)
         );
  AOI22X1M U417 ( .A0(Reg_0[5]), .A1(n411), .B0(Reg_1[5]), .B1(n410), .Y(n370)
         );
  AOI21X1M U418 ( .A0(n371), .A1(n370), .B0(n396), .Y(n375) );
  AOI22X1M U419 ( .A0(\reg_file[6][5] ), .A1(n409), .B0(\reg_file[7][5] ), 
        .B1(n408), .Y(n373) );
  AOI22X1M U420 ( .A0(\reg_file[4][5] ), .A1(n411), .B0(\reg_file[5][5] ), 
        .B1(n410), .Y(n372) );
  AOI21X1M U421 ( .A0(n373), .A1(n372), .B0(n399), .Y(n374) );
  OR4X1M U422 ( .A(n377), .B(n376), .C(n375), .D(n374), .Y(N38) );
  AOI22X1M U423 ( .A0(\reg_file[10][6] ), .A1(n409), .B0(\reg_file[11][6] ), 
        .B1(n408), .Y(n379) );
  AOI22X1M U424 ( .A0(\reg_file[8][6] ), .A1(n411), .B0(\reg_file[9][6] ), 
        .B1(n410), .Y(n378) );
  AOI21X1M U425 ( .A0(n379), .A1(n378), .B0(n390), .Y(n389) );
  AOI22X1M U426 ( .A0(\reg_file[14][6] ), .A1(n409), .B0(\reg_file[15][6] ), 
        .B1(n408), .Y(n381) );
  AOI22X1M U427 ( .A0(\reg_file[12][6] ), .A1(n411), .B0(\reg_file[13][6] ), 
        .B1(n410), .Y(n380) );
  AOI21X1M U428 ( .A0(n381), .A1(n380), .B0(n393), .Y(n388) );
  AOI22X1M U429 ( .A0(Reg_2[6]), .A1(n409), .B0(Reg_3[6]), .B1(n408), .Y(n383)
         );
  AOI22X1M U430 ( .A0(Reg_0[6]), .A1(n411), .B0(Reg_1[6]), .B1(n410), .Y(n382)
         );
  AOI21X1M U431 ( .A0(n383), .A1(n382), .B0(n396), .Y(n387) );
  AOI22X1M U432 ( .A0(\reg_file[6][6] ), .A1(n409), .B0(\reg_file[7][6] ), 
        .B1(n408), .Y(n385) );
  AOI22X1M U433 ( .A0(\reg_file[4][6] ), .A1(n411), .B0(\reg_file[5][6] ), 
        .B1(n410), .Y(n384) );
  AOI21X1M U434 ( .A0(n385), .A1(n384), .B0(n399), .Y(n386) );
  OR4X1M U435 ( .A(n389), .B(n388), .C(n387), .D(n386), .Y(N37) );
  AOI22X1M U436 ( .A0(\reg_file[10][7] ), .A1(n409), .B0(\reg_file[11][7] ), 
        .B1(n408), .Y(n392) );
  AOI22X1M U437 ( .A0(\reg_file[8][7] ), .A1(n411), .B0(\reg_file[9][7] ), 
        .B1(n410), .Y(n391) );
  AOI21X1M U438 ( .A0(n392), .A1(n391), .B0(n390), .Y(n405) );
  AOI22X1M U439 ( .A0(\reg_file[14][7] ), .A1(n409), .B0(\reg_file[15][7] ), 
        .B1(n408), .Y(n395) );
  AOI22X1M U440 ( .A0(\reg_file[12][7] ), .A1(n411), .B0(\reg_file[13][7] ), 
        .B1(n410), .Y(n394) );
  AOI21X1M U441 ( .A0(n395), .A1(n394), .B0(n393), .Y(n404) );
  AOI22X1M U442 ( .A0(Reg_2[7]), .A1(n409), .B0(Reg_3[7]), .B1(n408), .Y(n398)
         );
  AOI22X1M U443 ( .A0(Reg_0[7]), .A1(n411), .B0(Reg_1[7]), .B1(n410), .Y(n397)
         );
  AOI21X1M U444 ( .A0(n398), .A1(n397), .B0(n396), .Y(n403) );
  AOI22X1M U445 ( .A0(\reg_file[6][7] ), .A1(n409), .B0(\reg_file[7][7] ), 
        .B1(n408), .Y(n401) );
  AOI22X1M U446 ( .A0(\reg_file[4][7] ), .A1(n411), .B0(\reg_file[5][7] ), 
        .B1(n410), .Y(n400) );
  AOI21X1M U447 ( .A0(n401), .A1(n400), .B0(n399), .Y(n402) );
  OR4X1M U448 ( .A(n405), .B(n404), .C(n403), .D(n402), .Y(N36) );
  DLY1X1M U449 ( .A(test_se), .Y(n442) );
  DLY1X1M U450 ( .A(test_se), .Y(n443) );
  DLY1X1M U451 ( .A(test_se), .Y(n444) );
  DLY1X1M U452 ( .A(test_se), .Y(n445) );
endmodule


module CLK_GATE_DFT ( test_en, CLK_EN, CLK, GATED_CLK );
  input test_en, CLK_EN, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[1]), .Y(n17) );
  INVX2M U28 ( .A(b[2]), .Y(n16) );
  INVX2M U29 ( .A(b[3]), .Y(n15) );
  INVX2M U30 ( .A(b[4]), .Y(n14) );
  INVX2M U31 ( .A(b[5]), .Y(n13) );
  INVX2M U32 ( .A(b[6]), .Y(n12) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[0]), .Y(n9) );
  INVX2M U3 ( .A(B[2]), .Y(n7) );
  INVX2M U4 ( .A(B[3]), .Y(n6) );
  INVX2M U5 ( .A(B[4]), .Y(n5) );
  INVX2M U6 ( .A(B[5]), .Y(n4) );
  INVX2M U7 ( .A(B[6]), .Y(n3) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(n9), .Y(SUM[6]) );
  INVX2M U5 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U8 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n22) );
  INVX2M U19 ( .A(\ab[0][3] ), .Y(n18) );
  INVX2M U20 ( .A(\ab[0][5] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n17) );
  INVX2M U22 ( .A(\ab[0][4] ), .Y(n19) );
  INVX2M U23 ( .A(\ab[0][6] ), .Y(n21) );
  AND2X2M U24 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U25 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U28 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U29 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\ab[1][6] ), .B(n22), .Y(\SUMB[1][6] ) );
  XNOR2X2M U31 ( .A(\ab[1][2] ), .B(n18), .Y(\SUMB[1][2] ) );
  XNOR2X2M U32 ( .A(\ab[1][3] ), .B(n19), .Y(\SUMB[1][3] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n20), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n21), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][1] ), .B(n17), .Y(\SUMB[1][1] ) );
  INVX2M U36 ( .A(A[3]), .Y(n27) );
  INVX2M U37 ( .A(A[5]), .Y(n25) );
  INVX2M U38 ( .A(A[2]), .Y(n28) );
  INVX2M U39 ( .A(A[7]), .Y(n23) );
  INVX2M U40 ( .A(A[0]), .Y(n30) );
  INVX2M U41 ( .A(A[4]), .Y(n26) );
  INVX2M U42 ( .A(A[6]), .Y(n24) );
  INVX2M U43 ( .A(A[1]), .Y(n29) );
  INVX2M U44 ( .A(B[6]), .Y(n32) );
  INVX2M U45 ( .A(B[4]), .Y(n34) );
  INVX2M U46 ( .A(B[0]), .Y(n38) );
  INVX2M U47 ( .A(B[7]), .Y(n31) );
  INVX2M U48 ( .A(B[5]), .Y(n33) );
  INVX2M U49 ( .A(B[2]), .Y(n36) );
  INVX2M U50 ( .A(B[3]), .Y(n35) );
  INVX2M U51 ( .A(B[1]), .Y(n37) );
  NOR2X1M U53 ( .A(n23), .B(n31), .Y(\ab[7][7] ) );
  NOR2X1M U54 ( .A(n23), .B(n32), .Y(\ab[7][6] ) );
  NOR2X1M U55 ( .A(n23), .B(n33), .Y(\ab[7][5] ) );
  NOR2X1M U56 ( .A(n23), .B(n34), .Y(\ab[7][4] ) );
  NOR2X1M U57 ( .A(n23), .B(n35), .Y(\ab[7][3] ) );
  NOR2X1M U58 ( .A(n23), .B(n36), .Y(\ab[7][2] ) );
  NOR2X1M U59 ( .A(n23), .B(n37), .Y(\ab[7][1] ) );
  NOR2X1M U60 ( .A(n23), .B(n38), .Y(\ab[7][0] ) );
  NOR2X1M U61 ( .A(n31), .B(n24), .Y(\ab[6][7] ) );
  NOR2X1M U62 ( .A(n32), .B(n24), .Y(\ab[6][6] ) );
  NOR2X1M U63 ( .A(n33), .B(n24), .Y(\ab[6][5] ) );
  NOR2X1M U64 ( .A(n34), .B(n24), .Y(\ab[6][4] ) );
  NOR2X1M U65 ( .A(n35), .B(n24), .Y(\ab[6][3] ) );
  NOR2X1M U66 ( .A(n36), .B(n24), .Y(\ab[6][2] ) );
  NOR2X1M U67 ( .A(n37), .B(n24), .Y(\ab[6][1] ) );
  NOR2X1M U68 ( .A(n38), .B(n24), .Y(\ab[6][0] ) );
  NOR2X1M U69 ( .A(n31), .B(n25), .Y(\ab[5][7] ) );
  NOR2X1M U70 ( .A(n32), .B(n25), .Y(\ab[5][6] ) );
  NOR2X1M U71 ( .A(n33), .B(n25), .Y(\ab[5][5] ) );
  NOR2X1M U72 ( .A(n34), .B(n25), .Y(\ab[5][4] ) );
  NOR2X1M U73 ( .A(n35), .B(n25), .Y(\ab[5][3] ) );
  NOR2X1M U74 ( .A(n36), .B(n25), .Y(\ab[5][2] ) );
  NOR2X1M U75 ( .A(n37), .B(n25), .Y(\ab[5][1] ) );
  NOR2X1M U76 ( .A(n38), .B(n25), .Y(\ab[5][0] ) );
  NOR2X1M U77 ( .A(n31), .B(n26), .Y(\ab[4][7] ) );
  NOR2X1M U78 ( .A(n32), .B(n26), .Y(\ab[4][6] ) );
  NOR2X1M U79 ( .A(n33), .B(n26), .Y(\ab[4][5] ) );
  NOR2X1M U80 ( .A(n34), .B(n26), .Y(\ab[4][4] ) );
  NOR2X1M U81 ( .A(n35), .B(n26), .Y(\ab[4][3] ) );
  NOR2X1M U82 ( .A(n36), .B(n26), .Y(\ab[4][2] ) );
  NOR2X1M U83 ( .A(n37), .B(n26), .Y(\ab[4][1] ) );
  NOR2X1M U84 ( .A(n38), .B(n26), .Y(\ab[4][0] ) );
  NOR2X1M U85 ( .A(n31), .B(n27), .Y(\ab[3][7] ) );
  NOR2X1M U86 ( .A(n32), .B(n27), .Y(\ab[3][6] ) );
  NOR2X1M U87 ( .A(n33), .B(n27), .Y(\ab[3][5] ) );
  NOR2X1M U88 ( .A(n34), .B(n27), .Y(\ab[3][4] ) );
  NOR2X1M U89 ( .A(n35), .B(n27), .Y(\ab[3][3] ) );
  NOR2X1M U90 ( .A(n36), .B(n27), .Y(\ab[3][2] ) );
  NOR2X1M U91 ( .A(n37), .B(n27), .Y(\ab[3][1] ) );
  NOR2X1M U92 ( .A(n38), .B(n27), .Y(\ab[3][0] ) );
  NOR2X1M U93 ( .A(n31), .B(n28), .Y(\ab[2][7] ) );
  NOR2X1M U94 ( .A(n32), .B(n28), .Y(\ab[2][6] ) );
  NOR2X1M U95 ( .A(n33), .B(n28), .Y(\ab[2][5] ) );
  NOR2X1M U96 ( .A(n34), .B(n28), .Y(\ab[2][4] ) );
  NOR2X1M U97 ( .A(n35), .B(n28), .Y(\ab[2][3] ) );
  NOR2X1M U98 ( .A(n36), .B(n28), .Y(\ab[2][2] ) );
  NOR2X1M U99 ( .A(n37), .B(n28), .Y(\ab[2][1] ) );
  NOR2X1M U100 ( .A(n38), .B(n28), .Y(\ab[2][0] ) );
  NOR2X1M U101 ( .A(n31), .B(n29), .Y(\ab[1][7] ) );
  NOR2X1M U102 ( .A(n32), .B(n29), .Y(\ab[1][6] ) );
  NOR2X1M U103 ( .A(n33), .B(n29), .Y(\ab[1][5] ) );
  NOR2X1M U104 ( .A(n34), .B(n29), .Y(\ab[1][4] ) );
  NOR2X1M U105 ( .A(n35), .B(n29), .Y(\ab[1][3] ) );
  NOR2X1M U106 ( .A(n36), .B(n29), .Y(\ab[1][2] ) );
  NOR2X1M U107 ( .A(n37), .B(n29), .Y(\ab[1][1] ) );
  NOR2X1M U108 ( .A(n38), .B(n29), .Y(\ab[1][0] ) );
  NOR2X1M U109 ( .A(n31), .B(n30), .Y(\ab[0][7] ) );
  NOR2X1M U110 ( .A(n32), .B(n30), .Y(\ab[0][6] ) );
  NOR2X1M U111 ( .A(n33), .B(n30), .Y(\ab[0][5] ) );
  NOR2X1M U112 ( .A(n34), .B(n30), .Y(\ab[0][4] ) );
  NOR2X1M U113 ( .A(n35), .B(n30), .Y(\ab[0][3] ) );
  NOR2X1M U114 ( .A(n36), .B(n30), .Y(\ab[0][2] ) );
  NOR2X1M U115 ( .A(n37), .B(n30), .Y(\ab[0][1] ) );
  NOR2X1M U116 ( .A(n38), .B(n30), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output OUT_VALID;
  wire   N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N122, N123,
         N124, N125, N126, N127, N128, N129, N162, N163, n9, n10, n11, n12,
         n14, n15, n16, n17, n20, n21, n22, n24, n25, n27, n28, n29, n32, n35,
         n36, n37, n38, n39, n41, n43, n44, n45, n46, n47, n48, n50, n52, n53,
         n54, n55, n56, n58, n60, n61, n62, n63, n64, n66, n68, n69, n70, n71,
         n72, n74, n76, n77, n78, n79, n80, n81, n83, n85, n86, n87, n88, n89,
         n91, n93, n94, n95, n96, n97, n98, n99, n100, n102, n103, n105, n106,
         n107, n108, n109, n111, n112, n113, n114, n115, n116, n118, n120,
         n122, n124, n126, n128, n130, n132, n134, n3, n4, n5, n6, n7, n8, n13,
         n18, n19, n23, n26, n30, n31, n33, n34, n40, n42, n49, n51, n57, n59,
         n65, n67, n73, n75, n82, n84, n90, n92, n101, n104, n110, n136, n138,
         n140, n142, n144, n146, n148, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168;

  SDFFRQX2M OUT_VALID_reg ( .D(Enable), .SI(ALU_OUT[15]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(OUT_VALID) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n84), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n90), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n92), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n101), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n104), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n110), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n136), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(n134), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n132), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n130), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n128), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n126), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n124), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n122), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n120), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n118), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  INVX2M U3 ( .A(n91), .Y(n140) );
  NOR3BX2M U4 ( .AN(n103), .B(n151), .C(n17), .Y(n43) );
  NAND2X2M U5 ( .A(n80), .B(n151), .Y(n25) );
  NOR2X2M U8 ( .A(n150), .B(n152), .Y(n93) );
  INVX2M U9 ( .A(n27), .Y(n148) );
  INVX2M U10 ( .A(n29), .Y(n146) );
  NAND2X2M U11 ( .A(n108), .B(n153), .Y(n91) );
  INVX2M U12 ( .A(n105), .Y(n150) );
  AND2X2M U13 ( .A(n100), .B(n152), .Y(n108) );
  OAI21X2M U14 ( .A0(n102), .A1(n94), .B0(Enable), .Y(n28) );
  NOR2X2M U15 ( .A(ALU_FUN[1]), .B(n150), .Y(n102) );
  OAI21X2M U16 ( .A0(n93), .A1(n94), .B0(Enable), .Y(n24) );
  NOR3X2M U17 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .C(n17), .Y(n80) );
  NOR3X2M U18 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n144), .Y(n100) );
  NAND3X2M U19 ( .A(Enable), .B(n153), .C(n93), .Y(n27) );
  NAND3X2M U20 ( .A(n105), .B(Enable), .C(n103), .Y(n29) );
  NAND2X2M U21 ( .A(Enable), .B(ALU_FUN[3]), .Y(n17) );
  AND3X2M U22 ( .A(n100), .B(ALU_FUN[1]), .C(n153), .Y(n32) );
  NOR2X2M U23 ( .A(n151), .B(ALU_FUN[3]), .Y(n105) );
  NOR2X2M U24 ( .A(n153), .B(ALU_FUN[1]), .Y(n103) );
  INVX2M U25 ( .A(Enable), .Y(n144) );
  INVX2M U26 ( .A(ALU_FUN[1]), .Y(n152) );
  INVX2M U27 ( .A(ALU_FUN[0]), .Y(n153) );
  INVX2M U28 ( .A(ALU_FUN[2]), .Y(n151) );
  AND2X2M U29 ( .A(n108), .B(ALU_FUN[0]), .Y(n21) );
  AND3X2M U30 ( .A(ALU_FUN[3]), .B(n151), .C(n103), .Y(n94) );
  AND2X2M U31 ( .A(n80), .B(ALU_FUN[2]), .Y(n14) );
  INVX2M U32 ( .A(n106), .Y(n138) );
  OAI221X1M U33 ( .A0(n18), .A1(n24), .B0(n25), .B1(n154), .C0(n27), .Y(n89)
         );
  OAI221X1M U34 ( .A0(n3), .A1(n24), .B0(n25), .B1(n160), .C0(n27), .Y(n22) );
  OAI221X1M U35 ( .A0(n5), .A1(n24), .B0(n25), .B1(n82), .C0(n27), .Y(n48) );
  OAI221X1M U36 ( .A0(n6), .A1(n24), .B0(n25), .B1(n158), .C0(n27), .Y(n56) );
  OAI221X1M U37 ( .A0(n7), .A1(n24), .B0(n25), .B1(n157), .C0(n27), .Y(n64) );
  OAI221X1M U38 ( .A0(n8), .A1(n24), .B0(n25), .B1(n156), .C0(n27), .Y(n72) );
  OAI221X1M U39 ( .A0(n13), .A1(n24), .B0(n25), .B1(n155), .C0(n27), .Y(n81)
         );
  OAI221X1M U40 ( .A0(n4), .A1(n24), .B0(n159), .B1(n25), .C0(n27), .Y(n39) );
  OAI221X1M U41 ( .A0(n160), .A1(n28), .B0(n3), .B1(n25), .C0(n29), .Y(n20) );
  OAI221X1M U42 ( .A0(n28), .A1(n154), .B0(n18), .B1(n25), .C0(n29), .Y(n95)
         );
  OAI221X1M U43 ( .A0(n159), .A1(n28), .B0(n4), .B1(n25), .C0(n29), .Y(n41) );
  OAI221X1M U44 ( .A0(n28), .A1(n82), .B0(n5), .B1(n25), .C0(n29), .Y(n50) );
  OAI221X1M U45 ( .A0(n28), .A1(n158), .B0(n6), .B1(n25), .C0(n29), .Y(n58) );
  OAI221X1M U46 ( .A0(n28), .A1(n157), .B0(n7), .B1(n25), .C0(n29), .Y(n66) );
  OAI221X1M U47 ( .A0(n28), .A1(n156), .B0(n8), .B1(n25), .C0(n29), .Y(n74) );
  OAI221X1M U48 ( .A0(n28), .A1(n155), .B0(n13), .B1(n25), .C0(n29), .Y(n83)
         );
  NAND2X2M U49 ( .A(N103), .B(n21), .Y(n106) );
  NAND4X2M U50 ( .A(n164), .B(n163), .C(n162), .D(n161), .Y(n97) );
  INVX2M U51 ( .A(n96), .Y(n142) );
  OAI211X2M U52 ( .A0(n97), .A1(n98), .B0(ALU_FUN[0]), .C0(n99), .Y(n96) );
  AND2X2M U53 ( .A(n100), .B(ALU_FUN[1]), .Y(n99) );
  NAND4X2M U54 ( .A(n168), .B(n167), .C(n166), .D(n165), .Y(n98) );
  INVX2M U55 ( .A(n6), .Y(n158) );
  INVX2M U56 ( .A(n8), .Y(n156) );
  INVX2M U57 ( .A(n4), .Y(n159) );
  INVX2M U58 ( .A(n3), .Y(n160) );
  INVX2M U59 ( .A(n7), .Y(n157) );
  INVX2M U60 ( .A(n13), .Y(n155) );
  INVX2M U61 ( .A(n18), .Y(n154) );
  INVX2M U62 ( .A(n5), .Y(n82) );
  AOI22X1M U63 ( .A0(n148), .A1(n160), .B0(ALU_OUT[0]), .B1(n144), .Y(n9) );
  AOI22X1M U64 ( .A0(n148), .A1(n159), .B0(ALU_OUT[1]), .B1(n144), .Y(n35) );
  AOI22X1M U65 ( .A0(n148), .A1(n82), .B0(ALU_OUT[2]), .B1(n144), .Y(n44) );
  AOI22X1M U66 ( .A0(n148), .A1(n158), .B0(ALU_OUT[3]), .B1(n144), .Y(n52) );
  AOI22X1M U67 ( .A0(n148), .A1(n157), .B0(ALU_OUT[4]), .B1(n144), .Y(n60) );
  AOI22X1M U68 ( .A0(n148), .A1(n156), .B0(ALU_OUT[5]), .B1(n144), .Y(n68) );
  AOI22X1M U69 ( .A0(n148), .A1(n155), .B0(ALU_OUT[6]), .B1(n144), .Y(n76) );
  AOI22X1M U70 ( .A0(n148), .A1(n154), .B0(ALU_OUT[7]), .B1(n144), .Y(n85) );
  OAI2B11X2M U71 ( .A1N(N94), .A0(n91), .B0(n106), .C0(n107), .Y(n134) );
  AOI22X1M U72 ( .A0(N112), .A1(n32), .B0(ALU_OUT[8]), .B1(n144), .Y(n107) );
  NAND4X2M U73 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n118) );
  AOI221XLM U74 ( .A0(N86), .A1(n140), .B0(n4), .B1(n14), .C0(n15), .Y(n12) );
  AOI222X1M U75 ( .A0(B[0]), .A1(n20), .B0(N95), .B1(n21), .C0(n22), .C1(n168), 
        .Y(n11) );
  AOI222X1M U76 ( .A0(n146), .A1(n3), .B0(N122), .B1(n142), .C0(N104), .C1(n32), .Y(n10) );
  NAND4X2M U77 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n120) );
  AOI222X1M U78 ( .A0(N123), .A1(n142), .B0(n39), .B1(n167), .C0(B[1]), .C1(
        n41), .Y(n37) );
  AOI222X1M U79 ( .A0(N96), .A1(n21), .B0(n5), .B1(n14), .C0(N87), .C1(n140), 
        .Y(n38) );
  AOI222X1M U80 ( .A0(n146), .A1(n4), .B0(n43), .B1(n3), .C0(N105), .C1(n32), 
        .Y(n36) );
  NAND4X2M U81 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n122) );
  AOI222X1M U82 ( .A0(N124), .A1(n142), .B0(n48), .B1(n166), .C0(B[2]), .C1(
        n50), .Y(n46) );
  AOI222X1M U83 ( .A0(N97), .A1(n21), .B0(n6), .B1(n14), .C0(N88), .C1(n140), 
        .Y(n47) );
  AOI222X1M U84 ( .A0(n5), .A1(n146), .B0(n43), .B1(n4), .C0(N106), .C1(n32), 
        .Y(n45) );
  NAND4X2M U85 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n124) );
  AOI222X1M U86 ( .A0(N125), .A1(n142), .B0(n56), .B1(n165), .C0(B[3]), .C1(
        n58), .Y(n54) );
  AOI222X1M U87 ( .A0(N98), .A1(n21), .B0(n7), .B1(n14), .C0(N89), .C1(n140), 
        .Y(n55) );
  AOI222X1M U88 ( .A0(n6), .A1(n146), .B0(n43), .B1(n5), .C0(N107), .C1(n32), 
        .Y(n53) );
  NAND4X2M U89 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n126) );
  AOI222X1M U90 ( .A0(N126), .A1(n142), .B0(n64), .B1(n164), .C0(B[4]), .C1(
        n66), .Y(n62) );
  AOI222X1M U91 ( .A0(N99), .A1(n21), .B0(n8), .B1(n14), .C0(N90), .C1(n140), 
        .Y(n63) );
  AOI222X1M U92 ( .A0(n7), .A1(n146), .B0(n6), .B1(n43), .C0(N108), .C1(n32), 
        .Y(n61) );
  NAND4X2M U93 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n128) );
  AOI222X1M U94 ( .A0(N127), .A1(n142), .B0(n72), .B1(n163), .C0(B[5]), .C1(
        n74), .Y(n70) );
  AOI222X1M U95 ( .A0(N100), .A1(n21), .B0(n13), .B1(n14), .C0(N91), .C1(n140), 
        .Y(n71) );
  AOI222X1M U96 ( .A0(n8), .A1(n146), .B0(n7), .B1(n43), .C0(N109), .C1(n32), 
        .Y(n69) );
  NAND4X2M U97 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n130) );
  AOI222X1M U98 ( .A0(N128), .A1(n142), .B0(n81), .B1(n162), .C0(B[6]), .C1(
        n83), .Y(n78) );
  AOI222X1M U99 ( .A0(N101), .A1(n21), .B0(n18), .B1(n14), .C0(N92), .C1(n140), 
        .Y(n79) );
  AOI222X1M U100 ( .A0(n13), .A1(n146), .B0(n8), .B1(n43), .C0(N110), .C1(n32), 
        .Y(n77) );
  NAND4X2M U101 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n132) );
  AOI22X1M U102 ( .A0(B[7]), .A1(n95), .B0(N129), .B1(n142), .Y(n87) );
  AOI222X1M U103 ( .A0(n89), .A1(n161), .B0(N93), .B1(n140), .C0(N102), .C1(
        n21), .Y(n88) );
  AOI222X1M U104 ( .A0(n18), .A1(n146), .B0(n13), .B1(n43), .C0(N111), .C1(n32), .Y(n86) );
  INVX2M U105 ( .A(n109), .Y(n136) );
  AOI221XLM U106 ( .A0(ALU_OUT[9]), .A1(n144), .B0(N113), .B1(n32), .C0(n138), 
        .Y(n109) );
  INVX2M U107 ( .A(n111), .Y(n110) );
  AOI221XLM U108 ( .A0(ALU_OUT[10]), .A1(n144), .B0(N114), .B1(n32), .C0(n138), 
        .Y(n111) );
  INVX2M U109 ( .A(n112), .Y(n104) );
  AOI221XLM U110 ( .A0(ALU_OUT[11]), .A1(n144), .B0(N115), .B1(n32), .C0(n138), 
        .Y(n112) );
  INVX2M U111 ( .A(n113), .Y(n101) );
  AOI221XLM U112 ( .A0(ALU_OUT[12]), .A1(n144), .B0(N116), .B1(n32), .C0(n138), 
        .Y(n113) );
  INVX2M U113 ( .A(n114), .Y(n92) );
  AOI221XLM U114 ( .A0(ALU_OUT[13]), .A1(n144), .B0(N117), .B1(n32), .C0(n138), 
        .Y(n114) );
  INVX2M U115 ( .A(n115), .Y(n90) );
  AOI221XLM U116 ( .A0(ALU_OUT[14]), .A1(n144), .B0(N118), .B1(n32), .C0(n138), 
        .Y(n115) );
  INVX2M U117 ( .A(n116), .Y(n84) );
  AOI221XLM U118 ( .A0(ALU_OUT[15]), .A1(n144), .B0(N119), .B1(n32), .C0(n138), 
        .Y(n116) );
  NOR4X1M U119 ( .A(ALU_FUN[2]), .B(n16), .C(n17), .D(n152), .Y(n15) );
  AOI22X1M U120 ( .A0(N162), .A1(n153), .B0(N163), .B1(ALU_FUN[0]), .Y(n16) );
  BUFX2M U121 ( .A(A[3]), .Y(n6) );
  BUFX2M U122 ( .A(A[5]), .Y(n8) );
  BUFX2M U123 ( .A(A[2]), .Y(n5) );
  BUFX2M U124 ( .A(A[0]), .Y(n3) );
  BUFX2M U125 ( .A(A[4]), .Y(n7) );
  BUFX2M U126 ( .A(A[6]), .Y(n13) );
  BUFX2M U127 ( .A(A[1]), .Y(n4) );
  BUFX2M U128 ( .A(A[7]), .Y(n18) );
  INVX2M U129 ( .A(B[4]), .Y(n164) );
  INVX2M U147 ( .A(B[6]), .Y(n162) );
  INVX2M U148 ( .A(B[0]), .Y(n168) );
  INVX2M U149 ( .A(B[7]), .Y(n161) );
  INVX2M U150 ( .A(B[5]), .Y(n163) );
  INVX2M U151 ( .A(B[1]), .Y(n167) );
  INVX2M U152 ( .A(B[3]), .Y(n165) );
  INVX2M U153 ( .A(B[2]), .Y(n166) );
  NOR2BX1M U154 ( .AN(B[0]), .B(n3), .Y(n19) );
  OAI2B2X1M U155 ( .A1N(n4), .A0(n19), .B0(B[1]), .B1(n19), .Y(n23) );
  NAND2BX1M U156 ( .AN(n13), .B(B[6]), .Y(n59) );
  CLKNAND2X2M U157 ( .A(B[5]), .B(n156), .Y(n57) );
  NAND2BX1M U158 ( .AN(n7), .B(B[4]), .Y(n42) );
  NAND4X1M U159 ( .A(n23), .B(n59), .C(n57), .D(n42), .Y(n75) );
  CLKNAND2X2M U160 ( .A(B[3]), .B(n158), .Y(n40) );
  CLKNAND2X2M U161 ( .A(B[2]), .B(n82), .Y(n26) );
  CLKNAND2X2M U162 ( .A(n40), .B(n26), .Y(n73) );
  NOR2BX1M U163 ( .AN(B[7]), .B(n18), .Y(n67) );
  NOR2BX1M U164 ( .AN(n3), .B(B[0]), .Y(n31) );
  OAI2BB1X1M U165 ( .A0N(n31), .A1N(n4), .B0(B[1]), .Y(n30) );
  OAI211X1M U166 ( .A0(n4), .A1(n31), .B0(n30), .C0(n26), .Y(n33) );
  OAI221X1M U167 ( .A0(B[2]), .A1(n82), .B0(B[3]), .B1(n158), .C0(n33), .Y(n34) );
  AOI32X1M U168 ( .A0(n42), .A1(n40), .A2(n34), .B0(n7), .B1(n164), .Y(n49) );
  OAI21X1M U169 ( .A0(B[5]), .A1(n156), .B0(n49), .Y(n51) );
  AOI32X1M U170 ( .A0(n59), .A1(n57), .A2(n51), .B0(n13), .B1(n162), .Y(n65)
         );
  OAI2B2X1M U171 ( .A1N(n18), .A0(B[7]), .B0(n67), .B1(n65), .Y(N163) );
  NOR4X1M U172 ( .A(n75), .B(n73), .C(N163), .D(n67), .Y(N162) );
  ALU_DW_div_uns_0 div_50 ( .a({n18, n13, n8, n7, n6, n5, n4, n3}), .b(B), 
        .quotient({N129, N128, N127, N126, N125, N124, N123, N122}) );
  ALU_DW01_sub_0 sub_43 ( .A({1'b0, n18, n13, n8, n7, n6, n5, n4, n3}), .B({
        1'b0, B}), .CI(1'b0), .DIFF({N103, N102, N101, N100, N99, N98, N97, 
        N96, N95}) );
  ALU_DW01_add_0 add_39 ( .A({1'b0, n18, n13, n8, n7, n6, n5, n4, n3}), .B({
        1'b0, B}), .CI(1'b0), .SUM({N94, N93, N92, N91, N90, N89, N88, N87, 
        N86}) );
  ALU_DW02_mult_0 mult_47 ( .A({n18, n13, n8, n7, n6, n5, n4, n3}), .B(B), 
        .TC(1'b0), .PRODUCT({N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104}) );
endmodule


module DATA_SYNC_test_1 ( Unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_so, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   sync_enable_d, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] enable_sync;
  assign test_so = sync_enable_d;

  SDFFRQX2M sync_enable_d_reg ( .D(enable_sync[1]), .SI(sync_bus[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_enable_d) );
  SDFFRQX2M \enable_sync_reg[1]  ( .D(enable_sync[0]), .SI(enable_sync[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(enable_sync[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_sync[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \enable_sync_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(enable_sync[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(sync_enable_d), .B(enable_sync[1]), .Y(n1) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module FIFO_MEM_CNTRL_test_1 ( wclk, wrst_n, winc, waddr, raddr, wdata, rdata, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \FIFO_MEM[0][7] , \FIFO_MEM[0][6] , \FIFO_MEM[0][5] ,
         \FIFO_MEM[0][4] , \FIFO_MEM[0][3] , \FIFO_MEM[0][2] ,
         \FIFO_MEM[0][1] , \FIFO_MEM[0][0] , \FIFO_MEM[1][7] ,
         \FIFO_MEM[1][6] , \FIFO_MEM[1][5] , \FIFO_MEM[1][4] ,
         \FIFO_MEM[1][3] , \FIFO_MEM[1][2] , \FIFO_MEM[1][1] ,
         \FIFO_MEM[1][0] , \FIFO_MEM[2][7] , \FIFO_MEM[2][6] ,
         \FIFO_MEM[2][5] , \FIFO_MEM[2][4] , \FIFO_MEM[2][3] ,
         \FIFO_MEM[2][2] , \FIFO_MEM[2][1] , \FIFO_MEM[2][0] ,
         \FIFO_MEM[3][7] , \FIFO_MEM[3][6] , \FIFO_MEM[3][5] ,
         \FIFO_MEM[3][4] , \FIFO_MEM[3][3] , \FIFO_MEM[3][2] ,
         \FIFO_MEM[3][1] , \FIFO_MEM[3][0] , \FIFO_MEM[4][7] ,
         \FIFO_MEM[4][6] , \FIFO_MEM[4][5] , \FIFO_MEM[4][4] ,
         \FIFO_MEM[4][3] , \FIFO_MEM[4][2] , \FIFO_MEM[4][1] ,
         \FIFO_MEM[4][0] , \FIFO_MEM[5][7] , \FIFO_MEM[5][6] ,
         \FIFO_MEM[5][5] , \FIFO_MEM[5][4] , \FIFO_MEM[5][3] ,
         \FIFO_MEM[5][2] , \FIFO_MEM[5][1] , \FIFO_MEM[5][0] ,
         \FIFO_MEM[6][7] , \FIFO_MEM[6][6] , \FIFO_MEM[6][5] ,
         \FIFO_MEM[6][4] , \FIFO_MEM[6][3] , \FIFO_MEM[6][2] ,
         \FIFO_MEM[6][1] , \FIFO_MEM[6][0] , \FIFO_MEM[7][7] ,
         \FIFO_MEM[7][6] , \FIFO_MEM[7][5] , \FIFO_MEM[7][4] ,
         \FIFO_MEM[7][3] , \FIFO_MEM[7][2] , \FIFO_MEM[7][1] ,
         \FIFO_MEM[7][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n203, n204, n205,
         n206, n207;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign test_so2 = \FIFO_MEM[7][7] ;
  assign test_so1 = \FIFO_MEM[7][0] ;

  SDFFRQX2M \FIFO_MEM_reg[0][7]  ( .D(n148), .SI(\FIFO_MEM[0][6] ), .SE(n207), 
        .CK(wclk), .RN(n185), .Q(\FIFO_MEM[0][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][6]  ( .D(n147), .SI(\FIFO_MEM[0][5] ), .SE(n206), 
        .CK(wclk), .RN(n185), .Q(\FIFO_MEM[0][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][5]  ( .D(n146), .SI(\FIFO_MEM[0][4] ), .SE(n205), 
        .CK(wclk), .RN(n185), .Q(\FIFO_MEM[0][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][4]  ( .D(n145), .SI(\FIFO_MEM[0][3] ), .SE(n204), 
        .CK(wclk), .RN(n185), .Q(\FIFO_MEM[0][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][3]  ( .D(n144), .SI(\FIFO_MEM[0][2] ), .SE(n207), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[0][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][2]  ( .D(n143), .SI(\FIFO_MEM[0][1] ), .SE(n206), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[0][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][1]  ( .D(n142), .SI(\FIFO_MEM[0][0] ), .SE(n205), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[0][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][0]  ( .D(n141), .SI(test_si1), .SE(n204), .CK(
        wclk), .RN(n184), .Q(\FIFO_MEM[0][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][7]  ( .D(n140), .SI(\FIFO_MEM[1][6] ), .SE(n207), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][6]  ( .D(n139), .SI(\FIFO_MEM[1][5] ), .SE(n206), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][5]  ( .D(n138), .SI(\FIFO_MEM[1][4] ), .SE(n205), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][4]  ( .D(n137), .SI(\FIFO_MEM[1][3] ), .SE(n204), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][3]  ( .D(n136), .SI(\FIFO_MEM[1][2] ), .SE(n207), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][2]  ( .D(n135), .SI(\FIFO_MEM[1][1] ), .SE(n206), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][1]  ( .D(n134), .SI(\FIFO_MEM[1][0] ), .SE(n205), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][0]  ( .D(n133), .SI(\FIFO_MEM[0][7] ), .SE(n204), 
        .CK(wclk), .RN(n184), .Q(\FIFO_MEM[1][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][7]  ( .D(n116), .SI(\FIFO_MEM[4][6] ), .SE(n207), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][6]  ( .D(n115), .SI(\FIFO_MEM[4][5] ), .SE(n206), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][5]  ( .D(n114), .SI(\FIFO_MEM[4][4] ), .SE(n205), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][4]  ( .D(n113), .SI(\FIFO_MEM[4][3] ), .SE(n204), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][3]  ( .D(n112), .SI(\FIFO_MEM[4][2] ), .SE(n207), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][2]  ( .D(n111), .SI(\FIFO_MEM[4][1] ), .SE(n206), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][1]  ( .D(n110), .SI(\FIFO_MEM[4][0] ), .SE(n205), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][0]  ( .D(n109), .SI(\FIFO_MEM[3][7] ), .SE(n204), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[4][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][7]  ( .D(n108), .SI(\FIFO_MEM[5][6] ), .SE(n207), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][6]  ( .D(n107), .SI(\FIFO_MEM[5][5] ), .SE(n206), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][5]  ( .D(n106), .SI(\FIFO_MEM[5][4] ), .SE(n205), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][4]  ( .D(n105), .SI(\FIFO_MEM[5][3] ), .SE(n204), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][3]  ( .D(n104), .SI(\FIFO_MEM[5][2] ), .SE(n207), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][2]  ( .D(n103), .SI(\FIFO_MEM[5][1] ), .SE(n206), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][1]  ( .D(n102), .SI(\FIFO_MEM[5][0] ), .SE(n205), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][0]  ( .D(n101), .SI(\FIFO_MEM[4][7] ), .SE(n204), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[5][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][7]  ( .D(n100), .SI(\FIFO_MEM[6][6] ), .SE(n207), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[6][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][6]  ( .D(n99), .SI(\FIFO_MEM[6][5] ), .SE(n206), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[6][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][5]  ( .D(n98), .SI(\FIFO_MEM[6][4] ), .SE(n205), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[6][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][4]  ( .D(n97), .SI(\FIFO_MEM[6][3] ), .SE(n204), 
        .CK(wclk), .RN(n181), .Q(\FIFO_MEM[6][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][3]  ( .D(n96), .SI(\FIFO_MEM[6][2] ), .SE(n207), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[6][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][2]  ( .D(n95), .SI(\FIFO_MEM[6][1] ), .SE(n206), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[6][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][1]  ( .D(n94), .SI(\FIFO_MEM[6][0] ), .SE(n205), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[6][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][0]  ( .D(n93), .SI(\FIFO_MEM[5][7] ), .SE(n204), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[6][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][7]  ( .D(n92), .SI(\FIFO_MEM[7][6] ), .SE(n207), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][6]  ( .D(n91), .SI(\FIFO_MEM[7][5] ), .SE(n206), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][5]  ( .D(n90), .SI(\FIFO_MEM[7][4] ), .SE(n205), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][4]  ( .D(n89), .SI(\FIFO_MEM[7][3] ), .SE(n204), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][3]  ( .D(n88), .SI(\FIFO_MEM[7][2] ), .SE(n207), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][2]  ( .D(n87), .SI(\FIFO_MEM[7][1] ), .SE(n206), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][1]  ( .D(n86), .SI(test_si2), .SE(n205), .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][0]  ( .D(n85), .SI(\FIFO_MEM[6][7] ), .SE(n204), 
        .CK(wclk), .RN(n180), .Q(\FIFO_MEM[7][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][7]  ( .D(n132), .SI(\FIFO_MEM[2][6] ), .SE(n207), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][6]  ( .D(n131), .SI(\FIFO_MEM[2][5] ), .SE(n206), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][5]  ( .D(n130), .SI(\FIFO_MEM[2][4] ), .SE(n205), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][4]  ( .D(n129), .SI(\FIFO_MEM[2][3] ), .SE(n204), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][3]  ( .D(n128), .SI(\FIFO_MEM[2][2] ), .SE(n207), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][2]  ( .D(n127), .SI(\FIFO_MEM[2][1] ), .SE(n206), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][1]  ( .D(n126), .SI(\FIFO_MEM[2][0] ), .SE(n205), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][0]  ( .D(n125), .SI(\FIFO_MEM[1][7] ), .SE(n204), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[2][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][7]  ( .D(n124), .SI(\FIFO_MEM[3][6] ), .SE(n207), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[3][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][6]  ( .D(n123), .SI(\FIFO_MEM[3][5] ), .SE(n206), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[3][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][5]  ( .D(n122), .SI(\FIFO_MEM[3][4] ), .SE(n205), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[3][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][4]  ( .D(n121), .SI(\FIFO_MEM[3][3] ), .SE(n204), 
        .CK(wclk), .RN(n183), .Q(\FIFO_MEM[3][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][3]  ( .D(n120), .SI(\FIFO_MEM[3][2] ), .SE(n207), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[3][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][2]  ( .D(n119), .SI(\FIFO_MEM[3][1] ), .SE(n206), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[3][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][1]  ( .D(n118), .SI(\FIFO_MEM[3][0] ), .SE(n205), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[3][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][0]  ( .D(n117), .SI(\FIFO_MEM[2][7] ), .SE(n204), 
        .CK(wclk), .RN(n182), .Q(\FIFO_MEM[3][0] ) );
  BUFX2M U66 ( .A(n80), .Y(n188) );
  BUFX2M U67 ( .A(n82), .Y(n187) );
  BUFX2M U68 ( .A(n77), .Y(n189) );
  BUFX2M U69 ( .A(n83), .Y(n186) );
  BUFX2M U70 ( .A(n178), .Y(n180) );
  BUFX2M U71 ( .A(n178), .Y(n181) );
  BUFX2M U72 ( .A(n178), .Y(n182) );
  BUFX2M U73 ( .A(n179), .Y(n183) );
  BUFX2M U74 ( .A(n179), .Y(n184) );
  BUFX2M U75 ( .A(n179), .Y(n185) );
  BUFX2M U76 ( .A(wrst_n), .Y(n178) );
  BUFX2M U77 ( .A(wrst_n), .Y(n179) );
  NOR2X2M U78 ( .A(n175), .B(n176), .Y(n171) );
  NAND3X2M U79 ( .A(n198), .B(n199), .C(n76), .Y(n79) );
  NAND3X2M U80 ( .A(n198), .B(n199), .C(n81), .Y(n84) );
  NOR2X2M U81 ( .A(n175), .B(N11), .Y(n172) );
  NOR2X2M U82 ( .A(n176), .B(N12), .Y(n169) );
  NOR2X2M U83 ( .A(N11), .B(N12), .Y(n168) );
  INVX2M U84 ( .A(N11), .Y(n176) );
  INVX2M U85 ( .A(N12), .Y(n175) );
  NAND3X2M U86 ( .A(n76), .B(n199), .C(waddr[0]), .Y(n78) );
  NAND3X2M U87 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  NOR2BX2M U88 ( .AN(winc), .B(waddr[2]), .Y(n81) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n197), .A0N(\FIFO_MEM[7][0] ), .A1N(n75), .Y(
        n85) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n196), .A0N(\FIFO_MEM[7][1] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n195), .A0N(\FIFO_MEM[7][2] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n194), .A0N(\FIFO_MEM[7][3] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n193), .A0N(\FIFO_MEM[7][4] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U94 ( .B0(n75), .B1(n192), .A0N(\FIFO_MEM[7][5] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U95 ( .B0(n75), .B1(n191), .A0N(\FIFO_MEM[7][6] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U96 ( .B0(n75), .B1(n190), .A0N(\FIFO_MEM[7][7] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U97 ( .B0(n197), .B1(n78), .A0N(\FIFO_MEM[5][0] ), .A1N(n78), .Y(
        n101) );
  OAI2BB2X1M U98 ( .B0(n196), .B1(n78), .A0N(\FIFO_MEM[5][1] ), .A1N(n78), .Y(
        n102) );
  OAI2BB2X1M U99 ( .B0(n195), .B1(n78), .A0N(\FIFO_MEM[5][2] ), .A1N(n78), .Y(
        n103) );
  OAI2BB2X1M U100 ( .B0(n194), .B1(n78), .A0N(\FIFO_MEM[5][3] ), .A1N(n78), 
        .Y(n104) );
  OAI2BB2X1M U101 ( .B0(n193), .B1(n78), .A0N(\FIFO_MEM[5][4] ), .A1N(n78), 
        .Y(n105) );
  OAI2BB2X1M U102 ( .B0(n192), .B1(n78), .A0N(\FIFO_MEM[5][5] ), .A1N(n78), 
        .Y(n106) );
  OAI2BB2X1M U103 ( .B0(n191), .B1(n78), .A0N(\FIFO_MEM[5][6] ), .A1N(n78), 
        .Y(n107) );
  OAI2BB2X1M U104 ( .B0(n190), .B1(n78), .A0N(\FIFO_MEM[5][7] ), .A1N(n78), 
        .Y(n108) );
  OAI2BB2X1M U105 ( .B0(n197), .B1(n84), .A0N(\FIFO_MEM[0][0] ), .A1N(n84), 
        .Y(n141) );
  OAI2BB2X1M U106 ( .B0(n196), .B1(n84), .A0N(\FIFO_MEM[0][1] ), .A1N(n84), 
        .Y(n142) );
  OAI2BB2X1M U107 ( .B0(n195), .B1(n84), .A0N(\FIFO_MEM[0][2] ), .A1N(n84), 
        .Y(n143) );
  OAI2BB2X1M U108 ( .B0(n194), .B1(n84), .A0N(\FIFO_MEM[0][3] ), .A1N(n84), 
        .Y(n144) );
  OAI2BB2X1M U109 ( .B0(n193), .B1(n84), .A0N(\FIFO_MEM[0][4] ), .A1N(n84), 
        .Y(n145) );
  OAI2BB2X1M U110 ( .B0(n192), .B1(n84), .A0N(\FIFO_MEM[0][5] ), .A1N(n84), 
        .Y(n146) );
  OAI2BB2X1M U111 ( .B0(n191), .B1(n84), .A0N(\FIFO_MEM[0][6] ), .A1N(n84), 
        .Y(n147) );
  OAI2BB2X1M U112 ( .B0(n190), .B1(n84), .A0N(\FIFO_MEM[0][7] ), .A1N(n84), 
        .Y(n148) );
  OAI2BB2X1M U113 ( .B0(n197), .B1(n79), .A0N(\FIFO_MEM[4][0] ), .A1N(n79), 
        .Y(n109) );
  OAI2BB2X1M U114 ( .B0(n196), .B1(n79), .A0N(\FIFO_MEM[4][1] ), .A1N(n79), 
        .Y(n110) );
  OAI2BB2X1M U115 ( .B0(n195), .B1(n79), .A0N(\FIFO_MEM[4][2] ), .A1N(n79), 
        .Y(n111) );
  OAI2BB2X1M U116 ( .B0(n194), .B1(n79), .A0N(\FIFO_MEM[4][3] ), .A1N(n79), 
        .Y(n112) );
  OAI2BB2X1M U117 ( .B0(n193), .B1(n79), .A0N(\FIFO_MEM[4][4] ), .A1N(n79), 
        .Y(n113) );
  OAI2BB2X1M U118 ( .B0(n192), .B1(n79), .A0N(\FIFO_MEM[4][5] ), .A1N(n79), 
        .Y(n114) );
  OAI2BB2X1M U119 ( .B0(n191), .B1(n79), .A0N(\FIFO_MEM[4][6] ), .A1N(n79), 
        .Y(n115) );
  OAI2BB2X1M U120 ( .B0(n190), .B1(n79), .A0N(\FIFO_MEM[4][7] ), .A1N(n79), 
        .Y(n116) );
  INVX2M U121 ( .A(wdata[0]), .Y(n197) );
  INVX2M U122 ( .A(wdata[1]), .Y(n196) );
  INVX2M U123 ( .A(wdata[2]), .Y(n195) );
  INVX2M U124 ( .A(wdata[3]), .Y(n194) );
  INVX2M U125 ( .A(wdata[4]), .Y(n193) );
  INVX2M U126 ( .A(wdata[5]), .Y(n192) );
  INVX2M U127 ( .A(wdata[6]), .Y(n191) );
  INVX2M U128 ( .A(wdata[7]), .Y(n190) );
  OAI2BB2X1M U129 ( .B0(n197), .B1(n189), .A0N(\FIFO_MEM[6][0] ), .A1N(n189), 
        .Y(n93) );
  OAI2BB2X1M U130 ( .B0(n196), .B1(n189), .A0N(\FIFO_MEM[6][1] ), .A1N(n189), 
        .Y(n94) );
  OAI2BB2X1M U131 ( .B0(n195), .B1(n189), .A0N(\FIFO_MEM[6][2] ), .A1N(n189), 
        .Y(n95) );
  OAI2BB2X1M U132 ( .B0(n194), .B1(n189), .A0N(\FIFO_MEM[6][3] ), .A1N(n189), 
        .Y(n96) );
  OAI2BB2X1M U133 ( .B0(n193), .B1(n189), .A0N(\FIFO_MEM[6][4] ), .A1N(n189), 
        .Y(n97) );
  OAI2BB2X1M U134 ( .B0(n192), .B1(n189), .A0N(\FIFO_MEM[6][5] ), .A1N(n189), 
        .Y(n98) );
  OAI2BB2X1M U135 ( .B0(n191), .B1(n189), .A0N(\FIFO_MEM[6][6] ), .A1N(n189), 
        .Y(n99) );
  OAI2BB2X1M U136 ( .B0(n190), .B1(n189), .A0N(\FIFO_MEM[6][7] ), .A1N(n189), 
        .Y(n100) );
  OAI2BB2X1M U137 ( .B0(n197), .B1(n188), .A0N(\FIFO_MEM[3][0] ), .A1N(n188), 
        .Y(n117) );
  OAI2BB2X1M U138 ( .B0(n196), .B1(n188), .A0N(\FIFO_MEM[3][1] ), .A1N(n188), 
        .Y(n118) );
  OAI2BB2X1M U139 ( .B0(n195), .B1(n188), .A0N(\FIFO_MEM[3][2] ), .A1N(n188), 
        .Y(n119) );
  OAI2BB2X1M U140 ( .B0(n194), .B1(n188), .A0N(\FIFO_MEM[3][3] ), .A1N(n188), 
        .Y(n120) );
  OAI2BB2X1M U141 ( .B0(n193), .B1(n188), .A0N(\FIFO_MEM[3][4] ), .A1N(n188), 
        .Y(n121) );
  OAI2BB2X1M U142 ( .B0(n192), .B1(n188), .A0N(\FIFO_MEM[3][5] ), .A1N(n188), 
        .Y(n122) );
  OAI2BB2X1M U143 ( .B0(n191), .B1(n188), .A0N(\FIFO_MEM[3][6] ), .A1N(n188), 
        .Y(n123) );
  OAI2BB2X1M U144 ( .B0(n190), .B1(n188), .A0N(\FIFO_MEM[3][7] ), .A1N(n188), 
        .Y(n124) );
  OAI2BB2X1M U145 ( .B0(n197), .B1(n187), .A0N(\FIFO_MEM[2][0] ), .A1N(n187), 
        .Y(n125) );
  OAI2BB2X1M U146 ( .B0(n196), .B1(n187), .A0N(\FIFO_MEM[2][1] ), .A1N(n187), 
        .Y(n126) );
  OAI2BB2X1M U147 ( .B0(n195), .B1(n187), .A0N(\FIFO_MEM[2][2] ), .A1N(n187), 
        .Y(n127) );
  OAI2BB2X1M U148 ( .B0(n194), .B1(n187), .A0N(\FIFO_MEM[2][3] ), .A1N(n187), 
        .Y(n128) );
  OAI2BB2X1M U149 ( .B0(n193), .B1(n187), .A0N(\FIFO_MEM[2][4] ), .A1N(n187), 
        .Y(n129) );
  OAI2BB2X1M U150 ( .B0(n192), .B1(n187), .A0N(\FIFO_MEM[2][5] ), .A1N(n187), 
        .Y(n130) );
  OAI2BB2X1M U151 ( .B0(n191), .B1(n187), .A0N(\FIFO_MEM[2][6] ), .A1N(n187), 
        .Y(n131) );
  OAI2BB2X1M U152 ( .B0(n190), .B1(n187), .A0N(\FIFO_MEM[2][7] ), .A1N(n187), 
        .Y(n132) );
  OAI2BB2X1M U153 ( .B0(n197), .B1(n186), .A0N(\FIFO_MEM[1][0] ), .A1N(n186), 
        .Y(n133) );
  OAI2BB2X1M U154 ( .B0(n196), .B1(n186), .A0N(\FIFO_MEM[1][1] ), .A1N(n186), 
        .Y(n134) );
  OAI2BB2X1M U155 ( .B0(n195), .B1(n186), .A0N(\FIFO_MEM[1][2] ), .A1N(n186), 
        .Y(n135) );
  OAI2BB2X1M U156 ( .B0(n194), .B1(n186), .A0N(\FIFO_MEM[1][3] ), .A1N(n186), 
        .Y(n136) );
  OAI2BB2X1M U157 ( .B0(n193), .B1(n186), .A0N(\FIFO_MEM[1][4] ), .A1N(n186), 
        .Y(n137) );
  OAI2BB2X1M U158 ( .B0(n192), .B1(n186), .A0N(\FIFO_MEM[1][5] ), .A1N(n186), 
        .Y(n138) );
  OAI2BB2X1M U159 ( .B0(n191), .B1(n186), .A0N(\FIFO_MEM[1][6] ), .A1N(n186), 
        .Y(n139) );
  OAI2BB2X1M U160 ( .B0(n190), .B1(n186), .A0N(\FIFO_MEM[1][7] ), .A1N(n186), 
        .Y(n140) );
  AND2X2M U161 ( .A(winc), .B(waddr[2]), .Y(n76) );
  NAND3X2M U162 ( .A(n76), .B(n198), .C(waddr[1]), .Y(n77) );
  NAND3X2M U163 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n80) );
  NAND3X2M U164 ( .A(waddr[1]), .B(n198), .C(n81), .Y(n82) );
  NAND3X2M U165 ( .A(waddr[0]), .B(n199), .C(n81), .Y(n83) );
  INVX2M U166 ( .A(N10), .Y(n177) );
  INVX2M U167 ( .A(waddr[1]), .Y(n199) );
  INVX2M U168 ( .A(waddr[0]), .Y(n198) );
  AO22X1M U169 ( .A0(\FIFO_MEM[3][0] ), .A1(n169), .B0(\FIFO_MEM[1][0] ), .B1(
        n168), .Y(n65) );
  AOI221XLM U170 ( .A0(\FIFO_MEM[5][0] ), .A1(n172), .B0(\FIFO_MEM[7][0] ), 
        .B1(n171), .C0(n65), .Y(n68) );
  AO22X1M U171 ( .A0(\FIFO_MEM[2][0] ), .A1(n169), .B0(\FIFO_MEM[0][0] ), .B1(
        n168), .Y(n66) );
  AOI221XLM U172 ( .A0(\FIFO_MEM[4][0] ), .A1(n172), .B0(\FIFO_MEM[6][0] ), 
        .B1(n171), .C0(n66), .Y(n67) );
  OAI22X1M U173 ( .A0(n177), .A1(n68), .B0(N10), .B1(n67), .Y(rdata[0]) );
  AO22X1M U174 ( .A0(\FIFO_MEM[3][1] ), .A1(n169), .B0(\FIFO_MEM[1][1] ), .B1(
        n168), .Y(n69) );
  AOI221XLM U175 ( .A0(\FIFO_MEM[5][1] ), .A1(n172), .B0(\FIFO_MEM[7][1] ), 
        .B1(n171), .C0(n69), .Y(n72) );
  AO22X1M U176 ( .A0(\FIFO_MEM[2][1] ), .A1(n169), .B0(\FIFO_MEM[0][1] ), .B1(
        n168), .Y(n70) );
  AOI221XLM U177 ( .A0(\FIFO_MEM[4][1] ), .A1(n172), .B0(\FIFO_MEM[6][1] ), 
        .B1(n171), .C0(n70), .Y(n71) );
  OAI22X1M U178 ( .A0(n177), .A1(n72), .B0(N10), .B1(n71), .Y(rdata[1]) );
  AO22X1M U179 ( .A0(\FIFO_MEM[3][2] ), .A1(n169), .B0(\FIFO_MEM[1][2] ), .B1(
        n168), .Y(n73) );
  AOI221XLM U180 ( .A0(\FIFO_MEM[5][2] ), .A1(n172), .B0(\FIFO_MEM[7][2] ), 
        .B1(n171), .C0(n73), .Y(n150) );
  AO22X1M U181 ( .A0(\FIFO_MEM[2][2] ), .A1(n169), .B0(\FIFO_MEM[0][2] ), .B1(
        n168), .Y(n74) );
  AOI221XLM U182 ( .A0(\FIFO_MEM[4][2] ), .A1(n172), .B0(\FIFO_MEM[6][2] ), 
        .B1(n171), .C0(n74), .Y(n149) );
  OAI22X1M U183 ( .A0(n177), .A1(n150), .B0(N10), .B1(n149), .Y(rdata[2]) );
  AO22X1M U184 ( .A0(\FIFO_MEM[3][3] ), .A1(n169), .B0(\FIFO_MEM[1][3] ), .B1(
        n168), .Y(n151) );
  AOI221XLM U185 ( .A0(\FIFO_MEM[5][3] ), .A1(n172), .B0(\FIFO_MEM[7][3] ), 
        .B1(n171), .C0(n151), .Y(n154) );
  AO22X1M U186 ( .A0(\FIFO_MEM[2][3] ), .A1(n169), .B0(\FIFO_MEM[0][3] ), .B1(
        n168), .Y(n152) );
  AOI221XLM U187 ( .A0(\FIFO_MEM[4][3] ), .A1(n172), .B0(\FIFO_MEM[6][3] ), 
        .B1(n171), .C0(n152), .Y(n153) );
  OAI22X1M U188 ( .A0(n177), .A1(n154), .B0(N10), .B1(n153), .Y(rdata[3]) );
  AO22X1M U189 ( .A0(\FIFO_MEM[3][4] ), .A1(n169), .B0(\FIFO_MEM[1][4] ), .B1(
        n168), .Y(n155) );
  AOI221XLM U190 ( .A0(\FIFO_MEM[5][4] ), .A1(n172), .B0(\FIFO_MEM[7][4] ), 
        .B1(n171), .C0(n155), .Y(n158) );
  AO22X1M U191 ( .A0(\FIFO_MEM[2][4] ), .A1(n169), .B0(\FIFO_MEM[0][4] ), .B1(
        n168), .Y(n156) );
  AOI221XLM U192 ( .A0(\FIFO_MEM[4][4] ), .A1(n172), .B0(\FIFO_MEM[6][4] ), 
        .B1(n171), .C0(n156), .Y(n157) );
  OAI22X1M U193 ( .A0(n177), .A1(n158), .B0(N10), .B1(n157), .Y(rdata[4]) );
  AO22X1M U194 ( .A0(\FIFO_MEM[3][5] ), .A1(n169), .B0(\FIFO_MEM[1][5] ), .B1(
        n168), .Y(n159) );
  AOI221XLM U195 ( .A0(\FIFO_MEM[5][5] ), .A1(n172), .B0(\FIFO_MEM[7][5] ), 
        .B1(n171), .C0(n159), .Y(n162) );
  AO22X1M U196 ( .A0(\FIFO_MEM[2][5] ), .A1(n169), .B0(\FIFO_MEM[0][5] ), .B1(
        n168), .Y(n160) );
  AOI221XLM U197 ( .A0(\FIFO_MEM[4][5] ), .A1(n172), .B0(\FIFO_MEM[6][5] ), 
        .B1(n171), .C0(n160), .Y(n161) );
  OAI22X1M U198 ( .A0(n177), .A1(n162), .B0(N10), .B1(n161), .Y(rdata[5]) );
  AO22X1M U199 ( .A0(\FIFO_MEM[3][6] ), .A1(n169), .B0(\FIFO_MEM[1][6] ), .B1(
        n168), .Y(n163) );
  AOI221XLM U200 ( .A0(\FIFO_MEM[5][6] ), .A1(n172), .B0(\FIFO_MEM[7][6] ), 
        .B1(n171), .C0(n163), .Y(n166) );
  AO22X1M U201 ( .A0(\FIFO_MEM[2][6] ), .A1(n169), .B0(\FIFO_MEM[0][6] ), .B1(
        n168), .Y(n164) );
  AOI221XLM U202 ( .A0(\FIFO_MEM[4][6] ), .A1(n172), .B0(\FIFO_MEM[6][6] ), 
        .B1(n171), .C0(n164), .Y(n165) );
  OAI22X1M U203 ( .A0(n177), .A1(n166), .B0(N10), .B1(n165), .Y(rdata[6]) );
  AO22X1M U204 ( .A0(\FIFO_MEM[3][7] ), .A1(n169), .B0(\FIFO_MEM[1][7] ), .B1(
        n168), .Y(n167) );
  AOI221XLM U205 ( .A0(\FIFO_MEM[5][7] ), .A1(n172), .B0(\FIFO_MEM[7][7] ), 
        .B1(n171), .C0(n167), .Y(n174) );
  AO22X1M U206 ( .A0(\FIFO_MEM[2][7] ), .A1(n169), .B0(\FIFO_MEM[0][7] ), .B1(
        n168), .Y(n170) );
  AOI221XLM U207 ( .A0(\FIFO_MEM[4][7] ), .A1(n172), .B0(\FIFO_MEM[6][7] ), 
        .B1(n171), .C0(n170), .Y(n173) );
  OAI22X1M U208 ( .A0(n174), .A1(n177), .B0(N10), .B1(n173), .Y(rdata[7]) );
  INVXLM U209 ( .A(test_se), .Y(n203) );
  INVXLM U210 ( .A(n203), .Y(n204) );
  INVXLM U211 ( .A(n203), .Y(n205) );
  INVXLM U212 ( .A(n203), .Y(n206) );
  INVXLM U213 ( .A(n203), .Y(n207) );
endmodule


module DF_SYNC_test_0 ( CLK, RST_N, UN_SYNC_IN_Reg, SYNC_OUT_D, test_si, 
        test_se );
  input [3:0] UN_SYNC_IN_Reg;
  output [3:0] SYNC_OUT_D;
  input CLK, RST_N, test_si, test_se;
  wire   \SYNC_OUT[0][3] , \SYNC_OUT[0][2] , \SYNC_OUT[0][1] ,
         \SYNC_OUT[0][0] ;

  SDFFRQX2M \SYNC_OUT_reg[1][1]  ( .D(\SYNC_OUT[0][1] ), .SI(SYNC_OUT_D[0]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[1]) );
  SDFFRQX2M \SYNC_OUT_reg[1][0]  ( .D(\SYNC_OUT[0][0] ), .SI(\SYNC_OUT[0][3] ), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[0]) );
  SDFFRQX2M \SYNC_OUT_reg[1][3]  ( .D(\SYNC_OUT[0][3] ), .SI(SYNC_OUT_D[2]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[3]) );
  SDFFRQX2M \SYNC_OUT_reg[1][2]  ( .D(\SYNC_OUT[0][2] ), .SI(SYNC_OUT_D[1]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[2]) );
  SDFFRQX2M \SYNC_OUT_reg[0][3]  ( .D(UN_SYNC_IN_Reg[3]), .SI(\SYNC_OUT[0][2] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][3] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][2]  ( .D(UN_SYNC_IN_Reg[2]), .SI(\SYNC_OUT[0][1] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][2] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][1]  ( .D(UN_SYNC_IN_Reg[1]), .SI(\SYNC_OUT[0][0] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][1] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][0]  ( .D(UN_SYNC_IN_Reg[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][0] ) );
endmodule


module DF_SYNC_test_1 ( CLK, RST_N, UN_SYNC_IN_Reg, SYNC_OUT_D, test_si, 
        test_se );
  input [3:0] UN_SYNC_IN_Reg;
  output [3:0] SYNC_OUT_D;
  input CLK, RST_N, test_si, test_se;
  wire   \SYNC_OUT[0][3] , \SYNC_OUT[0][2] , \SYNC_OUT[0][1] ,
         \SYNC_OUT[0][0] ;

  SDFFRQX2M \SYNC_OUT_reg[1][3]  ( .D(\SYNC_OUT[0][3] ), .SI(SYNC_OUT_D[2]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[3]) );
  SDFFRQX2M \SYNC_OUT_reg[1][2]  ( .D(\SYNC_OUT[0][2] ), .SI(SYNC_OUT_D[1]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[2]) );
  SDFFRQX2M \SYNC_OUT_reg[1][1]  ( .D(\SYNC_OUT[0][1] ), .SI(SYNC_OUT_D[0]), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[1]) );
  SDFFRQX2M \SYNC_OUT_reg[1][0]  ( .D(\SYNC_OUT[0][0] ), .SI(\SYNC_OUT[0][3] ), 
        .SE(test_se), .CK(CLK), .RN(RST_N), .Q(SYNC_OUT_D[0]) );
  SDFFRQX2M \SYNC_OUT_reg[0][3]  ( .D(UN_SYNC_IN_Reg[3]), .SI(\SYNC_OUT[0][2] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][3] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][2]  ( .D(UN_SYNC_IN_Reg[2]), .SI(\SYNC_OUT[0][1] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][2] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][1]  ( .D(UN_SYNC_IN_Reg[1]), .SI(\SYNC_OUT[0][0] ), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][1] ) );
  SDFFRQX2M \SYNC_OUT_reg[0][0]  ( .D(UN_SYNC_IN_Reg[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST_N), .Q(\SYNC_OUT[0][0] ) );
endmodule


module FIFO_WR_test_1 ( wclk, wrst_n, winc, rptr_gray_sync, waddr, wptr_gray, 
        wfull, test_si, test_so, test_se );
  input [3:0] rptr_gray_sync;
  output [2:0] waddr;
  output [3:0] wptr_gray;
  input wclk, wrst_n, winc, test_si, test_se;
  output wfull, test_so;
  wire   \wr_ptr[3] , n10, n11, n13, n14, n15, n16, n17, n18, n19, n9;
  wire   [3:0] wr_ptr_next;
  wire   [2:0] wptr_gray_next;
  assign test_so = \wr_ptr[3] ;

  SDFFRQX2M \wr_ptr_reg[3]  ( .D(wr_ptr_next[3]), .SI(waddr[2]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(\wr_ptr[3] ) );
  SDFFRQX2M \wr_ptr_reg[2]  ( .D(n9), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M \wr_ptr_reg[0]  ( .D(wr_ptr_next[0]), .SI(wptr_gray[3]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M \wr_ptr_reg[1]  ( .D(wr_ptr_next[1]), .SI(waddr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \wptr_gray_reg[0]  ( .D(wptr_gray_next[0]), .SI(test_si), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_gray[0]) );
  SDFFRQX2M \wptr_gray_reg[1]  ( .D(wptr_gray_next[1]), .SI(wptr_gray[0]), 
        .SE(test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_gray[1]) );
  SDFFRQX2M \wptr_gray_reg[3]  ( .D(wr_ptr_next[3]), .SI(wptr_gray[2]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_gray[3]) );
  SDFFRQX2M \wptr_gray_reg[2]  ( .D(wptr_gray_next[2]), .SI(wptr_gray[1]), 
        .SE(test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_gray[2]) );
  XNOR2X2M U11 ( .A(n13), .B(waddr[2]), .Y(n9) );
  INVX2M U12 ( .A(n15), .Y(wfull) );
  NAND2X2M U13 ( .A(winc), .B(n15), .Y(n14) );
  CLKXOR2X2M U14 ( .A(n9), .B(wr_ptr_next[1]), .Y(wptr_gray_next[1]) );
  CLKXOR2X2M U15 ( .A(wr_ptr_next[3]), .B(n9), .Y(wptr_gray_next[2]) );
  CLKXOR2X2M U16 ( .A(wr_ptr_next[1]), .B(wr_ptr_next[0]), .Y(
        wptr_gray_next[0]) );
  XNOR2X2M U17 ( .A(n10), .B(\wr_ptr[3] ), .Y(wr_ptr_next[3]) );
  NAND3X2M U18 ( .A(waddr[1]), .B(n11), .C(waddr[2]), .Y(n10) );
  NOR2BX2M U19 ( .AN(waddr[0]), .B(n14), .Y(n11) );
  XNOR2X2M U20 ( .A(n14), .B(waddr[0]), .Y(wr_ptr_next[0]) );
  NAND4X2M U21 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U22 ( .A(wptr_gray[1]), .B(rptr_gray_sync[1]), .Y(n16) );
  XNOR2X2M U23 ( .A(wptr_gray[0]), .B(rptr_gray_sync[0]), .Y(n17) );
  CLKXOR2X2M U24 ( .A(wptr_gray[3]), .B(rptr_gray_sync[3]), .Y(n18) );
  CLKXOR2X2M U25 ( .A(n11), .B(waddr[1]), .Y(wr_ptr_next[1]) );
  CLKXOR2X2M U26 ( .A(wptr_gray[2]), .B(rptr_gray_sync[2]), .Y(n19) );
  NAND2X2M U27 ( .A(waddr[1]), .B(n11), .Y(n13) );
endmodule


module FIFO_RD_test_1 ( rclk, rrst_n, rinc, wptr_gray_sync, raddr, gray_rd_ptr, 
        rempty, test_si, test_so, test_se );
  input [3:0] wptr_gray_sync;
  output [2:0] raddr;
  output [3:0] gray_rd_ptr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty, test_so;
  wire   \rd_ptr[3] , n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] rd_ptr_next;
  wire   [2:0] gray_rd_ptr_next;
  assign test_so = \rd_ptr[3] ;

  SDFFRQX2M \rd_ptr_reg[3]  ( .D(rd_ptr_next[3]), .SI(raddr[2]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(\rd_ptr[3] ) );
  SDFFRQX2M \gray_rd_ptr_reg[0]  ( .D(gray_rd_ptr_next[0]), .SI(test_si), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(gray_rd_ptr[0]) );
  SDFFRQX2M \gray_rd_ptr_reg[3]  ( .D(rd_ptr_next[3]), .SI(gray_rd_ptr[2]), 
        .SE(test_se), .CK(rclk), .RN(rrst_n), .Q(gray_rd_ptr[3]) );
  SDFFRQX2M \gray_rd_ptr_reg[2]  ( .D(gray_rd_ptr_next[2]), .SI(gray_rd_ptr[1]), .SE(test_se), .CK(rclk), .RN(rrst_n), .Q(gray_rd_ptr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[1]  ( .D(gray_rd_ptr_next[1]), .SI(gray_rd_ptr[0]), .SE(test_se), .CK(rclk), .RN(rrst_n), .Q(gray_rd_ptr[1]) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(rd_ptr_next[0]), .SI(gray_rd_ptr[3]), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(rd_ptr_next[2]), .SI(raddr[1]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(rd_ptr_next[1]), .SI(raddr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  INVX2M U11 ( .A(n9), .Y(rempty) );
  CLKXOR2X2M U12 ( .A(rd_ptr_next[2]), .B(rd_ptr_next[1]), .Y(
        gray_rd_ptr_next[1]) );
  CLKXOR2X2M U13 ( .A(rd_ptr_next[1]), .B(rd_ptr_next[0]), .Y(
        gray_rd_ptr_next[0]) );
  CLKXOR2X2M U14 ( .A(rd_ptr_next[3]), .B(rd_ptr_next[2]), .Y(
        gray_rd_ptr_next[2]) );
  XNOR2X2M U15 ( .A(wptr_gray_sync[2]), .B(gray_rd_ptr[2]), .Y(n17) );
  NAND4X2M U16 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n9) );
  XNOR2X2M U17 ( .A(wptr_gray_sync[1]), .B(gray_rd_ptr[1]), .Y(n14) );
  XNOR2X2M U18 ( .A(wptr_gray_sync[0]), .B(gray_rd_ptr[0]), .Y(n15) );
  XNOR2X2M U19 ( .A(wptr_gray_sync[3]), .B(gray_rd_ptr[3]), .Y(n16) );
  XNOR2X2M U20 ( .A(n12), .B(raddr[2]), .Y(rd_ptr_next[2]) );
  NAND2X2M U21 ( .A(raddr[1]), .B(n11), .Y(n12) );
  XNOR2X2M U22 ( .A(n10), .B(\rd_ptr[3] ), .Y(rd_ptr_next[3]) );
  NAND3X2M U23 ( .A(raddr[1]), .B(n11), .C(raddr[2]), .Y(n10) );
  NOR2BX2M U24 ( .AN(raddr[0]), .B(n13), .Y(n11) );
  XNOR2X2M U25 ( .A(n13), .B(raddr[0]), .Y(rd_ptr_next[0]) );
  NAND2X2M U26 ( .A(rinc), .B(n9), .Y(n13) );
  CLKXOR2X2M U27 ( .A(raddr[1]), .B(n11), .Y(rd_ptr_next[1]) );
endmodule


module ASYNC_FIFO_test_1 ( wclk, rclk, wrst_n, rrst_n, winc, rinc, wdata, 
        wfull, rempty, rdata, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrst_n, rrst_n, winc, rinc, test_si2, test_si1, test_se;
  output wfull, rempty, test_so2, test_so1;
  wire   _1_net_, n1, n2, n5, n6;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] gray_rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] gray_wptr;
  wire   [3:0] rq2_wptr;

  NOR2BX2M U1 ( .AN(winc), .B(wfull), .Y(_1_net_) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(wrst_n), .Y(n2) );
  FIFO_MEM_CNTRL_test_1 U_FIFO_MEM ( .wclk(wclk), .wrst_n(n1), .winc(_1_net_), 
        .waddr(waddr), .raddr(raddr), .wdata(wdata), .rdata(rdata), .test_si2(
        test_si2), .test_si1(rq2_wptr[3]), .test_so2(n6), .test_so1(test_so1), 
        .test_se(test_se) );
  DF_SYNC_test_0 U0_R2W ( .CLK(wclk), .RST_N(n1), .UN_SYNC_IN_Reg(gray_rptr), 
        .SYNC_OUT_D(wq2_rptr), .test_si(test_si1), .test_se(test_se) );
  DF_SYNC_test_1 U0_W2R ( .CLK(rclk), .RST_N(rrst_n), .UN_SYNC_IN_Reg(
        gray_wptr), .SYNC_OUT_D(rq2_wptr), .test_si(wq2_rptr[3]), .test_se(
        test_se) );
  FIFO_WR_test_1 U_FIFO_WR ( .wclk(wclk), .wrst_n(n1), .winc(winc), 
        .rptr_gray_sync(wq2_rptr), .waddr(waddr), .wptr_gray(gray_wptr), 
        .wfull(wfull), .test_si(n5), .test_so(test_so2), .test_se(test_se) );
  FIFO_RD_test_1 U_FIFO_RD ( .rclk(rclk), .rrst_n(rrst_n), .rinc(rinc), 
        .wptr_gray_sync(rq2_wptr), .raddr(raddr), .gray_rd_ptr(gray_rptr), 
        .rempty(rempty), .test_si(n6), .test_so(n5), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG;
  wire   LVL_SIG_D, N1;

  SDFFRQX2M LVL_SIG_D_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(LVL_SIG_D) );
  SDFFRQX2M PULSE_SIG_reg ( .D(N1), .SI(LVL_SIG_D), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(PULSE_SIG) );
  NOR2BX2M U5 ( .AN(LVL_SIG), .B(LVL_SIG_D), .Y(N1) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, UART_RX_DATA, UART_RX_VLD, RF_RdData, 
        RF_RdData_VLD, ALU_OUT, OUT_VALID, FIFO_FULL, RF_WrEn, RF_RdEn, 
        RF_Address, RF_WrData, ALU_FUN, ALU_EN, UART_TX_DATA, UART_TX_VLD, 
        CLKG_EN, CLKDIV_EN, test_si, test_so, test_se );
  input [7:0] UART_RX_DATA;
  input [7:0] RF_RdData;
  input [15:0] ALU_OUT;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [3:0] ALU_FUN;
  output [7:0] UART_TX_DATA;
  input CLK, RST, UART_RX_VLD, RF_RdData_VLD, OUT_VALID, FIFO_FULL, test_si,
         test_se;
  output RF_WrEn, RF_RdEn, ALU_EN, UART_TX_VLD, CLKG_EN, CLKDIV_EN, test_so;
  wire   n2, n3, n6, n14, n15, n16, n19, n20, n21, n23, n25, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n39, n40, n41, n42, n43, n45,
         n48, n49, n50, n51, n52, n54, n55, n57, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n86, n88,
         n90, n92, n94, n96, n98, n100, n102, n104, n106, n108, n110, n112,
         n114, n116, n118, n120, n122, n124, n126, n128, n130, n132, n141,
         n142, n143, n144, n145, n146, n147, n148, n5, n7, n8, n9, n10, n11,
         n12, n13, n17, n18, n22, n24, n26, n38, n46, n47, n53, n56, n58, n77,
         n78, n79, n80, n81, n82, n83, n84, n149, n150, n151, n152, n153, n155,
         n156, n157, n158;
  wire   [3:0] current_state;
  wire   [7:0] stored_rd_data;
  wire   [15:0] stored_alu_out;
  assign test_so = stored_rd_data[7];

  SDFFRQX2M \stored_rd_data_reg[7]  ( .D(n132), .SI(stored_rd_data[6]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[7]) );
  SDFFRQX2M \stored_rd_data_reg[6]  ( .D(n130), .SI(stored_rd_data[5]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[6]) );
  SDFFRQX2M \stored_rd_data_reg[5]  ( .D(n128), .SI(stored_rd_data[4]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[5]) );
  SDFFRQX2M \stored_rd_data_reg[4]  ( .D(n126), .SI(stored_rd_data[3]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[4]) );
  SDFFRQX2M \stored_rd_data_reg[3]  ( .D(n124), .SI(stored_rd_data[2]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[3]) );
  SDFFRQX2M \stored_rd_data_reg[2]  ( .D(n122), .SI(stored_rd_data[1]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[2]) );
  SDFFRQX2M \stored_rd_data_reg[1]  ( .D(n120), .SI(stored_rd_data[0]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[1]) );
  SDFFRQX2M \stored_rd_data_reg[0]  ( .D(n118), .SI(stored_alu_out[15]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_rd_data[0]) );
  SDFFRQX2M \stored_alu_out_reg[7]  ( .D(n100), .SI(stored_alu_out[6]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[7]) );
  SDFFRQX2M \stored_alu_out_reg[6]  ( .D(n98), .SI(stored_alu_out[5]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[6]) );
  SDFFRQX2M \stored_alu_out_reg[5]  ( .D(n96), .SI(stored_alu_out[4]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[5]) );
  SDFFRQX2M \stored_alu_out_reg[4]  ( .D(n94), .SI(stored_alu_out[3]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[4]) );
  SDFFRQX2M \stored_alu_out_reg[3]  ( .D(n92), .SI(stored_alu_out[2]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[3]) );
  SDFFRQX2M \stored_alu_out_reg[2]  ( .D(n90), .SI(stored_alu_out[1]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[2]) );
  SDFFRQX2M \stored_alu_out_reg[1]  ( .D(n88), .SI(stored_alu_out[0]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[1]) );
  SDFFRQX2M \stored_alu_out_reg[0]  ( .D(n86), .SI(n155), .SE(test_se), .CK(
        CLK), .RN(n5), .Q(stored_alu_out[0]) );
  SDFFRQX2M \stored_alu_out_reg[15]  ( .D(n116), .SI(stored_alu_out[14]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[15]) );
  SDFFRQX2M \stored_alu_out_reg[14]  ( .D(n114), .SI(stored_alu_out[13]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[14]) );
  SDFFRQX2M \stored_alu_out_reg[13]  ( .D(n112), .SI(stored_alu_out[12]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[13]) );
  SDFFRQX2M \stored_alu_out_reg[12]  ( .D(n110), .SI(stored_alu_out[11]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[12]) );
  SDFFRQX2M \stored_alu_out_reg[11]  ( .D(n108), .SI(stored_alu_out[10]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[11]) );
  SDFFRQX2M \stored_alu_out_reg[10]  ( .D(n106), .SI(stored_alu_out[9]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[10]) );
  SDFFRQX2M \stored_alu_out_reg[9]  ( .D(n104), .SI(stored_alu_out[8]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[9]) );
  SDFFRQX2M \stored_alu_out_reg[8]  ( .D(n102), .SI(stored_alu_out[7]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(stored_alu_out[8]) );
  SDFFRX1M \stored_addr_reg[3]  ( .D(n144), .SI(n156), .SE(test_se), .CK(CLK), 
        .RN(n5), .Q(n155), .QN(n58) );
  SDFFRX1M \stored_addr_reg[2]  ( .D(n143), .SI(n157), .SE(test_se), .CK(CLK), 
        .RN(n5), .Q(n156), .QN(n77) );
  SDFFRX1M \stored_addr_reg[1]  ( .D(n142), .SI(n158), .SE(test_se), .CK(CLK), 
        .RN(n5), .Q(n157), .QN(n78) );
  SDFFRX1M \stored_addr_reg[0]  ( .D(n141), .SI(current_state[3]), .SE(test_se), .CK(CLK), .RN(n5), .Q(n158), .QN(n79) );
  SDFFRQX2M \current_state_reg[3]  ( .D(n145), .SI(current_state[2]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n148), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(n5), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n146), .SI(current_state[0]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n147), .SI(current_state[1]), .SE(
        test_se), .CK(CLK), .RN(n5), .Q(current_state[2]) );
  NOR2X2M U5 ( .A(n72), .B(n77), .Y(RF_Address[2]) );
  NOR2X2M U6 ( .A(n72), .B(n78), .Y(RF_Address[1]) );
  NOR2X2M U7 ( .A(n48), .B(n152), .Y(ALU_EN) );
  NOR2X2M U8 ( .A(n150), .B(n22), .Y(ALU_FUN[1]) );
  BUFX2M U9 ( .A(n70), .Y(n10) );
  NOR2BX2M U10 ( .AN(UART_RX_DATA[7]), .B(n10), .Y(RF_WrData[7]) );
  OAI31X1M U11 ( .A0(n52), .A1(n82), .A2(n54), .B0(n31), .Y(n27) );
  BUFX2M U12 ( .A(OUT_VALID), .Y(n11) );
  INVX2M U13 ( .A(n59), .Y(n17) );
  NOR2X2M U14 ( .A(FIFO_FULL), .B(n59), .Y(UART_TX_VLD) );
  INVX2M U15 ( .A(n36), .Y(n46) );
  INVX2M U16 ( .A(ALU_EN), .Y(n22) );
  INVX2M U17 ( .A(n7), .Y(n5) );
  OAI21X2M U18 ( .A0(n72), .A1(n79), .B0(n36), .Y(RF_Address[0]) );
  NOR3X2M U19 ( .A(n8), .B(n9), .C(n20), .Y(n59) );
  NOR2X2M U20 ( .A(n72), .B(n58), .Y(RF_Address[3]) );
  AND2X2M U21 ( .A(n49), .B(n73), .Y(n20) );
  NAND2X2M U22 ( .A(n74), .B(n50), .Y(n28) );
  NAND2X2M U23 ( .A(n73), .B(n51), .Y(n48) );
  AOI21X2M U24 ( .A0(n56), .A1(n51), .B0(CLKG_EN), .Y(n23) );
  NOR2X2M U25 ( .A(n47), .B(n24), .Y(n49) );
  NAND2X2M U26 ( .A(n73), .B(n74), .Y(n36) );
  NAND2X2M U27 ( .A(n48), .B(n37), .Y(CLKG_EN) );
  AND2X2M U28 ( .A(n14), .B(n74), .Y(n41) );
  INVX2M U29 ( .A(n74), .Y(n38) );
  AND2X2M U30 ( .A(n49), .B(n14), .Y(n32) );
  BUFX2M U31 ( .A(n61), .Y(n9) );
  NOR3X2M U32 ( .A(n38), .B(n53), .C(n56), .Y(n61) );
  OAI222X1M U33 ( .A0(n23), .A1(n16), .B0(n80), .B1(n25), .C0(n13), .C1(n47), 
        .Y(n146) );
  INVX2M U34 ( .A(n27), .Y(n80) );
  NOR2X2M U35 ( .A(n151), .B(n10), .Y(RF_WrData[0]) );
  NOR2X2M U36 ( .A(n150), .B(n10), .Y(RF_WrData[1]) );
  NOR2X2M U37 ( .A(n84), .B(n10), .Y(RF_WrData[3]) );
  NOR2X2M U38 ( .A(n83), .B(n10), .Y(RF_WrData[4]) );
  NOR2X2M U39 ( .A(n82), .B(n10), .Y(RF_WrData[5]) );
  NOR2X2M U40 ( .A(n81), .B(n10), .Y(RF_WrData[6]) );
  NOR2X2M U41 ( .A(n149), .B(n10), .Y(RF_WrData[2]) );
  OAI221X1M U42 ( .A0(n15), .A1(n16), .B0(n13), .B1(n56), .C0(n19), .Y(n145)
         );
  NOR4X1M U43 ( .A(CLKG_EN), .B(n20), .C(n21), .D(n46), .Y(n15) );
  NAND2X2M U44 ( .A(n50), .B(n51), .Y(n3) );
  INVX2M U45 ( .A(n16), .Y(n13) );
  AND2X2M U46 ( .A(n49), .B(n50), .Y(n21) );
  OAI2BB1X2M U47 ( .A0N(n56), .A1N(n49), .B0(n36), .Y(n45) );
  INVX2M U48 ( .A(n25), .Y(n12) );
  INVX2M U49 ( .A(n10), .Y(RF_WrEn) );
  OAI22X1M U50 ( .A0(n26), .A1(n58), .B0(n6), .B1(n84), .Y(n144) );
  OAI22X1M U51 ( .A0(n26), .A1(n78), .B0(n6), .B1(n150), .Y(n142) );
  OAI22X1M U52 ( .A0(n26), .A1(n79), .B0(n6), .B1(n151), .Y(n141) );
  OAI22X1M U53 ( .A0(n26), .A1(n77), .B0(n6), .B1(n149), .Y(n143) );
  INVX2M U54 ( .A(n6), .Y(n26) );
  NOR2X2M U55 ( .A(n149), .B(n22), .Y(ALU_FUN[2]) );
  NOR2X2M U56 ( .A(n84), .B(n22), .Y(ALU_FUN[3]) );
  NOR2X2M U57 ( .A(n151), .B(n22), .Y(ALU_FUN[0]) );
  INVX2M U58 ( .A(n11), .Y(n153) );
  INVX2M U59 ( .A(RST), .Y(n7) );
  AND3X2M U60 ( .A(n75), .B(n23), .C(n76), .Y(n72) );
  NOR4X1M U61 ( .A(n41), .B(n32), .C(n71), .D(RF_RdEn), .Y(n76) );
  AOI21X2M U62 ( .A0(current_state[3]), .A1(n38), .B0(n17), .Y(n75) );
  INVX2M U63 ( .A(n28), .Y(RF_RdEn) );
  NOR2X2M U64 ( .A(n53), .B(current_state[3]), .Y(n50) );
  INVX2M U65 ( .A(current_state[2]), .Y(n53) );
  BUFX2M U66 ( .A(n62), .Y(n8) );
  NOR3BX2M U67 ( .AN(n50), .B(current_state[0]), .C(n47), .Y(n62) );
  NOR2X2M U68 ( .A(current_state[1]), .B(current_state[0]), .Y(n74) );
  NOR2X2M U69 ( .A(n56), .B(current_state[2]), .Y(n73) );
  NOR2X2M U70 ( .A(n24), .B(current_state[1]), .Y(n51) );
  NOR2X2M U71 ( .A(current_state[2]), .B(current_state[3]), .Y(n14) );
  AND3X2M U72 ( .A(n14), .B(n24), .C(current_state[1]), .Y(n71) );
  NAND3X2M U73 ( .A(n73), .B(n24), .C(current_state[1]), .Y(n37) );
  INVX2M U74 ( .A(current_state[0]), .Y(n24) );
  INVX2M U75 ( .A(current_state[3]), .Y(n56) );
  INVX2M U76 ( .A(current_state[1]), .Y(n47) );
  OAI31X1M U77 ( .A0(n46), .A1(n71), .A2(n21), .B0(UART_RX_VLD), .Y(n70) );
  NAND4X2M U78 ( .A(n28), .B(n3), .C(n29), .D(n30), .Y(n147) );
  OAI21X2M U79 ( .A0(n32), .A1(n20), .B0(n13), .Y(n29) );
  AOI2BB2XLM U80 ( .B0(current_state[2]), .B1(n16), .A0N(n31), .A1N(n25), .Y(
        n30) );
  OAI211X2M U81 ( .A0(RF_RdData_VLD), .A1(n3), .B0(n42), .C0(n43), .Y(n16) );
  OAI31X1M U82 ( .A0(n45), .A1(n14), .A2(n18), .B0(n152), .Y(n42) );
  AOI2BB2XLM U83 ( .B0(FIFO_FULL), .B1(n17), .A0N(n37), .A1N(n11), .Y(n43) );
  INVX2M U84 ( .A(n48), .Y(n18) );
  NAND4X2M U85 ( .A(UART_RX_DATA[4]), .B(n12), .C(UART_RX_DATA[6]), .D(n39), 
        .Y(n19) );
  NOR4X1M U86 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n151), .D(n149), 
        .Y(n39) );
  NAND4X2M U87 ( .A(UART_RX_DATA[7]), .B(n41), .C(n13), .D(UART_RX_DATA[3]), 
        .Y(n25) );
  NOR2X2M U88 ( .A(FIFO_FULL), .B(n69), .Y(UART_TX_DATA[0]) );
  AOI222X1M U89 ( .A0(n9), .A1(stored_alu_out[8]), .B0(n20), .B1(
        stored_alu_out[0]), .C0(n8), .C1(stored_rd_data[0]), .Y(n69) );
  NOR2X2M U90 ( .A(FIFO_FULL), .B(n68), .Y(UART_TX_DATA[1]) );
  AOI222X1M U91 ( .A0(n9), .A1(stored_alu_out[9]), .B0(n20), .B1(
        stored_alu_out[1]), .C0(n8), .C1(stored_rd_data[1]), .Y(n68) );
  NOR2X2M U92 ( .A(FIFO_FULL), .B(n67), .Y(UART_TX_DATA[2]) );
  AOI222X1M U93 ( .A0(n9), .A1(stored_alu_out[10]), .B0(n20), .B1(
        stored_alu_out[2]), .C0(n8), .C1(stored_rd_data[2]), .Y(n67) );
  NOR2X2M U94 ( .A(FIFO_FULL), .B(n66), .Y(UART_TX_DATA[3]) );
  AOI222X1M U95 ( .A0(n9), .A1(stored_alu_out[11]), .B0(n20), .B1(
        stored_alu_out[3]), .C0(n8), .C1(stored_rd_data[3]), .Y(n66) );
  NOR2X2M U96 ( .A(FIFO_FULL), .B(n65), .Y(UART_TX_DATA[4]) );
  AOI222X1M U97 ( .A0(n9), .A1(stored_alu_out[12]), .B0(n20), .B1(
        stored_alu_out[4]), .C0(n8), .C1(stored_rd_data[4]), .Y(n65) );
  NOR2X2M U98 ( .A(FIFO_FULL), .B(n64), .Y(UART_TX_DATA[5]) );
  AOI222X1M U99 ( .A0(n9), .A1(stored_alu_out[13]), .B0(n20), .B1(
        stored_alu_out[5]), .C0(n8), .C1(stored_rd_data[5]), .Y(n64) );
  NOR2X2M U100 ( .A(FIFO_FULL), .B(n63), .Y(UART_TX_DATA[6]) );
  AOI222X1M U101 ( .A0(n9), .A1(stored_alu_out[14]), .B0(n20), .B1(
        stored_alu_out[6]), .C0(n8), .C1(stored_rd_data[6]), .Y(n63) );
  NOR2X2M U102 ( .A(FIFO_FULL), .B(n60), .Y(UART_TX_DATA[7]) );
  AOI222X1M U103 ( .A0(n9), .A1(stored_alu_out[15]), .B0(n20), .B1(
        stored_alu_out[7]), .C0(n8), .C1(stored_rd_data[7]), .Y(n60) );
  NAND3X2M U104 ( .A(n33), .B(n19), .C(n34), .Y(n148) );
  AOI21X2M U105 ( .A0(current_state[0]), .A1(n16), .B0(n35), .Y(n34) );
  OAI21X2M U106 ( .A0(n40), .A1(n27), .B0(n12), .Y(n33) );
  AOI31X2M U107 ( .A0(n36), .A1(n37), .A2(n28), .B0(n16), .Y(n35) );
  NAND3X2M U108 ( .A(n149), .B(n81), .C(UART_RX_DATA[0]), .Y(n52) );
  NAND2X2M U109 ( .A(UART_RX_DATA[4]), .B(UART_RX_DATA[1]), .Y(n54) );
  NOR4X1M U110 ( .A(n57), .B(n82), .C(UART_RX_DATA[0]), .D(n150), .Y(n40) );
  NAND3X2M U111 ( .A(n83), .B(n81), .C(n149), .Y(n57) );
  NOR2BX2M U112 ( .AN(RF_RdData_VLD), .B(n3), .Y(n2) );
  NAND3X2M U113 ( .A(n14), .B(current_state[0]), .C(UART_RX_VLD), .Y(n6) );
  INVX2M U114 ( .A(UART_RX_DATA[2]), .Y(n149) );
  INVX2M U115 ( .A(UART_RX_DATA[0]), .Y(n151) );
  INVX2M U116 ( .A(UART_RX_DATA[1]), .Y(n150) );
  NAND4X2M U117 ( .A(UART_RX_DATA[2]), .B(n151), .C(UART_RX_DATA[6]), .D(n55), 
        .Y(n31) );
  NOR3X2M U118 ( .A(UART_RX_DATA[1]), .B(UART_RX_DATA[5]), .C(UART_RX_DATA[4]), 
        .Y(n55) );
  INVX2M U119 ( .A(UART_RX_DATA[5]), .Y(n82) );
  INVX2M U120 ( .A(UART_RX_DATA[6]), .Y(n81) );
  INVX2M U121 ( .A(UART_RX_DATA[4]), .Y(n83) );
  INVX2M U122 ( .A(UART_RX_DATA[3]), .Y(n84) );
  INVX2M U123 ( .A(UART_RX_VLD), .Y(n152) );
  AO2B2X2M U124 ( .B0(RF_RdData[0]), .B1(n2), .A0(stored_rd_data[0]), .A1N(n2), 
        .Y(n118) );
  AO2B2X2M U125 ( .B0(RF_RdData[1]), .B1(n2), .A0(stored_rd_data[1]), .A1N(n2), 
        .Y(n120) );
  AO2B2X2M U126 ( .B0(RF_RdData[2]), .B1(n2), .A0(stored_rd_data[2]), .A1N(n2), 
        .Y(n122) );
  AO2B2X2M U127 ( .B0(RF_RdData[3]), .B1(n2), .A0(stored_rd_data[3]), .A1N(n2), 
        .Y(n124) );
  AO2B2X2M U128 ( .B0(RF_RdData[4]), .B1(n2), .A0(stored_rd_data[4]), .A1N(n2), 
        .Y(n126) );
  AO2B2X2M U129 ( .B0(RF_RdData[5]), .B1(n2), .A0(stored_rd_data[5]), .A1N(n2), 
        .Y(n128) );
  AO2B2X2M U130 ( .B0(RF_RdData[6]), .B1(n2), .A0(stored_rd_data[6]), .A1N(n2), 
        .Y(n130) );
  AO2B2X2M U131 ( .B0(RF_RdData[7]), .B1(n2), .A0(stored_rd_data[7]), .A1N(n2), 
        .Y(n132) );
  AO22X1M U132 ( .A0(n153), .A1(stored_alu_out[0]), .B0(n11), .B1(ALU_OUT[0]), 
        .Y(n86) );
  AO22X1M U133 ( .A0(n153), .A1(stored_alu_out[1]), .B0(ALU_OUT[1]), .B1(n11), 
        .Y(n88) );
  AO22X1M U134 ( .A0(n153), .A1(stored_alu_out[2]), .B0(ALU_OUT[2]), .B1(n11), 
        .Y(n90) );
  AO22X1M U135 ( .A0(n153), .A1(stored_alu_out[3]), .B0(ALU_OUT[3]), .B1(n11), 
        .Y(n92) );
  AO22X1M U136 ( .A0(n153), .A1(stored_alu_out[4]), .B0(ALU_OUT[4]), .B1(n11), 
        .Y(n94) );
  AO22X1M U137 ( .A0(n153), .A1(stored_alu_out[5]), .B0(ALU_OUT[5]), .B1(n11), 
        .Y(n96) );
  AO22X1M U138 ( .A0(n153), .A1(stored_alu_out[6]), .B0(ALU_OUT[6]), .B1(n11), 
        .Y(n98) );
  AO22X1M U139 ( .A0(n153), .A1(stored_alu_out[7]), .B0(ALU_OUT[7]), .B1(n11), 
        .Y(n100) );
  AO22X1M U140 ( .A0(n153), .A1(stored_alu_out[8]), .B0(ALU_OUT[8]), .B1(n11), 
        .Y(n102) );
  AO22X1M U141 ( .A0(n153), .A1(stored_alu_out[9]), .B0(ALU_OUT[9]), .B1(n11), 
        .Y(n104) );
  AO22X1M U142 ( .A0(n153), .A1(stored_alu_out[10]), .B0(ALU_OUT[10]), .B1(n11), .Y(n106) );
  AO22X1M U143 ( .A0(n153), .A1(stored_alu_out[11]), .B0(ALU_OUT[11]), .B1(n11), .Y(n108) );
  AO22X1M U176 ( .A0(n153), .A1(stored_alu_out[12]), .B0(ALU_OUT[12]), .B1(n11), .Y(n110) );
  AO22X1M U177 ( .A0(n153), .A1(stored_alu_out[13]), .B0(ALU_OUT[13]), .B1(n11), .Y(n112) );
  AO22X1M U178 ( .A0(n153), .A1(stored_alu_out[14]), .B0(ALU_OUT[14]), .B1(n11), .Y(n114) );
  AO22X1M U179 ( .A0(n153), .A1(stored_alu_out[15]), .B0(ALU_OUT[15]), .B1(n11), .Y(n116) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module Parity_Calc_test_1 ( clk, rst_n, P_DATA, DATA_VALID, PAR_TYP, PAR_EN, 
        par_bit, test_si, test_se );
  input [7:0] P_DATA;
  input clk, rst_n, DATA_VALID, PAR_TYP, PAR_EN, test_si, test_se;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(par_bit) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  NAND2X2M U6 ( .A(PAR_EN), .B(DATA_VALID), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module serializer_test_1 ( clk, rst_n, P_DATA, ser_en, Data_Valid, ser_data, 
        ser_done, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk, rst_n, ser_en, Data_Valid, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   N1, N2, N3, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n12, n13, n14, n31, n32, n33, n34, n35, n36,
         n39, n40;
  wire   [7:0] data_reg;
  assign test_so = data_reg[7];

  SDFFRQX2M \data_reg_reg[7]  ( .D(n27), .SI(data_reg[6]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[7]) );
  SDFFRQX2M \data_reg_reg[5]  ( .D(n25), .SI(data_reg[4]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[5]) );
  SDFFRQX2M \data_reg_reg[3]  ( .D(n23), .SI(data_reg[2]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[3]) );
  SDFFRQX2M \data_reg_reg[1]  ( .D(n21), .SI(data_reg[0]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[1]) );
  SDFFRQX2M \data_reg_reg[6]  ( .D(n26), .SI(data_reg[5]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[6]) );
  SDFFRQX2M \data_reg_reg[4]  ( .D(n24), .SI(data_reg[3]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[4]) );
  SDFFRQX2M \data_reg_reg[2]  ( .D(n22), .SI(data_reg[1]), .SE(n40), .CK(clk), 
        .RN(rst_n), .Q(data_reg[2]) );
  SDFFRQX2M \data_reg_reg[0]  ( .D(n20), .SI(N3), .SE(n40), .CK(clk), .RN(
        rst_n), .Q(data_reg[0]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n29), .SI(N2), .SE(n40), .CK(clk), .RN(rst_n), .Q(N3) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n28), .SI(N1), .SE(n40), .CK(clk), .RN(rst_n), .Q(N2) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n30), .SI(test_si), .SE(n40), .CK(clk), .RN(
        rst_n), .Q(N1) );
  INVX2M U14 ( .A(Data_Valid), .Y(n34) );
  NAND2X2M U15 ( .A(ser_en), .B(n34), .Y(n16) );
  OAI2BB1X2M U16 ( .A0N(n15), .A1N(ser_en), .B0(n34), .Y(n19) );
  NOR2BX2M U17 ( .AN(ser_en), .B(n15), .Y(ser_done) );
  OAI32X1M U18 ( .A0(n16), .A1(N2), .A2(n35), .B0(n17), .B1(n36), .Y(n28) );
  OAI31X1M U19 ( .A0(n16), .A1(n35), .A2(n36), .B0(n18), .Y(n29) );
  OAI2BB1X2M U20 ( .A0N(n16), .A1N(n17), .B0(N3), .Y(n18) );
  OA21X2M U21 ( .A0(N1), .A1(n16), .B0(n19), .Y(n17) );
  AO22X1M U22 ( .A0(P_DATA[7]), .A1(Data_Valid), .B0(data_reg[7]), .B1(n34), 
        .Y(n27) );
  AO22X1M U23 ( .A0(P_DATA[6]), .A1(Data_Valid), .B0(data_reg[6]), .B1(n34), 
        .Y(n26) );
  AO22X1M U24 ( .A0(P_DATA[2]), .A1(Data_Valid), .B0(data_reg[2]), .B1(n34), 
        .Y(n22) );
  AO22X1M U25 ( .A0(P_DATA[3]), .A1(Data_Valid), .B0(data_reg[3]), .B1(n34), 
        .Y(n23) );
  AO22X1M U26 ( .A0(P_DATA[0]), .A1(Data_Valid), .B0(data_reg[0]), .B1(n34), 
        .Y(n20) );
  AO22X1M U27 ( .A0(P_DATA[1]), .A1(Data_Valid), .B0(data_reg[1]), .B1(n34), 
        .Y(n21) );
  AO22X1M U28 ( .A0(P_DATA[4]), .A1(Data_Valid), .B0(data_reg[4]), .B1(n34), 
        .Y(n24) );
  AO22X1M U29 ( .A0(P_DATA[5]), .A1(Data_Valid), .B0(data_reg[5]), .B1(n34), 
        .Y(n25) );
  OAI22X1M U30 ( .A0(n35), .A1(n19), .B0(N1), .B1(n16), .Y(n30) );
  NAND3X2M U31 ( .A(N2), .B(N1), .C(N3), .Y(n15) );
  INVX2M U32 ( .A(N1), .Y(n35) );
  INVX2M U33 ( .A(N2), .Y(n36) );
  AOI22X1M U34 ( .A0(data_reg[2]), .A1(n35), .B0(data_reg[3]), .B1(N1), .Y(n13) );
  AOI22X1M U35 ( .A0(data_reg[0]), .A1(n35), .B0(data_reg[1]), .B1(N1), .Y(n12) );
  OA22X1M U36 ( .A0(n36), .A1(n13), .B0(N2), .B1(n12), .Y(n33) );
  AOI22X1M U37 ( .A0(data_reg[6]), .A1(n35), .B0(data_reg[7]), .B1(N1), .Y(n31) );
  AOI22X1M U38 ( .A0(data_reg[4]), .A1(n35), .B0(data_reg[5]), .B1(N1), .Y(n14) );
  OAI22X1M U39 ( .A0(n31), .A1(n36), .B0(N2), .B1(n14), .Y(n32) );
  OAI2BB2X1M U40 ( .B0(n33), .B1(N3), .A0N(N3), .A1N(n32), .Y(ser_data) );
  INVXLM U41 ( .A(test_se), .Y(n39) );
  INVXLM U42 ( .A(n39), .Y(n40) );
endmodule


module FSM_test_1 ( clk, rst_n, DATA_VALID, ser_done, PAR_EN, ser_en, mux_sel, 
        Busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst_n, DATA_VALID, ser_done, PAR_EN, test_si, test_se;
  output ser_en, Busy, test_so;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n5, n6,
         n7, n8, n9;
  wire   [2:0] current_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(n21), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n5), .SI(current_state[0]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n20), .SI(current_state[1]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  AND2X2M U6 ( .A(n14), .B(n6), .Y(n11) );
  INVX2M U7 ( .A(n10), .Y(ser_en) );
  INVX2M U8 ( .A(ser_done), .Y(n6) );
  OAI31X1M U9 ( .A0(n6), .A1(n9), .A2(n10), .B0(n16), .Y(n21) );
  NAND3X2M U10 ( .A(n17), .B(n8), .C(DATA_VALID), .Y(n16) );
  OAI211X2M U11 ( .A0(current_state[2]), .A1(n8), .B0(n19), .C0(mux_sel[0]), 
        .Y(Busy) );
  NAND3X2M U12 ( .A(n7), .B(n8), .C(current_state[2]), .Y(n19) );
  INVX2M U13 ( .A(n13), .Y(mux_sel[0]) );
  NOR2X2M U14 ( .A(n7), .B(current_state[2]), .Y(n13) );
  NOR2X2M U15 ( .A(n13), .B(current_state[2]), .Y(n17) );
  INVX2M U16 ( .A(current_state[1]), .Y(n8) );
  NAND2X2M U17 ( .A(current_state[1]), .B(n17), .Y(n10) );
  INVX2M U18 ( .A(n15), .Y(n5) );
  AOI221XLM U19 ( .A0(n8), .A1(n13), .B0(n14), .B1(PAR_EN), .C0(n11), .Y(n15)
         );
  INVX2M U20 ( .A(current_state[0]), .Y(n7) );
  NOR3X2M U21 ( .A(current_state[0]), .B(current_state[2]), .C(n8), .Y(n14) );
  NOR2X2M U22 ( .A(n11), .B(n12), .Y(n20) );
  AOI22X1M U23 ( .A0(current_state[1]), .A1(n13), .B0(n14), .B1(n9), .Y(n12)
         );
  INVX2M U24 ( .A(PAR_EN), .Y(n9) );
  NAND2BX2M U25 ( .AN(current_state[2]), .B(n18), .Y(mux_sel[1]) );
  CLKXOR2X2M U26 ( .A(current_state[1]), .B(current_state[0]), .Y(n18) );
endmodule


module TX_MUX ( mux_sel, par_bit, ser_data, start_bit, stop_bit, TX_OUT );
  input [1:0] mux_sel;
  input par_bit, ser_data, start_bit, stop_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  INVX2M U1 ( .A(mux_sel[0]), .Y(n1) );
  OAI2B2X4M U2 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        TX_OUT) );
  AOI22X1M U3 ( .A0(start_bit), .A1(n1), .B0(ser_data), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U4 ( .A0(par_bit), .A1(n1), .B0(stop_bit), .B1(mux_sel[0]), .Y(n2)
         );
endmodule


module UART_TX_test_1 ( P_DATA, clk, rst_n, DATA_VALID, PAR_EN, PAR_TYP, 
        TX_OUT, Busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk, rst_n, DATA_VALID, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_OUT, Busy, test_so;
  wire   DATA_LOAD, par_bit, ser_en, ser_done, ser_data, n3;
  wire   [1:0] mux_sel;

  NOR2BX2M U3 ( .AN(DATA_VALID), .B(Busy), .Y(DATA_LOAD) );
  Parity_Calc_test_1 parity_calc_inst ( .clk(clk), .rst_n(rst_n), .P_DATA(
        P_DATA), .DATA_VALID(DATA_LOAD), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .par_bit(par_bit), .test_si(n3), .test_se(test_se) );
  serializer_test_1 serializer_inst ( .clk(clk), .rst_n(rst_n), .P_DATA(P_DATA), .ser_en(ser_en), .Data_Valid(DATA_LOAD), .ser_data(ser_data), .ser_done(
        ser_done), .test_si(par_bit), .test_so(test_so), .test_se(test_se) );
  FSM_test_1 fsm_inst ( .clk(clk), .rst_n(rst_n), .DATA_VALID(DATA_VALID), 
        .ser_done(ser_done), .PAR_EN(PAR_EN), .ser_en(ser_en), .mux_sel(
        mux_sel), .Busy(Busy), .test_si(test_si), .test_so(n3), .test_se(
        test_se) );
  TX_MUX tx_mux_inst ( .mux_sel(mux_sel), .par_bit(par_bit), .ser_data(
        ser_data), .start_bit(1'b0), .stop_bit(1'b1), .TX_OUT(TX_OUT) );
endmodule


module edge_bit_counter_test_1 ( clk, rst_n, enable, PAR_EN, Prescale, bit_cnt, 
        edge_cnt, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk, rst_n, enable, PAR_EN, test_si, test_se;
  wire   N8, N9, N10, N11, N12, N13, N14, N36, N37, N38, N39, N40, N41, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         \add_88/carry[5] , \add_88/carry[4] , \add_88/carry[3] ,
         \add_88/carry[2] , n1, n2, n13, n14, n15, n16, n17, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [5:0] edge_cnt_next;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n28), .SI(bit_cnt[2]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n29), .SI(bit_cnt[1]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n30), .SI(bit_cnt[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(bit_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(edge_cnt_next[5]), .SI(edge_cnt[4]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[5]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(edge_cnt_next[0]), .SI(bit_cnt[3]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(edge_cnt_next[3]), .SI(edge_cnt[2]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(edge_cnt_next[2]), .SI(edge_cnt[1]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(edge_cnt_next[4]), .SI(edge_cnt[3]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(edge_cnt_next[1]), .SI(edge_cnt[0]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(edge_cnt[1]) );
  INVX2M U7 ( .A(n21), .Y(n39) );
  NOR2X2M U14 ( .A(n40), .B(N14), .Y(n21) );
  AND2X2M U15 ( .A(N37), .B(n21), .Y(edge_cnt_next[1]) );
  AND2X2M U16 ( .A(N38), .B(n21), .Y(edge_cnt_next[2]) );
  AND2X2M U17 ( .A(N39), .B(n21), .Y(edge_cnt_next[3]) );
  AND2X2M U18 ( .A(N40), .B(n21), .Y(edge_cnt_next[4]) );
  INVX2M U19 ( .A(enable), .Y(n40) );
  OAI32X1M U20 ( .A0(n18), .A1(bit_cnt[3]), .A2(n19), .B0(n20), .B1(n43), .Y(
        n28) );
  AOI2B1X1M U21 ( .A1N(n18), .A0(n19), .B0(n21), .Y(n20) );
  NAND3X2M U22 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Y(n19) );
  OAI22X1M U23 ( .A0(n41), .A1(n39), .B0(bit_cnt[0]), .B1(n18), .Y(n31) );
  OAI22X1M U24 ( .A0(n42), .A1(n39), .B0(n24), .B1(n18), .Y(n30) );
  XNOR2X2M U25 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .Y(n24) );
  NAND3X2M U26 ( .A(n25), .B(n39), .C(enable), .Y(n18) );
  OAI2B2X1M U27 ( .A1N(PAR_EN), .A0(n26), .B0(PAR_EN), .B1(n27), .Y(n25) );
  NOR4X1M U28 ( .A(bit_cnt[2]), .B(bit_cnt[0]), .C(n43), .D(n42), .Y(n26) );
  NOR4X1M U29 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n41), .D(n43), .Y(n27) );
  OR2X2M U30 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  NOR2X2M U31 ( .A(n22), .B(n40), .Y(n29) );
  CLKXOR2X2M U32 ( .A(n23), .B(bit_cnt[2]), .Y(n22) );
  NAND3X2M U33 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(N14), .Y(n23) );
  INVX2M U34 ( .A(Prescale[3]), .Y(n15) );
  AND2X2M U35 ( .A(N41), .B(n21), .Y(edge_cnt_next[5]) );
  AND2X2M U36 ( .A(N36), .B(n21), .Y(edge_cnt_next[0]) );
  INVX2M U37 ( .A(bit_cnt[0]), .Y(n41) );
  INVX2M U38 ( .A(bit_cnt[1]), .Y(n42) );
  INVX2M U39 ( .A(bit_cnt[3]), .Y(n43) );
  ADDHX1M U40 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_88/carry[2] ), .S(
        N37) );
  ADDHX1M U41 ( .A(edge_cnt[2]), .B(\add_88/carry[2] ), .CO(\add_88/carry[3] ), 
        .S(N38) );
  ADDHX1M U42 ( .A(edge_cnt[3]), .B(\add_88/carry[3] ), .CO(\add_88/carry[4] ), 
        .S(N39) );
  ADDHX1M U43 ( .A(edge_cnt[4]), .B(\add_88/carry[4] ), .CO(\add_88/carry[5] ), 
        .S(N40) );
  CLKINVX1M U44 ( .A(Prescale[0]), .Y(N8) );
  OAI2BB1X1M U45 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N9) );
  NOR2X1M U46 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  AO21XLM U47 ( .A0(n1), .A1(Prescale[2]), .B0(n2), .Y(N10) );
  CLKNAND2X2M U48 ( .A(n2), .B(n15), .Y(n13) );
  OAI21X1M U49 ( .A0(n2), .A1(n15), .B0(n13), .Y(N11) );
  XNOR2X1M U50 ( .A(Prescale[4]), .B(n13), .Y(N12) );
  NOR2X1M U51 ( .A(Prescale[4]), .B(n13), .Y(n14) );
  CLKXOR2X2M U52 ( .A(Prescale[5]), .B(n14), .Y(N13) );
  CLKINVX1M U53 ( .A(edge_cnt[0]), .Y(N36) );
  CLKXOR2X2M U54 ( .A(\add_88/carry[5] ), .B(edge_cnt[5]), .Y(N41) );
  NOR2BX1M U55 ( .AN(edge_cnt[0]), .B(N8), .Y(n16) );
  OAI2B2X1M U56 ( .A1N(N9), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(n34) );
  NOR2BX1M U57 ( .AN(N8), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U58 ( .A1N(edge_cnt[1]), .A0(n17), .B0(N9), .B1(n17), .Y(n33) );
  XNOR2X1M U59 ( .A(N13), .B(edge_cnt[5]), .Y(n32) );
  NAND3X1M U60 ( .A(n34), .B(n33), .C(n32), .Y(n38) );
  CLKXOR2X2M U61 ( .A(N12), .B(edge_cnt[4]), .Y(n37) );
  CLKXOR2X2M U62 ( .A(N10), .B(edge_cnt[2]), .Y(n36) );
  CLKXOR2X2M U63 ( .A(N11), .B(edge_cnt[3]), .Y(n35) );
  NOR4X1M U64 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N14) );
endmodule


module data_sampling_test_1 ( clk, rst_n, data_samp_en, Prescale, edge_cnt, 
        RX_IN, sampled_bit, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [5:0] edge_cnt;
  input clk, rst_n, data_samp_en, RX_IN, test_si, test_se;
  output sampled_bit, test_so;
  wire   N4, N5, N6, N7, N8, N9, N13, N14, N15, N16, N17, n26, n27,
         \add_41/carry[4] , \add_41/carry[3] , \add_41/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40;
  wire   [1:0] samples;
  assign test_so = samples[1];

  SDFFRQX2M \samples_reg[1]  ( .D(n40), .SI(samples[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(samples[1]) );
  SDFFRQX2M \samples_reg[0]  ( .D(n27), .SI(sampled_bit), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(samples[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(n26), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sampled_bit) );
  OR2X2M U4 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  ADDHX1M U5 ( .A(Prescale[3]), .B(\add_41/carry[2] ), .CO(\add_41/carry[3] ), 
        .S(N14) );
  ADDHX1M U6 ( .A(Prescale[4]), .B(\add_41/carry[3] ), .CO(\add_41/carry[4] ), 
        .S(N15) );
  ADDHX1M U7 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_41/carry[2] ), .S(
        N13) );
  ADDHX1M U8 ( .A(Prescale[5]), .B(\add_41/carry[4] ), .CO(N17), .S(N16) );
  CLKINVX1M U11 ( .A(Prescale[1]), .Y(N4) );
  OAI2BB1X1M U12 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n1), .Y(N5) );
  OR2X1M U13 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U14 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N6) );
  XNOR2X1M U15 ( .A(Prescale[4]), .B(n2), .Y(N7) );
  NOR3X1M U16 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N9) );
  OAI21X1M U17 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  NAND2BX1M U18 ( .AN(N9), .B(n3), .Y(N8) );
  NOR2X1M U19 ( .A(n4), .B(n5), .Y(n40) );
  MXI2X1M U20 ( .A(samples[1]), .B(RX_IN), .S0(n6), .Y(n5) );
  NOR2X1M U21 ( .A(n7), .B(n8), .Y(n6) );
  NOR2X1M U22 ( .A(n4), .B(n9), .Y(n27) );
  MXI2X1M U23 ( .A(samples[0]), .B(RX_IN), .S0(n7), .Y(n9) );
  NOR2X1M U24 ( .A(n4), .B(n10), .Y(n26) );
  MXI2X1M U25 ( .A(sampled_bit), .B(n14), .S0(n15), .Y(n10) );
  NOR4BX1M U26 ( .AN(n8), .B(n16), .C(n17), .D(n7), .Y(n15) );
  AND4X1M U27 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n7) );
  NOR3X1M U28 ( .A(n22), .B(n23), .C(n24), .Y(n21) );
  CLKXOR2X2M U29 ( .A(edge_cnt[4]), .B(N8), .Y(n24) );
  CLKXOR2X2M U30 ( .A(edge_cnt[1]), .B(N5), .Y(n23) );
  CLKXOR2X2M U31 ( .A(edge_cnt[0]), .B(N4), .Y(n22) );
  XNOR2X1M U32 ( .A(edge_cnt[2]), .B(N6), .Y(n20) );
  XNOR2X1M U33 ( .A(edge_cnt[3]), .B(N7), .Y(n19) );
  XNOR2X1M U34 ( .A(edge_cnt[5]), .B(N9), .Y(n18) );
  CLKNAND2X2M U35 ( .A(n25), .B(n28), .Y(n17) );
  XNOR2X1M U36 ( .A(edge_cnt[4]), .B(N16), .Y(n28) );
  XNOR2X1M U37 ( .A(edge_cnt[0]), .B(N4), .Y(n25) );
  NAND4X1M U38 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n16) );
  XNOR2X1M U39 ( .A(edge_cnt[1]), .B(N13), .Y(n32) );
  XNOR2X1M U40 ( .A(edge_cnt[5]), .B(N17), .Y(n31) );
  XNOR2X1M U41 ( .A(edge_cnt[2]), .B(N14), .Y(n30) );
  XNOR2X1M U42 ( .A(edge_cnt[3]), .B(N15), .Y(n29) );
  NAND4X1M U43 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n8) );
  NOR3X1M U44 ( .A(n37), .B(edge_cnt[5]), .C(n38), .Y(n36) );
  CLKXOR2X2M U45 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n38) );
  CLKXOR2X2M U46 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n37) );
  XNOR2X1M U47 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n35) );
  XNOR2X1M U48 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n34) );
  XNOR2X1M U49 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n33) );
  OAI2BB1X1M U50 ( .A0N(RX_IN), .A1N(samples[0]), .B0(n39), .Y(n14) );
  OAI21X1M U51 ( .A0(RX_IN), .A1(samples[0]), .B0(samples[1]), .Y(n39) );
  CLKINVX1M U52 ( .A(data_samp_en), .Y(n4) );
endmodule


module deserializer_test_1 ( clk, rst_n, deser_en, sampled_bit, P_DATA, 
        test_si, test_se );
  output [7:0] P_DATA;
  input clk, rst_n, deser_en, sampled_bit, test_si, test_se;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;

  SDFFRQX2M \P_DATA_reg[7]  ( .D(n24), .SI(P_DATA[6]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n20), .SI(P_DATA[4]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n12), .SI(P_DATA[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n18), .SI(P_DATA[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n16), .SI(P_DATA[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n22), .SI(P_DATA[5]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n14), .SI(P_DATA[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[2]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n25), .Y(n12) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n14) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n16) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n18) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n20) );
  OAI22X1M U8 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n22) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n24) );
  OAI2BB2X1M U11 ( .B0(n25), .B1(n2), .A0N(P_DATA[0]), .A1N(n2), .Y(n10) );
  INVX2M U12 ( .A(P_DATA[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA[7]), .Y(n3) );
  INVX2M U15 ( .A(P_DATA[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA[1]), .Y(n25) );
  INVX2M U17 ( .A(P_DATA[4]), .Y(n6) );
  INVX2M U26 ( .A(P_DATA[5]), .Y(n5) );
endmodule


module start_check ( strt_chk_en, sampled_bit, strt_glitch );
  input strt_chk_en, sampled_bit;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module parity_check ( par_chk_en, P_DATA, sampled_bit, PAR_TYP, par_err );
  input [7:0] P_DATA;
  input par_chk_en, sampled_bit, PAR_TYP;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2BX4M U3 ( .AN(par_chk_en), .B(n1), .Y(par_err) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U5 ( .A(P_DATA[7]), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XNOR2X2M U7 ( .A(sampled_bit), .B(P_DATA[6]), .Y(n5) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, stp_err );
  input stp_chk_en, sampled_bit;
  output stp_err;


  NOR2BX4M U2 ( .AN(stp_chk_en), .B(sampled_bit), .Y(stp_err) );
endmodule


module uart_rx_fsm_test_1 ( clk, rst_n, RX_IN, PAR_EN, par_err, strt_glitch, 
        stp_err, bit_cnt, edge_cnt, Prescale, edge_bit_counter_en, data_valid, 
        data_samp_en, deser_en, strt_chk_en, par_chk_en, stp_chk_en, test_so, 
        test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input clk, rst_n, RX_IN, PAR_EN, par_err, strt_glitch, stp_err, test_se;
  output edge_bit_counter_en, data_valid, data_samp_en, deser_en, strt_chk_en,
         par_chk_en, stp_chk_en, test_so;
  wire   par_err_latched, stp_err_latched, N26, N27, N28, N29, N30, N31, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, \r80/carry[4] ,
         \r80/carry[3] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n16, n17, n18,
         n19, n20, n21, n22, n23, n24;
  wire   [2:0] current_state;
  assign test_so = stp_err_latched;
  assign N26 = Prescale[1];

  SDFFRQX2M par_err_latched_reg ( .D(n43), .SI(current_state[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(par_err_latched) );
  SDFFRQX2M stp_err_latched_reg ( .D(n44), .SI(par_err_latched), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(stp_err_latched) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n47), .SI(edge_cnt[5]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n46), .SI(current_state[1]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n45), .SI(current_state[0]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  NOR2X2M U7 ( .A(n1), .B(n30), .Y(stp_chk_en) );
  NOR2X2M U8 ( .A(n27), .B(n1), .Y(par_chk_en) );
  NOR2X2M U10 ( .A(n1), .B(n38), .Y(deser_en) );
  AOI2BB2XLM U11 ( .B0(strt_chk_en), .B1(n41), .A0N(n39), .A1N(n38), .Y(n31)
         );
  AOI21X2M U12 ( .A0(n23), .A1(n34), .B0(strt_glitch), .Y(n41) );
  NAND2BX2M U13 ( .AN(n38), .B(n39), .Y(n36) );
  AND3X2M U14 ( .A(n29), .B(n24), .C(n20), .Y(n25) );
  OAI31X1M U15 ( .A0(n22), .A1(par_chk_en), .A2(n25), .B0(n26), .Y(n43) );
  INVX2M U16 ( .A(par_err_latched), .Y(n22) );
  NAND2X2M U17 ( .A(par_err), .B(par_chk_en), .Y(n26) );
  OAI31X1M U18 ( .A0(n21), .A1(stp_chk_en), .A2(n25), .B0(n28), .Y(n44) );
  INVX2M U19 ( .A(stp_err_latched), .Y(n21) );
  NAND2X2M U20 ( .A(stp_err), .B(stp_chk_en), .Y(n28) );
  OR4X1M U21 ( .A(n16), .B(n10), .C(n9), .D(n8), .Y(n1) );
  NOR3BX2M U22 ( .AN(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n34) );
  AOI22X1M U23 ( .A0(n35), .A1(n19), .B0(n17), .B1(PAR_EN), .Y(n33) );
  INVX2M U24 ( .A(n27), .Y(n19) );
  INVX2M U25 ( .A(n36), .Y(n17) );
  OAI221X1M U26 ( .A0(n27), .A1(n35), .B0(PAR_EN), .B1(n36), .C0(n30), .Y(n46)
         );
  NOR2X2M U27 ( .A(current_state[1]), .B(current_state[0]), .Y(n29) );
  OAI2B11X2M U28 ( .A1N(current_state[1]), .A0(n31), .B0(n32), .C0(n33), .Y(
        n45) );
  NAND4BX1M U29 ( .AN(strt_glitch), .B(strt_chk_en), .C(n34), .D(n23), .Y(n32)
         );
  OAI211X2M U30 ( .A0(n31), .A1(n18), .B0(n37), .C0(n33), .Y(n47) );
  OAI221X1M U31 ( .A0(current_state[2]), .A1(n24), .B0(n40), .B1(n20), .C0(n29), .Y(n37) );
  NOR4X1M U32 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .C(bit_cnt[1]), .D(bit_cnt[0]), 
        .Y(n40) );
  NAND2X2M U33 ( .A(current_state[2]), .B(n29), .Y(n30) );
  AND2X2M U34 ( .A(n34), .B(bit_cnt[3]), .Y(n39) );
  INVX2M U35 ( .A(Prescale[2]), .Y(N27) );
  NOR3X2M U36 ( .A(current_state[1]), .B(current_state[2]), .C(n18), .Y(
        strt_chk_en) );
  NAND4BBX1M U37 ( .AN(bit_cnt[0]), .BN(bit_cnt[2]), .C(bit_cnt[1]), .D(
        bit_cnt[3]), .Y(n35) );
  NOR4X1M U38 ( .A(n42), .B(current_state[1]), .C(stp_err_latched), .D(
        par_err_latched), .Y(data_valid) );
  NAND2X2M U39 ( .A(current_state[2]), .B(current_state[0]), .Y(n42) );
  NAND3X2M U40 ( .A(current_state[0]), .B(n20), .C(current_state[1]), .Y(n27)
         );
  NAND3X2M U41 ( .A(n18), .B(n20), .C(current_state[1]), .Y(n38) );
  INVX2M U42 ( .A(current_state[2]), .Y(n20) );
  INVX2M U43 ( .A(current_state[0]), .Y(n18) );
  INVX2M U44 ( .A(bit_cnt[3]), .Y(n23) );
  INVX2M U45 ( .A(RX_IN), .Y(n24) );
  BUFX2M U46 ( .A(edge_bit_counter_en), .Y(data_samp_en) );
  OAI21X2M U47 ( .A0(current_state[2]), .A1(n29), .B0(n30), .Y(
        edge_bit_counter_en) );
  AND2X1M U48 ( .A(\r80/carry[4] ), .B(Prescale[5]), .Y(N31) );
  CLKXOR2X2M U49 ( .A(Prescale[5]), .B(\r80/carry[4] ), .Y(N30) );
  AND2X1M U50 ( .A(\r80/carry[3] ), .B(Prescale[4]), .Y(\r80/carry[4] ) );
  CLKXOR2X2M U51 ( .A(Prescale[4]), .B(\r80/carry[3] ), .Y(N29) );
  AND2X1M U52 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\r80/carry[3] ) );
  CLKXOR2X2M U53 ( .A(Prescale[3]), .B(Prescale[2]), .Y(N28) );
  NOR2BX1M U54 ( .AN(edge_cnt[0]), .B(N26), .Y(n3) );
  OAI2B2X1M U55 ( .A1N(N27), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n7) );
  NOR2BX1M U56 ( .AN(N26), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U57 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N27), .B1(n4), .Y(n6) );
  XNOR2X1M U58 ( .A(N31), .B(edge_cnt[5]), .Y(n5) );
  NAND3X1M U59 ( .A(n7), .B(n6), .C(n5), .Y(n16) );
  CLKXOR2X2M U60 ( .A(N30), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U61 ( .A(N28), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U62 ( .A(N29), .B(edge_cnt[3]), .Y(n8) );
endmodule


module UART_RX_test_1 ( RX_IN, clk, rst_n, PAR_EN, PAR_TYP, Prescale, P_DATA, 
        DATA_VALID, PAR_ERR, Stop_ERR, test_si, test_so, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, clk, rst_n, PAR_EN, PAR_TYP, test_si, test_se;
  output DATA_VALID, PAR_ERR, Stop_ERR, test_so;
  wire   data_valid_fsm, edge_bit_counter_en, data_samp_en, sampled_bit,
         deser_en, strt_chk_en, strt_glitch, par_chk_en, stp_chk_en, n2, n3,
         n6;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  SDFFRQX2M data_valid_reg_reg ( .D(data_valid_fsm), .SI(n6), .SE(test_se), 
        .CK(clk), .RN(n2), .Q(DATA_VALID) );
  INVX2M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(rst_n), .Y(n3) );
  edge_bit_counter_test_1 edge_bit_counter_inst ( .clk(clk), .rst_n(n2), 
        .enable(edge_bit_counter_en), .PAR_EN(PAR_EN), .Prescale(Prescale), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .test_si(P_DATA[7]), .test_se(
        test_se) );
  data_sampling_test_1 data_sampling_inst ( .clk(clk), .rst_n(n2), 
        .data_samp_en(data_samp_en), .Prescale(Prescale), .edge_cnt(edge_cnt), 
        .RX_IN(RX_IN), .sampled_bit(sampled_bit), .test_si(test_si), .test_so(
        n6), .test_se(test_se) );
  deserializer_test_1 deserializer_inst ( .clk(clk), .rst_n(n2), .deser_en(
        deser_en), .sampled_bit(sampled_bit), .P_DATA(P_DATA), .test_si(
        DATA_VALID), .test_se(test_se) );
  start_check start_check_inst ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .strt_glitch(strt_glitch) );
  parity_check parity_check_inst ( .par_chk_en(par_chk_en), .P_DATA(P_DATA), 
        .sampled_bit(sampled_bit), .PAR_TYP(PAR_TYP), .par_err(PAR_ERR) );
  stop_check stop_check_inst ( .stp_chk_en(stp_chk_en), .sampled_bit(
        sampled_bit), .stp_err(Stop_ERR) );
  uart_rx_fsm_test_1 uart_rx_fsm_inst ( .clk(clk), .rst_n(n2), .RX_IN(RX_IN), 
        .PAR_EN(PAR_EN), .par_err(PAR_ERR), .strt_glitch(strt_glitch), 
        .stp_err(Stop_ERR), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(
        Prescale), .edge_bit_counter_en(edge_bit_counter_en), .data_valid(
        data_valid_fsm), .data_samp_en(data_samp_en), .deser_en(deser_en), 
        .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en), .stp_chk_en(
        stp_chk_en), .test_so(test_so), .test_se(test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si, test_so, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so;
  wire   n1, n2, n5;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_test_1 U0_UART_TX ( .P_DATA(TX_IN_P), .clk(TX_CLK), .rst_n(n1), 
        .DATA_VALID(TX_IN_V), .PAR_EN(parity_enable), .PAR_TYP(parity_type), 
        .TX_OUT(TX_OUT_S), .Busy(TX_OUT_V), .test_si(n5), .test_so(test_so), 
        .test_se(test_se) );
  UART_RX_test_1 U0_UART_RX ( .RX_IN(RX_IN_S), .clk(RX_CLK), .rst_n(n1), 
        .PAR_EN(parity_enable), .PAR_TYP(parity_type), .Prescale(Prescale), 
        .P_DATA(RX_OUT_P), .DATA_VALID(RX_OUT_V), .PAR_ERR(parity_error), 
        .Stop_ERR(framing_error), .test_si(test_si), .test_so(n5), .test_se(
        test_se) );
endmodule


module SYS_TOP_DFT ( SI, SE, scan_clk, scan_rst, test_mode, SO, REF_CLK, 
        UART_CLK, UART_RX_IN, RST, UART_TX_OUT, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input SE, scan_clk, scan_rst, test_mode, REF_CLK, UART_CLK, UART_RX_IN, RST;
  output UART_TX_OUT, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, RX_CLK, RX_CLK_M, TX_CLK, TX_CLK_M, RST_M,
         RST_SYNC_1, RST_SYNC_1_M, RST_SYNC_2, RST_SYNC_2_M, RF_WrEn, RF_RdEn,
         RF_RdData_Valid, CLK_EN, ALU_CLK, ALU_EN, ALU_OUT_VALID,
         RX_DATA_VALID, RX_SYNC_VALID, TX_FIFO_WINC, FIFO_RINC, FIFO_FULL,
         FIFO_EMPTY, TX_BUSY, n1, n2, n3, n4, n5, n6, n9, n10, n11, n14, n17,
         n18, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36;
  wire   [1:0] REG2;
  wire   [5:0] PRESCALE;
  wire   [7:0] RX_Div_Ratio;
  wire   [7:0] REG3;
  wire   [7:0] RF_WrData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_RdData;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] RX_SYNC_DATA;
  wire   [7:0] TX_FIFO_WDATA;
  wire   [7:0] FIFO_RDATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U2 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX4M U3 ( .A(n6), .Y(n5) );
  INVX2M U4 ( .A(RST_SYNC_1_M), .Y(n6) );
  INVX4M U5 ( .A(n4), .Y(n3) );
  INVX2M U6 ( .A(RST_SYNC_2_M), .Y(n4) );
  BUFX2M U7 ( .A(test_mode), .Y(n2) );
  INVXLM U13 ( .A(n28), .Y(n22) );
  DLY1X1M U14 ( .A(n22), .Y(n23) );
  DLY1X1M U15 ( .A(n26), .Y(n24) );
  INVXLM U16 ( .A(n36), .Y(n25) );
  INVXLM U17 ( .A(n25), .Y(n26) );
  INVXLM U18 ( .A(n25), .Y(n27) );
  INVXLM U19 ( .A(n35), .Y(n28) );
  INVXLM U20 ( .A(n28), .Y(n29) );
  INVXLM U21 ( .A(n28), .Y(n30) );
  INVXLM U22 ( .A(n34), .Y(n31) );
  INVXLM U23 ( .A(n31), .Y(n32) );
  INVXLM U24 ( .A(SE), .Y(n33) );
  INVXLM U25 ( .A(n33), .Y(n34) );
  INVXLM U26 ( .A(n33), .Y(n35) );
  INVXLM U27 ( .A(n33), .Y(n36) );
  MUX2X1_1 REF_CLK_MUX ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        REF_CLK_M) );
  MUX2X1_4 UART_CLK_MUX ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_CLK_M) );
  MUX2X1_3 RX_CLK_MUX ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        RX_CLK_M) );
  MUX2X1_2 TX_CLK_MUX ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        TX_CLK_M) );
  MUX2X1_0 RST_MUX ( .IN_0(RST), .IN_1(scan_rst), .SEL(n2), .OUT(RST_M) );
  MUX2X1_6 RST_SYNC_1_MUX ( .IN_0(RST_SYNC_1), .IN_1(scan_rst), .SEL(n2), 
        .OUT(RST_SYNC_1_M) );
  MUX2X1_5 RST_SYNC_2_MUX ( .IN_0(RST_SYNC_2), .IN_1(scan_rst), .SEL(n2), 
        .OUT(RST_SYNC_2_M) );
  RST_SYNC_test_0 RST_SYNC_1_INST ( .RST(RST_M), .CLK(REF_CLK_M), .SYNC_RST(
        RST_SYNC_1), .test_si(n14), .test_se(n32) );
  RST_SYNC_test_1 RST_SYNC_2_INST ( .RST(RST_M), .CLK(UART_CLK_M), .SYNC_RST(
        RST_SYNC_2), .test_si(RST_SYNC_1), .test_se(n35) );
  CLK_DIV_MUX PRESCALE_MUX_INST ( .PRESCALE(PRESCALE), .RX_Div_Ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, RX_Div_Ratio[3:0]})
         );
  ClkDiv_test_1 TX_CLK_DIV_INST ( .I_div_ratio(REG3), .I_ref_clk(UART_CLK_M), 
        .I_rst(n3), .I_clk_en(1'b1), .O_div_clk(TX_CLK), .test_si(n10), 
        .test_so(n9), .test_se(n29) );
  ClkDiv_test_0 RX_CLK_DIV_INST ( .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        RX_Div_Ratio[3:0]}), .I_ref_clk(UART_CLK_M), .I_rst(n3), .I_clk_en(
        1'b1), .O_div_clk(RX_CLK), .test_si2(SI[0]), .test_si1(RST_SYNC_2), 
        .test_so2(n11), .test_so1(SO[1]), .test_se(n32) );
  Reg_File_test_1 REG_FILE_INST ( .WrData(RF_WrData), .Address(RF_Address), 
        .WrEn(RF_WrEn), .RdEn(RF_RdEn), .CLK(REF_CLK_M), .rst_n(n5), .RdData(
        RF_RdData), .RdData_Valid(RF_RdData_Valid), .Reg_0(REG0), .Reg_1(REG1), 
        .Reg_2({PRESCALE, REG2}), .Reg_3(REG3), .test_si2(SI[1]), .test_si1(
        FIFO_RINC), .test_so2(n14), .test_so1(SO[2]), .test_se(SE) );
  CLK_GATE_DFT CLK_GATE_DFT_INST ( .test_en(n2), .CLK_EN(CLK_EN), .CLK(
        REF_CLK_M), .GATED_CLK(ALU_CLK) );
  ALU_test_1 ALU_INST ( .CLK(ALU_CLK), .RST(n5), .A(REG0), .B(REG1), .ALU_FUN(
        ALU_FUN), .Enable(ALU_EN), .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VALID), .test_si(SI[3]), .test_se(n30) );
  DATA_SYNC_test_1 DATA_SYNC_INST ( .Unsync_bus(RX_P_DATA), .bus_enable(
        RX_DATA_VALID), .CLK(REF_CLK_M), .RST(n5), .sync_bus(RX_SYNC_DATA), 
        .enable_pulse(RX_SYNC_VALID), .test_si(n18), .test_so(n17), .test_se(
        n35) );
  ASYNC_FIFO_test_1 ASYNC_FIFO_INST ( .wclk(REF_CLK_M), .rclk(TX_CLK_M), 
        .wrst_n(n5), .rrst_n(n3), .winc(TX_FIFO_WINC), .rinc(FIFO_RINC), 
        .wdata(TX_FIFO_WDATA), .wfull(FIFO_FULL), .rempty(FIFO_EMPTY), .rdata(
        FIFO_RDATA), .test_si2(SI[2]), .test_si1(ALU_OUT_VALID), .test_so2(n18), .test_so1(SO[3]), .test_se(SE) );
  PULSE_GEN_test_1 PULSE_GEN_INST ( .CLK(TX_CLK_M), .RST(n3), .LVL_SIG(TX_BUSY), .PULSE_SIG(FIFO_RINC), .test_si(n17), .test_se(n27) );
  SYS_CTRL_test_1 SYS_CTRL_INST ( .CLK(REF_CLK_M), .RST(n5), .UART_RX_DATA(
        RX_SYNC_DATA), .UART_RX_VLD(RX_SYNC_VALID), .RF_RdData(RF_RdData), 
        .RF_RdData_VLD(RF_RdData_Valid), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VALID), .FIFO_FULL(FIFO_FULL), .RF_WrEn(RF_WrEn), .RF_RdEn(
        RF_RdEn), .RF_Address(RF_Address), .RF_WrData(RF_WrData), .ALU_FUN(
        ALU_FUN), .ALU_EN(ALU_EN), .UART_TX_DATA(TX_FIFO_WDATA), .UART_TX_VLD(
        TX_FIFO_WINC), .CLKG_EN(CLK_EN), .test_si(n11), .test_so(n10), 
        .test_se(n24) );
  UART_test_1 UART_INST ( .RST(n3), .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M), 
        .RX_IN_S(UART_RX_IN), .RX_OUT_P(RX_P_DATA), .RX_OUT_V(RX_DATA_VALID), 
        .TX_IN_P(FIFO_RDATA), .TX_IN_V(n1), .TX_OUT_S(UART_TX_OUT), .TX_OUT_V(
        TX_BUSY), .Prescale(PRESCALE), .parity_enable(REG2[0]), .parity_type(
        REG2[1]), .parity_error(parity_error), .framing_error(framing_error), 
        .test_si(n9), .test_so(SO[0]), .test_se(n23) );
endmodule

