/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Fri Apr 21 16:54:54 2017
/////////////////////////////////////////////////////////////


module adder_WIDTH64 ( a, b, ci, s, co );
  input [63:0] a;
  input [63:0] b;
  output [63:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  FADDX1_RVT U1 ( .A(b[63]), .B(a[63]), .CI(n1), .CO(co), .S(s[63]) );
  FADDX1_RVT U2 ( .A(b[62]), .B(a[62]), .CI(n2), .CO(n1), .S(s[62]) );
  FADDX1_RVT U3 ( .A(b[61]), .B(a[61]), .CI(n3), .CO(n2), .S(s[61]) );
  FADDX1_RVT U4 ( .A(b[60]), .B(a[60]), .CI(n4), .CO(n3), .S(s[60]) );
  FADDX1_RVT U5 ( .A(b[59]), .B(a[59]), .CI(n5), .CO(n4), .S(s[59]) );
  FADDX1_RVT U6 ( .A(b[58]), .B(a[58]), .CI(n6), .CO(n5), .S(s[58]) );
  FADDX1_RVT U7 ( .A(b[57]), .B(a[57]), .CI(n7), .CO(n6), .S(s[57]) );
  FADDX1_RVT U8 ( .A(b[56]), .B(a[56]), .CI(n8), .CO(n7), .S(s[56]) );
  FADDX1_RVT U9 ( .A(b[55]), .B(a[55]), .CI(n9), .CO(n8), .S(s[55]) );
  FADDX1_RVT U10 ( .A(b[54]), .B(a[54]), .CI(n10), .CO(n9), .S(s[54]) );
  FADDX1_RVT U11 ( .A(b[53]), .B(a[53]), .CI(n11), .CO(n10), .S(s[53]) );
  FADDX1_RVT U12 ( .A(b[52]), .B(a[52]), .CI(n12), .CO(n11), .S(s[52]) );
  FADDX1_RVT U13 ( .A(b[51]), .B(a[51]), .CI(n13), .CO(n12), .S(s[51]) );
  FADDX1_RVT U14 ( .A(b[50]), .B(a[50]), .CI(n14), .CO(n13), .S(s[50]) );
  FADDX1_RVT U15 ( .A(b[49]), .B(a[49]), .CI(n15), .CO(n14), .S(s[49]) );
  FADDX1_RVT U16 ( .A(b[48]), .B(a[48]), .CI(n16), .CO(n15), .S(s[48]) );
  FADDX1_RVT U17 ( .A(b[47]), .B(a[47]), .CI(n17), .CO(n16), .S(s[47]) );
  FADDX1_RVT U18 ( .A(b[46]), .B(a[46]), .CI(n18), .CO(n17), .S(s[46]) );
  FADDX1_RVT U19 ( .A(b[45]), .B(a[45]), .CI(n19), .CO(n18), .S(s[45]) );
  FADDX1_RVT U20 ( .A(b[44]), .B(a[44]), .CI(n20), .CO(n19), .S(s[44]) );
  FADDX1_RVT U21 ( .A(b[43]), .B(a[43]), .CI(n21), .CO(n20), .S(s[43]) );
  FADDX1_RVT U22 ( .A(b[42]), .B(a[42]), .CI(n22), .CO(n21), .S(s[42]) );
  FADDX1_RVT U23 ( .A(b[41]), .B(a[41]), .CI(n23), .CO(n22), .S(s[41]) );
  FADDX1_RVT U24 ( .A(b[40]), .B(a[40]), .CI(n24), .CO(n23), .S(s[40]) );
  FADDX1_RVT U25 ( .A(b[39]), .B(a[39]), .CI(n25), .CO(n24), .S(s[39]) );
  FADDX1_RVT U26 ( .A(b[38]), .B(a[38]), .CI(n26), .CO(n25), .S(s[38]) );
  FADDX1_RVT U27 ( .A(b[37]), .B(a[37]), .CI(n27), .CO(n26), .S(s[37]) );
  FADDX1_RVT U28 ( .A(b[36]), .B(a[36]), .CI(n28), .CO(n27), .S(s[36]) );
  FADDX1_RVT U29 ( .A(b[35]), .B(a[35]), .CI(n29), .CO(n28), .S(s[35]) );
  FADDX1_RVT U30 ( .A(b[34]), .B(a[34]), .CI(n30), .CO(n29), .S(s[34]) );
  FADDX1_RVT U31 ( .A(b[33]), .B(a[33]), .CI(n31), .CO(n30), .S(s[33]) );
  FADDX1_RVT U32 ( .A(b[32]), .B(a[32]), .CI(n32), .CO(n31), .S(s[32]) );
  FADDX1_RVT U33 ( .A(b[31]), .B(a[31]), .CI(n33), .CO(n32), .S(s[31]) );
  FADDX1_RVT U34 ( .A(b[30]), .B(a[30]), .CI(n34), .CO(n33), .S(s[30]) );
  FADDX1_RVT U35 ( .A(b[29]), .B(a[29]), .CI(n35), .CO(n34), .S(s[29]) );
  FADDX1_RVT U36 ( .A(b[28]), .B(a[28]), .CI(n36), .CO(n35), .S(s[28]) );
  FADDX1_RVT U37 ( .A(b[27]), .B(a[27]), .CI(n37), .CO(n36), .S(s[27]) );
  FADDX1_RVT U38 ( .A(b[26]), .B(a[26]), .CI(n38), .CO(n37), .S(s[26]) );
  FADDX1_RVT U39 ( .A(b[25]), .B(a[25]), .CI(n39), .CO(n38), .S(s[25]) );
  FADDX1_RVT U40 ( .A(b[24]), .B(a[24]), .CI(n40), .CO(n39), .S(s[24]) );
  FADDX1_RVT U41 ( .A(b[23]), .B(a[23]), .CI(n41), .CO(n40), .S(s[23]) );
  FADDX1_RVT U42 ( .A(b[22]), .B(a[22]), .CI(n42), .CO(n41), .S(s[22]) );
  FADDX1_RVT U43 ( .A(b[21]), .B(a[21]), .CI(n43), .CO(n42), .S(s[21]) );
  FADDX1_RVT U44 ( .A(b[20]), .B(a[20]), .CI(n44), .CO(n43), .S(s[20]) );
  FADDX1_RVT U45 ( .A(b[19]), .B(a[19]), .CI(n45), .CO(n44), .S(s[19]) );
  FADDX1_RVT U46 ( .A(b[18]), .B(a[18]), .CI(n46), .CO(n45), .S(s[18]) );
  FADDX1_RVT U47 ( .A(b[17]), .B(a[17]), .CI(n47), .CO(n46), .S(s[17]) );
  FADDX1_RVT U48 ( .A(b[16]), .B(a[16]), .CI(n48), .CO(n47), .S(s[16]) );
  FADDX1_RVT U49 ( .A(b[15]), .B(a[15]), .CI(n49), .CO(n48), .S(s[15]) );
  FADDX1_RVT U50 ( .A(b[14]), .B(a[14]), .CI(n50), .CO(n49), .S(s[14]) );
  FADDX1_RVT U51 ( .A(b[13]), .B(a[13]), .CI(n51), .CO(n50), .S(s[13]) );
  FADDX1_RVT U52 ( .A(b[12]), .B(a[12]), .CI(n52), .CO(n51), .S(s[12]) );
  FADDX1_RVT U53 ( .A(b[11]), .B(a[11]), .CI(n53), .CO(n52), .S(s[11]) );
  FADDX1_RVT U54 ( .A(b[10]), .B(a[10]), .CI(n54), .CO(n53), .S(s[10]) );
  FADDX1_RVT U55 ( .A(b[9]), .B(a[9]), .CI(n55), .CO(n54), .S(s[9]) );
  FADDX1_RVT U56 ( .A(b[8]), .B(a[8]), .CI(n56), .CO(n55), .S(s[8]) );
  FADDX1_RVT U57 ( .A(b[7]), .B(a[7]), .CI(n57), .CO(n56), .S(s[7]) );
  FADDX1_RVT U58 ( .A(b[6]), .B(a[6]), .CI(n58), .CO(n57), .S(s[6]) );
  FADDX1_RVT U59 ( .A(b[5]), .B(a[5]), .CI(n59), .CO(n58), .S(s[5]) );
  FADDX1_RVT U60 ( .A(b[4]), .B(a[4]), .CI(n60), .CO(n59), .S(s[4]) );
  FADDX1_RVT U61 ( .A(b[3]), .B(a[3]), .CI(n61), .CO(n60), .S(s[3]) );
  FADDX1_RVT U62 ( .A(b[2]), .B(a[2]), .CI(n62), .CO(n61), .S(s[2]) );
  FADDX1_RVT U63 ( .A(b[1]), .B(a[1]), .CI(n63), .CO(n62), .S(s[1]) );
  FADDX1_RVT U64 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n63), .S(s[0]) );
endmodule


module adder_WIDTH32 ( a, b, ci, s, co );
  input [31:0] a;
  input [31:0] b;
  output [31:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n28) );
  FADDX1_RVT U2 ( .A(a[27]), .B(b[27]), .CI(n2), .CO(n29), .S(s[27]) );
  FADDX1_RVT U3 ( .A(a[26]), .B(b[26]), .CI(n3), .CO(n2), .S(s[26]) );
  FADDX1_RVT U4 ( .A(a[25]), .B(b[25]), .CI(n4), .CO(n3), .S(s[25]) );
  FADDX1_RVT U5 ( .A(a[24]), .B(b[24]), .CI(n5), .CO(n4), .S(s[24]) );
  FADDX1_RVT U6 ( .A(a[23]), .B(b[23]), .CI(n6), .CO(n5), .S(s[23]) );
  FADDX1_RVT U7 ( .A(a[22]), .B(b[22]), .CI(n7), .CO(n6), .S(s[22]) );
  FADDX1_RVT U8 ( .A(a[21]), .B(b[21]), .CI(n8), .CO(n7), .S(s[21]) );
  FADDX1_RVT U9 ( .A(a[20]), .B(b[20]), .CI(n9), .CO(n8), .S(s[20]) );
  FADDX1_RVT U10 ( .A(a[19]), .B(b[19]), .CI(n10), .CO(n9), .S(s[19]) );
  FADDX1_RVT U11 ( .A(a[18]), .B(b[18]), .CI(n11), .CO(n10), .S(s[18]) );
  FADDX1_RVT U12 ( .A(a[17]), .B(b[17]), .CI(n12), .CO(n11), .S(s[17]) );
  FADDX1_RVT U13 ( .A(a[16]), .B(b[16]), .CI(n13), .CO(n12), .S(s[16]) );
  FADDX1_RVT U14 ( .A(a[15]), .B(b[15]), .CI(n14), .CO(n13), .S(s[15]) );
  FADDX1_RVT U15 ( .A(a[14]), .B(b[14]), .CI(n15), .CO(n14), .S(s[14]) );
  FADDX1_RVT U16 ( .A(a[13]), .B(b[13]), .CI(n16), .CO(n15), .S(s[13]) );
  FADDX1_RVT U17 ( .A(a[12]), .B(b[12]), .CI(n17), .CO(n16), .S(s[12]) );
  FADDX1_RVT U18 ( .A(a[11]), .B(b[11]), .CI(n18), .CO(n17), .S(s[11]) );
  FADDX1_RVT U19 ( .A(a[10]), .B(b[10]), .CI(n19), .CO(n18), .S(s[10]) );
  FADDX1_RVT U20 ( .A(a[9]), .B(b[9]), .CI(n20), .CO(n19), .S(s[9]) );
  FADDX1_RVT U21 ( .A(a[8]), .B(b[8]), .CI(n21), .CO(n20), .S(s[8]) );
  FADDX1_RVT U22 ( .A(a[7]), .B(b[7]), .CI(n22), .CO(n21), .S(s[7]) );
  FADDX1_RVT U23 ( .A(a[6]), .B(b[6]), .CI(n23), .CO(n22), .S(s[6]) );
  FADDX1_RVT U24 ( .A(a[5]), .B(b[5]), .CI(n24), .CO(n23), .S(s[5]) );
  FADDX1_RVT U25 ( .A(a[4]), .B(b[4]), .CI(n25), .CO(n24), .S(s[4]) );
  FADDX1_RVT U26 ( .A(a[3]), .B(b[3]), .CI(n26), .CO(n25), .S(s[3]) );
  FADDX1_RVT U27 ( .A(a[2]), .B(b[2]), .CI(n27), .CO(n26), .S(s[2]) );
  FADDX1_RVT U28 ( .A(a[1]), .B(b[1]), .CI(n28), .CO(n27), .S(s[1]) );
  HADDX1_RVT U29 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U30 ( .A(a[28]), .B(b[28]), .CI(n29), .CO(n30), .S(s[28]) );
  FADDX1_RVT U31 ( .A(a[29]), .B(b[29]), .CI(n30), .CO(n31), .S(s[29]) );
  FADDX1_RVT U32 ( .A(a[30]), .B(b[30]), .CI(n31), .CO(n32), .S(s[30]) );
  FADDX1_RVT U33 ( .A(n32), .B(b[31]), .CI(a[31]), .S(s[31]) );
endmodule


module adder_WIDTH16_2 ( a, b, ci, s, co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n12) );
  FADDX1_RVT U2 ( .A(a[11]), .B(b[11]), .CI(n2), .CO(n13), .S(s[11]) );
  FADDX1_RVT U3 ( .A(a[10]), .B(b[10]), .CI(n3), .CO(n2), .S(s[10]) );
  FADDX1_RVT U4 ( .A(a[9]), .B(b[9]), .CI(n4), .CO(n3), .S(s[9]) );
  FADDX1_RVT U5 ( .A(a[8]), .B(b[8]), .CI(n5), .CO(n4), .S(s[8]) );
  FADDX1_RVT U6 ( .A(a[7]), .B(b[7]), .CI(n6), .CO(n5), .S(s[7]) );
  FADDX1_RVT U7 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n6), .S(s[6]) );
  FADDX1_RVT U8 ( .A(a[5]), .B(b[5]), .CI(n8), .CO(n7), .S(s[5]) );
  FADDX1_RVT U9 ( .A(a[4]), .B(b[4]), .CI(n9), .CO(n8), .S(s[4]) );
  FADDX1_RVT U10 ( .A(a[3]), .B(b[3]), .CI(n10), .CO(n9), .S(s[3]) );
  FADDX1_RVT U11 ( .A(a[2]), .B(b[2]), .CI(n11), .CO(n10), .S(s[2]) );
  FADDX1_RVT U12 ( .A(a[1]), .B(b[1]), .CI(n12), .CO(n11), .S(s[1]) );
  HADDX1_RVT U13 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U14 ( .A(a[12]), .B(b[12]), .CI(n13), .CO(n14), .S(s[12]) );
  FADDX1_RVT U15 ( .A(a[13]), .B(b[13]), .CI(n14), .CO(n15), .S(s[13]) );
  FADDX1_RVT U16 ( .A(a[14]), .B(b[14]), .CI(n15), .CO(n16), .S(s[14]) );
  FADDX1_RVT U17 ( .A(n16), .B(b[15]), .CI(a[15]), .S(s[15]) );
endmodule


module adder_WIDTH8_6 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH16_0 ( a, b, ci, s, co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n12) );
  FADDX1_RVT U2 ( .A(a[11]), .B(b[11]), .CI(n2), .CO(n13), .S(s[11]) );
  FADDX1_RVT U3 ( .A(a[10]), .B(b[10]), .CI(n3), .CO(n2), .S(s[10]) );
  FADDX1_RVT U4 ( .A(a[9]), .B(b[9]), .CI(n4), .CO(n3), .S(s[9]) );
  FADDX1_RVT U5 ( .A(a[8]), .B(b[8]), .CI(n5), .CO(n4), .S(s[8]) );
  FADDX1_RVT U6 ( .A(a[7]), .B(b[7]), .CI(n6), .CO(n5), .S(s[7]) );
  FADDX1_RVT U7 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n6), .S(s[6]) );
  FADDX1_RVT U8 ( .A(a[5]), .B(b[5]), .CI(n8), .CO(n7), .S(s[5]) );
  FADDX1_RVT U9 ( .A(a[4]), .B(b[4]), .CI(n9), .CO(n8), .S(s[4]) );
  FADDX1_RVT U10 ( .A(a[3]), .B(b[3]), .CI(n10), .CO(n9), .S(s[3]) );
  FADDX1_RVT U11 ( .A(a[2]), .B(b[2]), .CI(n11), .CO(n10), .S(s[2]) );
  FADDX1_RVT U12 ( .A(a[1]), .B(b[1]), .CI(n12), .CO(n11), .S(s[1]) );
  HADDX1_RVT U13 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U14 ( .A(a[12]), .B(b[12]), .CI(n13), .CO(n14), .S(s[12]) );
  FADDX1_RVT U15 ( .A(a[13]), .B(b[13]), .CI(n14), .CO(n15), .S(s[13]) );
  FADDX1_RVT U16 ( .A(a[14]), .B(b[14]), .CI(n15), .CO(n16), .S(s[14]) );
  FADDX1_RVT U17 ( .A(n16), .B(b[15]), .CI(a[15]), .S(s[15]) );
endmodule


module adder_WIDTH16_1 ( a, b, ci, s, co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n12) );
  FADDX1_RVT U2 ( .A(a[11]), .B(b[11]), .CI(n2), .CO(n13), .S(s[11]) );
  FADDX1_RVT U3 ( .A(a[10]), .B(b[10]), .CI(n3), .CO(n2), .S(s[10]) );
  FADDX1_RVT U4 ( .A(a[9]), .B(b[9]), .CI(n4), .CO(n3), .S(s[9]) );
  FADDX1_RVT U5 ( .A(a[8]), .B(b[8]), .CI(n5), .CO(n4), .S(s[8]) );
  FADDX1_RVT U6 ( .A(a[7]), .B(b[7]), .CI(n6), .CO(n5), .S(s[7]) );
  FADDX1_RVT U7 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n6), .S(s[6]) );
  FADDX1_RVT U8 ( .A(a[5]), .B(b[5]), .CI(n8), .CO(n7), .S(s[5]) );
  FADDX1_RVT U9 ( .A(a[4]), .B(b[4]), .CI(n9), .CO(n8), .S(s[4]) );
  FADDX1_RVT U10 ( .A(a[3]), .B(b[3]), .CI(n10), .CO(n9), .S(s[3]) );
  FADDX1_RVT U11 ( .A(a[2]), .B(b[2]), .CI(n11), .CO(n10), .S(s[2]) );
  FADDX1_RVT U12 ( .A(a[1]), .B(b[1]), .CI(n12), .CO(n11), .S(s[1]) );
  HADDX1_RVT U13 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U14 ( .A(a[12]), .B(b[12]), .CI(n13), .CO(n14), .S(s[12]) );
  FADDX1_RVT U15 ( .A(a[13]), .B(b[13]), .CI(n14), .CO(n15), .S(s[13]) );
  FADDX1_RVT U16 ( .A(a[14]), .B(b[14]), .CI(n15), .CO(n16), .S(s[14]) );
  FADDX1_RVT U17 ( .A(n16), .B(b[15]), .CI(a[15]), .S(s[15]) );
endmodule


module adder_WIDTH8_0 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH8_1 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH8_2 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH8_3 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH8_4 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module adder_WIDTH8_5 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   n2, n3, n4, n5, n6, n7, n8;

  AND2X1_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n4) );
  FADDX1_RVT U2 ( .A(a[3]), .B(b[3]), .CI(n2), .CO(n5), .S(s[3]) );
  FADDX1_RVT U3 ( .A(a[2]), .B(b[2]), .CI(n3), .CO(n2), .S(s[2]) );
  FADDX1_RVT U4 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n3), .S(s[1]) );
  HADDX1_RVT U5 ( .A0(b[0]), .B0(a[0]), .SO(s[0]) );
  FADDX1_RVT U6 ( .A(a[4]), .B(b[4]), .CI(n5), .CO(n6), .S(s[4]) );
  FADDX1_RVT U7 ( .A(a[5]), .B(b[5]), .CI(n6), .CO(n7), .S(s[5]) );
  FADDX1_RVT U8 ( .A(a[6]), .B(b[6]), .CI(n7), .CO(n8), .S(s[6]) );
  FADDX1_RVT U9 ( .A(n8), .B(b[7]), .CI(a[7]), .S(s[7]) );
endmodule


module vbw_adder_bsln ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   controlled_ci, controlled_co, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
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
         n285, n286, n287, n288, n289, n290;
  wire   [63:8] s64;
  wire   [63:32] s32;
  wire   [63:16] s16;
  wire   [63:8] s8;

  adder_WIDTH64 add64 ( .a(a), .b(b), .ci(controlled_ci), .s({s64, s[7:0]}), 
        .co(controlled_co) );
  adder_WIDTH32 add32_1 ( .a(a[63:32]), .b(b[63:32]), .ci(1'b0), .s(s32) );
  adder_WIDTH16_2 add16_3 ( .a(a[63:48]), .b(b[63:48]), .ci(1'b0), .s(
        s16[63:48]) );
  adder_WIDTH16_1 add16_2 ( .a(a[47:32]), .b(b[47:32]), .ci(1'b0), .s(
        s16[47:32]) );
  adder_WIDTH16_0 add16_1 ( .a(a[31:16]), .b(b[31:16]), .ci(1'b0), .s(
        s16[31:16]) );
  adder_WIDTH8_6 add8_7 ( .a(a[63:56]), .b(b[63:56]), .ci(1'b0), .s(s8[63:56])
         );
  adder_WIDTH8_5 add8_6 ( .a(a[55:48]), .b(b[55:48]), .ci(1'b0), .s(s8[55:48])
         );
  adder_WIDTH8_4 add8_5 ( .a(a[47:40]), .b(b[47:40]), .ci(1'b0), .s(s8[47:40])
         );
  adder_WIDTH8_3 add8_4 ( .a(a[39:32]), .b(b[39:32]), .ci(1'b0), .s(s8[39:32])
         );
  adder_WIDTH8_2 add8_3 ( .a(a[31:24]), .b(b[31:24]), .ci(1'b0), .s(s8[31:24])
         );
  adder_WIDTH8_1 add8_2 ( .a(a[23:16]), .b(b[23:16]), .ci(1'b0), .s(s8[23:16])
         );
  adder_WIDTH8_0 add8_1 ( .a(a[15:8]), .b(b[15:8]), .ci(1'b0), .s(s8[15:8]) );
  AND2X1_RVT U114 ( .A1(control[0]), .A2(control[1]), .Y(n235) );
  NBUFFX2_RVT U115 ( .A(n235), .Y(n285) );
  AND2X1_RVT U116 ( .A1(n285), .A2(s8[62]), .Y(n107) );
  INVX0_RVT U117 ( .A(control[0]), .Y(n103) );
  AND2X1_RVT U118 ( .A1(control[1]), .A2(n103), .Y(n229) );
  NBUFFX2_RVT U119 ( .A(n229), .Y(n248) );
  AND2X1_RVT U120 ( .A1(n248), .A2(s16[62]), .Y(n106) );
  INVX2_RVT U121 ( .A(control[1]), .Y(n287) );
  AND2X1_RVT U122 ( .A1(control[0]), .A2(n287), .Y(n230) );
  NBUFFX2_RVT U123 ( .A(n230), .Y(n224) );
  AND2X1_RVT U124 ( .A1(n224), .A2(s32[62]), .Y(n105) );
  AND2X1_RVT U125 ( .A1(n103), .A2(n287), .Y(n236) );
  NBUFFX2_RVT U126 ( .A(n236), .Y(n237) );
  AND2X1_RVT U127 ( .A1(n237), .A2(s64[62]), .Y(n104) );
  OR4X1_RVT U128 ( .A1(n107), .A2(n106), .A3(n105), .A4(n104), .Y(s[62]) );
  AND2X1_RVT U129 ( .A1(n285), .A2(s8[61]), .Y(n111) );
  NBUFFX2_RVT U130 ( .A(n229), .Y(n286) );
  AND2X1_RVT U131 ( .A1(n286), .A2(s16[61]), .Y(n110) );
  AND2X1_RVT U132 ( .A1(n230), .A2(s32[61]), .Y(n109) );
  AND2X1_RVT U133 ( .A1(n236), .A2(s64[61]), .Y(n108) );
  OR4X1_RVT U134 ( .A1(n111), .A2(n110), .A3(n109), .A4(n108), .Y(s[61]) );
  AND2X1_RVT U135 ( .A1(n285), .A2(s8[60]), .Y(n115) );
  AND2X1_RVT U136 ( .A1(n229), .A2(s16[60]), .Y(n114) );
  AND2X1_RVT U137 ( .A1(n224), .A2(s32[60]), .Y(n113) );
  AND2X1_RVT U138 ( .A1(n236), .A2(s64[60]), .Y(n112) );
  OR4X1_RVT U139 ( .A1(n115), .A2(n114), .A3(n113), .A4(n112), .Y(s[60]) );
  AND2X1_RVT U140 ( .A1(n285), .A2(s8[59]), .Y(n119) );
  AND2X1_RVT U141 ( .A1(n229), .A2(s16[59]), .Y(n118) );
  AND2X1_RVT U142 ( .A1(n230), .A2(s32[59]), .Y(n117) );
  AND2X1_RVT U143 ( .A1(n236), .A2(s64[59]), .Y(n116) );
  OR4X1_RVT U144 ( .A1(n119), .A2(n118), .A3(n117), .A4(n116), .Y(s[59]) );
  AND2X1_RVT U145 ( .A1(n285), .A2(s8[58]), .Y(n123) );
  AND2X1_RVT U146 ( .A1(n229), .A2(s16[58]), .Y(n122) );
  AND2X1_RVT U147 ( .A1(n224), .A2(s32[58]), .Y(n121) );
  AND2X1_RVT U148 ( .A1(n236), .A2(s64[58]), .Y(n120) );
  OR4X1_RVT U149 ( .A1(n123), .A2(n122), .A3(n121), .A4(n120), .Y(s[58]) );
  AND2X1_RVT U150 ( .A1(n285), .A2(s8[57]), .Y(n127) );
  AND2X1_RVT U151 ( .A1(n229), .A2(s16[57]), .Y(n126) );
  AND2X1_RVT U152 ( .A1(n230), .A2(s32[57]), .Y(n125) );
  AND2X1_RVT U153 ( .A1(n236), .A2(s64[57]), .Y(n124) );
  OR4X1_RVT U154 ( .A1(n127), .A2(n126), .A3(n125), .A4(n124), .Y(s[57]) );
  AND2X1_RVT U155 ( .A1(n285), .A2(s8[56]), .Y(n131) );
  AND2X1_RVT U156 ( .A1(n229), .A2(s16[56]), .Y(n130) );
  AND2X1_RVT U157 ( .A1(n230), .A2(s32[56]), .Y(n129) );
  AND2X1_RVT U158 ( .A1(n236), .A2(s64[56]), .Y(n128) );
  OR4X1_RVT U159 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .Y(s[56]) );
  AND2X1_RVT U160 ( .A1(n235), .A2(s8[55]), .Y(n135) );
  AND2X1_RVT U161 ( .A1(n229), .A2(s16[55]), .Y(n134) );
  AND2X1_RVT U162 ( .A1(n230), .A2(s32[55]), .Y(n133) );
  AND2X1_RVT U163 ( .A1(n236), .A2(s64[55]), .Y(n132) );
  OR4X1_RVT U164 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(s[55]) );
  NBUFFX2_RVT U165 ( .A(n235), .Y(n241) );
  AND2X1_RVT U166 ( .A1(n241), .A2(s8[54]), .Y(n139) );
  AND2X1_RVT U167 ( .A1(n229), .A2(s16[54]), .Y(n138) );
  AND2X1_RVT U168 ( .A1(n230), .A2(s32[54]), .Y(n137) );
  AND2X1_RVT U169 ( .A1(n236), .A2(s64[54]), .Y(n136) );
  OR4X1_RVT U170 ( .A1(n139), .A2(n138), .A3(n137), .A4(n136), .Y(s[54]) );
  AND2X1_RVT U171 ( .A1(n241), .A2(s8[53]), .Y(n143) );
  AND2X1_RVT U172 ( .A1(n229), .A2(s16[53]), .Y(n142) );
  AND2X1_RVT U173 ( .A1(n230), .A2(s32[53]), .Y(n141) );
  AND2X1_RVT U174 ( .A1(n237), .A2(s64[53]), .Y(n140) );
  OR4X1_RVT U175 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .Y(s[53]) );
  AND2X1_RVT U176 ( .A1(n241), .A2(s8[52]), .Y(n147) );
  AND2X1_RVT U177 ( .A1(n229), .A2(s16[52]), .Y(n146) );
  AND2X1_RVT U178 ( .A1(n230), .A2(s32[52]), .Y(n145) );
  AND2X1_RVT U179 ( .A1(n237), .A2(s64[52]), .Y(n144) );
  OR4X1_RVT U180 ( .A1(n147), .A2(n146), .A3(n145), .A4(n144), .Y(s[52]) );
  AND2X1_RVT U181 ( .A1(n241), .A2(s8[51]), .Y(n151) );
  AND2X1_RVT U182 ( .A1(n286), .A2(s16[51]), .Y(n150) );
  AND2X1_RVT U183 ( .A1(n224), .A2(s32[51]), .Y(n149) );
  AND2X1_RVT U184 ( .A1(n237), .A2(s64[51]), .Y(n148) );
  OR4X1_RVT U185 ( .A1(n151), .A2(n150), .A3(n149), .A4(n148), .Y(s[51]) );
  AND2X1_RVT U186 ( .A1(n241), .A2(s8[50]), .Y(n155) );
  AND2X1_RVT U187 ( .A1(n248), .A2(s16[50]), .Y(n154) );
  AND2X1_RVT U188 ( .A1(n224), .A2(s32[50]), .Y(n153) );
  AND2X1_RVT U189 ( .A1(n237), .A2(s64[50]), .Y(n152) );
  OR4X1_RVT U190 ( .A1(n155), .A2(n154), .A3(n153), .A4(n152), .Y(s[50]) );
  AND2X1_RVT U191 ( .A1(n241), .A2(s8[49]), .Y(n159) );
  AND2X1_RVT U192 ( .A1(n286), .A2(s16[49]), .Y(n158) );
  AND2X1_RVT U193 ( .A1(n224), .A2(s32[49]), .Y(n157) );
  AND2X1_RVT U194 ( .A1(n237), .A2(s64[49]), .Y(n156) );
  OR4X1_RVT U195 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .Y(s[49]) );
  AND2X1_RVT U196 ( .A1(n241), .A2(s8[48]), .Y(n163) );
  AND2X1_RVT U197 ( .A1(n248), .A2(s16[48]), .Y(n162) );
  AND2X1_RVT U198 ( .A1(n230), .A2(s32[48]), .Y(n161) );
  AND2X1_RVT U199 ( .A1(n236), .A2(s64[48]), .Y(n160) );
  OR4X1_RVT U200 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .Y(s[48]) );
  AND2X1_RVT U201 ( .A1(n241), .A2(s8[47]), .Y(n167) );
  AND2X1_RVT U202 ( .A1(n286), .A2(s16[47]), .Y(n166) );
  AND2X1_RVT U203 ( .A1(n224), .A2(s32[47]), .Y(n165) );
  AND2X1_RVT U204 ( .A1(n237), .A2(s64[47]), .Y(n164) );
  OR4X1_RVT U205 ( .A1(n167), .A2(n166), .A3(n165), .A4(n164), .Y(s[47]) );
  AND2X1_RVT U206 ( .A1(n241), .A2(s8[46]), .Y(n171) );
  AND2X1_RVT U207 ( .A1(n229), .A2(s16[46]), .Y(n170) );
  AND2X1_RVT U208 ( .A1(n230), .A2(s32[46]), .Y(n169) );
  AND2X1_RVT U209 ( .A1(n236), .A2(s64[46]), .Y(n168) );
  OR4X1_RVT U210 ( .A1(n171), .A2(n170), .A3(n169), .A4(n168), .Y(s[46]) );
  AND2X1_RVT U211 ( .A1(n241), .A2(s8[45]), .Y(n175) );
  AND2X1_RVT U212 ( .A1(n248), .A2(s16[45]), .Y(n174) );
  AND2X1_RVT U213 ( .A1(n224), .A2(s32[45]), .Y(n173) );
  AND2X1_RVT U214 ( .A1(n237), .A2(s64[45]), .Y(n172) );
  OR4X1_RVT U215 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .Y(s[45]) );
  AND2X1_RVT U216 ( .A1(n241), .A2(s8[44]), .Y(n179) );
  AND2X1_RVT U217 ( .A1(n286), .A2(s16[44]), .Y(n178) );
  AND2X1_RVT U218 ( .A1(n230), .A2(s32[44]), .Y(n177) );
  AND2X1_RVT U219 ( .A1(n236), .A2(s64[44]), .Y(n176) );
  OR4X1_RVT U220 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .Y(s[44]) );
  AND2X1_RVT U221 ( .A1(n241), .A2(s8[43]), .Y(n183) );
  AND2X1_RVT U222 ( .A1(n229), .A2(s16[43]), .Y(n182) );
  AND2X1_RVT U223 ( .A1(n224), .A2(s32[43]), .Y(n181) );
  AND2X1_RVT U224 ( .A1(n237), .A2(s64[43]), .Y(n180) );
  OR4X1_RVT U225 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .Y(s[43]) );
  AND2X1_RVT U226 ( .A1(n241), .A2(s8[42]), .Y(n187) );
  AND2X1_RVT U227 ( .A1(n248), .A2(s16[42]), .Y(n186) );
  AND2X1_RVT U228 ( .A1(n230), .A2(s32[42]), .Y(n185) );
  AND2X1_RVT U229 ( .A1(n236), .A2(s64[42]), .Y(n184) );
  OR4X1_RVT U230 ( .A1(n187), .A2(n186), .A3(n185), .A4(n184), .Y(s[42]) );
  AND2X1_RVT U231 ( .A1(n241), .A2(s8[41]), .Y(n191) );
  AND2X1_RVT U232 ( .A1(n286), .A2(s16[41]), .Y(n190) );
  AND2X1_RVT U233 ( .A1(n224), .A2(s32[41]), .Y(n189) );
  AND2X1_RVT U234 ( .A1(n237), .A2(s64[41]), .Y(n188) );
  OR4X1_RVT U235 ( .A1(n191), .A2(n190), .A3(n189), .A4(n188), .Y(s[41]) );
  AND2X1_RVT U236 ( .A1(n241), .A2(s8[40]), .Y(n195) );
  AND2X1_RVT U237 ( .A1(n229), .A2(s16[40]), .Y(n194) );
  AND2X1_RVT U238 ( .A1(n230), .A2(s32[40]), .Y(n193) );
  AND2X1_RVT U239 ( .A1(n237), .A2(s64[40]), .Y(n192) );
  OR4X1_RVT U240 ( .A1(n195), .A2(n194), .A3(n193), .A4(n192), .Y(s[40]) );
  AND2X1_RVT U241 ( .A1(n241), .A2(s8[39]), .Y(n199) );
  AND2X1_RVT U242 ( .A1(n248), .A2(s16[39]), .Y(n198) );
  AND2X1_RVT U243 ( .A1(n224), .A2(s32[39]), .Y(n197) );
  AND2X1_RVT U244 ( .A1(n237), .A2(s64[39]), .Y(n196) );
  OR4X1_RVT U245 ( .A1(n199), .A2(n198), .A3(n197), .A4(n196), .Y(s[39]) );
  AND2X1_RVT U246 ( .A1(n241), .A2(s8[38]), .Y(n203) );
  AND2X1_RVT U247 ( .A1(n248), .A2(s16[38]), .Y(n202) );
  AND2X1_RVT U248 ( .A1(n224), .A2(s32[38]), .Y(n201) );
  AND2X1_RVT U249 ( .A1(n237), .A2(s64[38]), .Y(n200) );
  OR4X1_RVT U250 ( .A1(n203), .A2(n202), .A3(n201), .A4(n200), .Y(s[38]) );
  AND2X1_RVT U251 ( .A1(n241), .A2(s8[37]), .Y(n207) );
  AND2X1_RVT U252 ( .A1(n248), .A2(s16[37]), .Y(n206) );
  AND2X1_RVT U253 ( .A1(n224), .A2(s32[37]), .Y(n205) );
  AND2X1_RVT U254 ( .A1(n237), .A2(s64[37]), .Y(n204) );
  OR4X1_RVT U255 ( .A1(n207), .A2(n206), .A3(n205), .A4(n204), .Y(s[37]) );
  AND2X1_RVT U256 ( .A1(n241), .A2(s8[36]), .Y(n211) );
  AND2X1_RVT U257 ( .A1(n248), .A2(s16[36]), .Y(n210) );
  AND2X1_RVT U258 ( .A1(n224), .A2(s32[36]), .Y(n209) );
  AND2X1_RVT U259 ( .A1(n237), .A2(s64[36]), .Y(n208) );
  OR4X1_RVT U260 ( .A1(n211), .A2(n210), .A3(n209), .A4(n208), .Y(s[36]) );
  AND2X1_RVT U261 ( .A1(n241), .A2(s8[35]), .Y(n215) );
  AND2X1_RVT U262 ( .A1(n248), .A2(s16[35]), .Y(n214) );
  AND2X1_RVT U263 ( .A1(n224), .A2(s32[35]), .Y(n213) );
  AND2X1_RVT U264 ( .A1(n237), .A2(s64[35]), .Y(n212) );
  OR4X1_RVT U265 ( .A1(n215), .A2(n214), .A3(n213), .A4(n212), .Y(s[35]) );
  AND2X1_RVT U266 ( .A1(n241), .A2(s8[34]), .Y(n219) );
  AND2X1_RVT U267 ( .A1(n248), .A2(s16[34]), .Y(n218) );
  AND2X1_RVT U268 ( .A1(n224), .A2(s32[34]), .Y(n217) );
  AND2X1_RVT U269 ( .A1(n237), .A2(s64[34]), .Y(n216) );
  OR4X1_RVT U270 ( .A1(n219), .A2(n218), .A3(n217), .A4(n216), .Y(s[34]) );
  AND2X1_RVT U271 ( .A1(n241), .A2(s8[33]), .Y(n223) );
  AND2X1_RVT U272 ( .A1(n248), .A2(s16[33]), .Y(n222) );
  AND2X1_RVT U273 ( .A1(n224), .A2(s32[33]), .Y(n221) );
  AND2X1_RVT U274 ( .A1(n237), .A2(s64[33]), .Y(n220) );
  OR4X1_RVT U275 ( .A1(n223), .A2(n222), .A3(n221), .A4(n220), .Y(s[33]) );
  AND2X1_RVT U276 ( .A1(n241), .A2(s8[32]), .Y(n228) );
  AND2X1_RVT U277 ( .A1(n248), .A2(s16[32]), .Y(n227) );
  AND2X1_RVT U278 ( .A1(n224), .A2(s32[32]), .Y(n226) );
  AND2X1_RVT U279 ( .A1(n237), .A2(s64[32]), .Y(n225) );
  OR4X1_RVT U280 ( .A1(n228), .A2(n227), .A3(n226), .A4(n225), .Y(s[32]) );
  AND2X1_RVT U281 ( .A1(n241), .A2(s8[63]), .Y(n234) );
  AND2X1_RVT U282 ( .A1(n229), .A2(s16[63]), .Y(n233) );
  AND2X1_RVT U283 ( .A1(n230), .A2(s32[63]), .Y(n232) );
  AND2X1_RVT U284 ( .A1(n236), .A2(s64[63]), .Y(n231) );
  OR4X1_RVT U285 ( .A1(n234), .A2(n233), .A3(n232), .A4(n231), .Y(s[63]) );
  MUX21X1_RVT U286 ( .A1(s64[8]), .A2(s8[8]), .S0(n285), .Y(s[8]) );
  MUX21X1_RVT U287 ( .A1(s64[9]), .A2(s8[9]), .S0(n285), .Y(s[9]) );
  MUX21X1_RVT U288 ( .A1(s64[10]), .A2(s8[10]), .S0(n235), .Y(s[10]) );
  MUX21X1_RVT U289 ( .A1(s64[11]), .A2(s8[11]), .S0(n235), .Y(s[11]) );
  MUX21X1_RVT U290 ( .A1(s64[12]), .A2(s8[12]), .S0(n235), .Y(s[12]) );
  MUX21X1_RVT U291 ( .A1(s64[13]), .A2(s8[13]), .S0(n235), .Y(s[13]) );
  MUX21X1_RVT U292 ( .A1(s64[14]), .A2(s8[14]), .S0(n235), .Y(s[14]) );
  MUX21X1_RVT U293 ( .A1(s64[15]), .A2(s8[15]), .S0(n235), .Y(s[15]) );
  AND2X1_RVT U294 ( .A1(n236), .A2(controlled_co), .Y(co) );
  AND2X1_RVT U295 ( .A1(n237), .A2(ci), .Y(controlled_ci) );
  AND2X1_RVT U297 ( .A1(n241), .A2(s8[31]), .Y(n240) );
  AND2X1_RVT U298 ( .A1(n248), .A2(s16[31]), .Y(n239) );
  AND2X1_RVT U299 ( .A1(s64[31]), .A2(n287), .Y(n238) );
  OR3X1_RVT U300 ( .A1(n240), .A2(n239), .A3(n238), .Y(s[31]) );
  AND2X1_RVT U301 ( .A1(n241), .A2(s8[30]), .Y(n244) );
  AND2X1_RVT U302 ( .A1(n248), .A2(s16[30]), .Y(n243) );
  AND2X1_RVT U303 ( .A1(s64[30]), .A2(n287), .Y(n242) );
  OR3X1_RVT U304 ( .A1(n244), .A2(n243), .A3(n242), .Y(s[30]) );
  AND2X1_RVT U305 ( .A1(n285), .A2(s8[29]), .Y(n247) );
  AND2X1_RVT U306 ( .A1(n248), .A2(s16[29]), .Y(n246) );
  AND2X1_RVT U307 ( .A1(s64[29]), .A2(n287), .Y(n245) );
  OR3X1_RVT U308 ( .A1(n247), .A2(n246), .A3(n245), .Y(s[29]) );
  AND2X1_RVT U309 ( .A1(n285), .A2(s8[28]), .Y(n251) );
  AND2X1_RVT U310 ( .A1(n248), .A2(s16[28]), .Y(n250) );
  AND2X1_RVT U311 ( .A1(s64[28]), .A2(n287), .Y(n249) );
  OR3X1_RVT U312 ( .A1(n251), .A2(n250), .A3(n249), .Y(s[28]) );
  AND2X1_RVT U313 ( .A1(n285), .A2(s8[27]), .Y(n254) );
  AND2X1_RVT U314 ( .A1(n286), .A2(s16[27]), .Y(n253) );
  AND2X1_RVT U315 ( .A1(s64[27]), .A2(n287), .Y(n252) );
  OR3X1_RVT U316 ( .A1(n254), .A2(n253), .A3(n252), .Y(s[27]) );
  AND2X1_RVT U317 ( .A1(n285), .A2(s8[26]), .Y(n257) );
  AND2X1_RVT U318 ( .A1(n286), .A2(s16[26]), .Y(n256) );
  AND2X1_RVT U319 ( .A1(s64[26]), .A2(n287), .Y(n255) );
  OR3X1_RVT U320 ( .A1(n257), .A2(n256), .A3(n255), .Y(s[26]) );
  AND2X1_RVT U321 ( .A1(n285), .A2(s8[25]), .Y(n260) );
  AND2X1_RVT U322 ( .A1(n286), .A2(s16[25]), .Y(n259) );
  AND2X1_RVT U323 ( .A1(s64[25]), .A2(n287), .Y(n258) );
  OR3X1_RVT U324 ( .A1(n260), .A2(n259), .A3(n258), .Y(s[25]) );
  AND2X1_RVT U325 ( .A1(n285), .A2(s8[24]), .Y(n263) );
  AND2X1_RVT U326 ( .A1(n286), .A2(s16[24]), .Y(n262) );
  AND2X1_RVT U327 ( .A1(s64[24]), .A2(n287), .Y(n261) );
  OR3X1_RVT U328 ( .A1(n263), .A2(n262), .A3(n261), .Y(s[24]) );
  AND2X1_RVT U329 ( .A1(n285), .A2(s8[23]), .Y(n266) );
  AND2X1_RVT U330 ( .A1(n286), .A2(s16[23]), .Y(n265) );
  AND2X1_RVT U331 ( .A1(s64[23]), .A2(n287), .Y(n264) );
  OR3X1_RVT U332 ( .A1(n266), .A2(n265), .A3(n264), .Y(s[23]) );
  AND2X1_RVT U333 ( .A1(n285), .A2(s8[22]), .Y(n269) );
  AND2X1_RVT U334 ( .A1(n286), .A2(s16[22]), .Y(n268) );
  AND2X1_RVT U335 ( .A1(s64[22]), .A2(n287), .Y(n267) );
  OR3X1_RVT U336 ( .A1(n269), .A2(n268), .A3(n267), .Y(s[22]) );
  AND2X1_RVT U337 ( .A1(n285), .A2(s8[21]), .Y(n272) );
  AND2X1_RVT U338 ( .A1(n286), .A2(s16[21]), .Y(n271) );
  AND2X1_RVT U339 ( .A1(s64[21]), .A2(n287), .Y(n270) );
  OR3X1_RVT U340 ( .A1(n272), .A2(n271), .A3(n270), .Y(s[21]) );
  AND2X1_RVT U341 ( .A1(n285), .A2(s8[20]), .Y(n275) );
  AND2X1_RVT U342 ( .A1(n286), .A2(s16[20]), .Y(n274) );
  AND2X1_RVT U343 ( .A1(s64[20]), .A2(n287), .Y(n273) );
  OR3X1_RVT U344 ( .A1(n275), .A2(n274), .A3(n273), .Y(s[20]) );
  AND2X1_RVT U345 ( .A1(n285), .A2(s8[19]), .Y(n278) );
  AND2X1_RVT U346 ( .A1(n286), .A2(s16[19]), .Y(n277) );
  AND2X1_RVT U347 ( .A1(s64[19]), .A2(n287), .Y(n276) );
  OR3X1_RVT U348 ( .A1(n278), .A2(n277), .A3(n276), .Y(s[19]) );
  AND2X1_RVT U349 ( .A1(n285), .A2(s8[18]), .Y(n281) );
  AND2X1_RVT U350 ( .A1(n286), .A2(s16[18]), .Y(n280) );
  AND2X1_RVT U351 ( .A1(s64[18]), .A2(n287), .Y(n279) );
  OR3X1_RVT U352 ( .A1(n281), .A2(n280), .A3(n279), .Y(s[18]) );
  AND2X1_RVT U353 ( .A1(n285), .A2(s8[17]), .Y(n284) );
  AND2X1_RVT U354 ( .A1(n286), .A2(s16[17]), .Y(n283) );
  AND2X1_RVT U355 ( .A1(s64[17]), .A2(n287), .Y(n282) );
  OR3X1_RVT U356 ( .A1(n284), .A2(n283), .A3(n282), .Y(s[17]) );
  AND2X1_RVT U357 ( .A1(n285), .A2(s8[16]), .Y(n290) );
  AND2X1_RVT U358 ( .A1(n286), .A2(s16[16]), .Y(n289) );
  AND2X1_RVT U359 ( .A1(s64[16]), .A2(n287), .Y(n288) );
  OR3X1_RVT U360 ( .A1(n290), .A2(n289), .A3(n288), .Y(s[16]) );
endmodule

