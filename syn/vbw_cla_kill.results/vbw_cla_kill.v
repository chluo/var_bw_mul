/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Wed Apr 26 19:43:38 2017
/////////////////////////////////////////////////////////////


module MFA_0 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module LA4_4 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_20 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  NAND2X0_RVT U1 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U5 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U8 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND4X1_RVT U9 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_3 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  NAND2X0_RVT U1 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U5 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U8 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND4X1_RVT U9 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_2 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_1 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_0 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_19 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  NAND2X0_RVT U1 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U5 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U8 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND4X1_RVT U9 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_18 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_17 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_16 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_15 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_14 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  NAND2X0_RVT U1 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U5 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U8 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND4X1_RVT U9 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_13 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  NAND2X0_RVT U1 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U5 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U8 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND4X1_RVT U9 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_12 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_11 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_10 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_9 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_8 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_7 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_6 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module LA4_5 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  NAND2X0_RVT U2 ( .A1(p[1]), .A2(g[0]), .Y(n1) );
  INVX0_RVT U3 ( .A(g[1]), .Y(n9) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n9), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(p[2]), .Y(n3) );
  INVX0_RVT U6 ( .A(g[2]), .Y(n11) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n11), .Y(n4) );
  AND2X1_RVT U8 ( .A1(n4), .A2(p[3]), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[3]), .A2(n5), .Y(G) );
  INVX0_RVT U10 ( .A(g[0]), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(ci), .A2(p[0]), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(n7), .A2(n6), .Y(co[1]) );
  NAND2X0_RVT U13 ( .A1(p[1]), .A2(co[1]), .Y(n8) );
  NAND2X0_RVT U14 ( .A1(n9), .A2(n8), .Y(co[2]) );
  NAND2X0_RVT U15 ( .A1(p[2]), .A2(co[2]), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n11), .A2(n10), .Y(co[3]) );
endmodule


module MFA_63 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_62 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_61 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_60 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_59 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_58 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_57 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_56 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_55 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_54 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_53 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_52 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_51 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_50 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_49 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_48 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_47 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_46 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_45 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_44 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_43 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_42 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_41 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_40 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_39 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_38 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_37 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_36 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_35 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_34 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_33 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_32 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_31 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_30 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_29 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_28 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_27 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_26 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_25 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_24 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_23 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_22 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_21 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_20 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_19 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_18 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_17 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_16 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_15 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_14 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_13 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_12 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_11 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_10 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_9 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_8 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_7 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_6 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_5 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_4 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_3 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_2 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module MFA_1 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(b), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(a), .A2(n1), .Y(n2) );
  OR2X1_RVT U3 ( .A1(n1), .A2(a), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(p) );
  MUX21X1_RVT U5 ( .A1(n2), .A2(p), .S0(ci), .Y(n5) );
  OR2X1_RVT U6 ( .A1(ci), .A2(n3), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n4), .Y(s) );
  AND2X1_RVT U8 ( .A1(a), .A2(b), .Y(g) );
endmodule


module vbw_cla_kill ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   ci_controlled, g3, p3, n6, n7, n8, n9, n10;
  wire   [63:0] internal_ci;
  wire   [63:7] p;
  wire   [63:7] g;
  wire   [63:0] p_controlled;
  wire   [63:0] g_controlled;
  wire   [15:0] ci1;
  wire   [15:0] g1;
  wire   [15:0] p1;
  wire   [3:0] ci2;
  wire   [3:0] g2;
  wire   [3:0] p2;

  MFA_0 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(internal_ci[0]), .p(
        p_controlled[0]), .g(g_controlled[0]), .s(s[0]) );
  MFA_1 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(
        p_controlled[1]), .g(g_controlled[1]), .s(s[1]) );
  MFA_2 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(
        p_controlled[2]), .g(g_controlled[2]), .s(s[2]) );
  MFA_3 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(
        p_controlled[3]), .g(g_controlled[3]), .s(s[3]) );
  MFA_4 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(
        p_controlled[4]), .g(g_controlled[4]), .s(s[4]) );
  MFA_5 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(
        p_controlled[5]), .g(g_controlled[5]), .s(s[5]) );
  MFA_6 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(
        p_controlled[6]), .g(g_controlled[6]), .s(s[6]) );
  MFA_7 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_8 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(
        p_controlled[8]), .g(g_controlled[8]), .s(s[8]) );
  MFA_9 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(
        p_controlled[9]), .g(g_controlled[9]), .s(s[9]) );
  MFA_10 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(
        p_controlled[10]), .g(g_controlled[10]), .s(s[10]) );
  MFA_11 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(
        p_controlled[11]), .g(g_controlled[11]), .s(s[11]) );
  MFA_12 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(
        p_controlled[12]), .g(g_controlled[12]), .s(s[12]) );
  MFA_13 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(
        p_controlled[13]), .g(g_controlled[13]), .s(s[13]) );
  MFA_14 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(
        p_controlled[14]), .g(g_controlled[14]), .s(s[14]) );
  MFA_15 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .p(p[15]), 
        .g(g[15]), .s(s[15]) );
  MFA_16 mfa_inst_16_ ( .a(a[16]), .b(b[16]), .ci(internal_ci[16]), .p(
        p_controlled[16]), .g(g_controlled[16]), .s(s[16]) );
  MFA_17 mfa_inst_17_ ( .a(a[17]), .b(b[17]), .ci(internal_ci[17]), .p(
        p_controlled[17]), .g(g_controlled[17]), .s(s[17]) );
  MFA_18 mfa_inst_18_ ( .a(a[18]), .b(b[18]), .ci(internal_ci[18]), .p(
        p_controlled[18]), .g(g_controlled[18]), .s(s[18]) );
  MFA_19 mfa_inst_19_ ( .a(a[19]), .b(b[19]), .ci(internal_ci[19]), .p(
        p_controlled[19]), .g(g_controlled[19]), .s(s[19]) );
  MFA_20 mfa_inst_20_ ( .a(a[20]), .b(b[20]), .ci(internal_ci[20]), .p(
        p_controlled[20]), .g(g_controlled[20]), .s(s[20]) );
  MFA_21 mfa_inst_21_ ( .a(a[21]), .b(b[21]), .ci(internal_ci[21]), .p(
        p_controlled[21]), .g(g_controlled[21]), .s(s[21]) );
  MFA_22 mfa_inst_22_ ( .a(a[22]), .b(b[22]), .ci(internal_ci[22]), .p(
        p_controlled[22]), .g(g_controlled[22]), .s(s[22]) );
  MFA_23 mfa_inst_23_ ( .a(a[23]), .b(b[23]), .ci(internal_ci[23]), .p(p[23]), 
        .g(g[23]), .s(s[23]) );
  MFA_24 mfa_inst_24_ ( .a(a[24]), .b(b[24]), .ci(internal_ci[24]), .p(
        p_controlled[24]), .g(g_controlled[24]), .s(s[24]) );
  MFA_25 mfa_inst_25_ ( .a(a[25]), .b(b[25]), .ci(internal_ci[25]), .p(
        p_controlled[25]), .g(g_controlled[25]), .s(s[25]) );
  MFA_26 mfa_inst_26_ ( .a(a[26]), .b(b[26]), .ci(internal_ci[26]), .p(
        p_controlled[26]), .g(g_controlled[26]), .s(s[26]) );
  MFA_27 mfa_inst_27_ ( .a(a[27]), .b(b[27]), .ci(internal_ci[27]), .p(
        p_controlled[27]), .g(g_controlled[27]), .s(s[27]) );
  MFA_28 mfa_inst_28_ ( .a(a[28]), .b(b[28]), .ci(internal_ci[28]), .p(
        p_controlled[28]), .g(g_controlled[28]), .s(s[28]) );
  MFA_29 mfa_inst_29_ ( .a(a[29]), .b(b[29]), .ci(internal_ci[29]), .p(
        p_controlled[29]), .g(g_controlled[29]), .s(s[29]) );
  MFA_30 mfa_inst_30_ ( .a(a[30]), .b(b[30]), .ci(internal_ci[30]), .p(
        p_controlled[30]), .g(g_controlled[30]), .s(s[30]) );
  MFA_31 mfa_inst_31_ ( .a(a[31]), .b(b[31]), .ci(internal_ci[31]), .p(p[31]), 
        .g(g[31]), .s(s[31]) );
  MFA_32 mfa_inst_32_ ( .a(a[32]), .b(b[32]), .ci(internal_ci[32]), .p(
        p_controlled[32]), .g(g_controlled[32]), .s(s[32]) );
  MFA_33 mfa_inst_33_ ( .a(a[33]), .b(b[33]), .ci(internal_ci[33]), .p(
        p_controlled[33]), .g(g_controlled[33]), .s(s[33]) );
  MFA_34 mfa_inst_34_ ( .a(a[34]), .b(b[34]), .ci(internal_ci[34]), .p(
        p_controlled[34]), .g(g_controlled[34]), .s(s[34]) );
  MFA_35 mfa_inst_35_ ( .a(a[35]), .b(b[35]), .ci(internal_ci[35]), .p(
        p_controlled[35]), .g(g_controlled[35]), .s(s[35]) );
  MFA_36 mfa_inst_36_ ( .a(a[36]), .b(b[36]), .ci(internal_ci[36]), .p(
        p_controlled[36]), .g(g_controlled[36]), .s(s[36]) );
  MFA_37 mfa_inst_37_ ( .a(a[37]), .b(b[37]), .ci(internal_ci[37]), .p(
        p_controlled[37]), .g(g_controlled[37]), .s(s[37]) );
  MFA_38 mfa_inst_38_ ( .a(a[38]), .b(b[38]), .ci(internal_ci[38]), .p(
        p_controlled[38]), .g(g_controlled[38]), .s(s[38]) );
  MFA_39 mfa_inst_39_ ( .a(a[39]), .b(b[39]), .ci(internal_ci[39]), .p(p[39]), 
        .g(g[39]), .s(s[39]) );
  MFA_40 mfa_inst_40_ ( .a(a[40]), .b(b[40]), .ci(internal_ci[40]), .p(
        p_controlled[40]), .g(g_controlled[40]), .s(s[40]) );
  MFA_41 mfa_inst_41_ ( .a(a[41]), .b(b[41]), .ci(internal_ci[41]), .p(
        p_controlled[41]), .g(g_controlled[41]), .s(s[41]) );
  MFA_42 mfa_inst_42_ ( .a(a[42]), .b(b[42]), .ci(internal_ci[42]), .p(
        p_controlled[42]), .g(g_controlled[42]), .s(s[42]) );
  MFA_43 mfa_inst_43_ ( .a(a[43]), .b(b[43]), .ci(internal_ci[43]), .p(
        p_controlled[43]), .g(g_controlled[43]), .s(s[43]) );
  MFA_44 mfa_inst_44_ ( .a(a[44]), .b(b[44]), .ci(internal_ci[44]), .p(
        p_controlled[44]), .g(g_controlled[44]), .s(s[44]) );
  MFA_45 mfa_inst_45_ ( .a(a[45]), .b(b[45]), .ci(internal_ci[45]), .p(
        p_controlled[45]), .g(g_controlled[45]), .s(s[45]) );
  MFA_46 mfa_inst_46_ ( .a(a[46]), .b(b[46]), .ci(internal_ci[46]), .p(
        p_controlled[46]), .g(g_controlled[46]), .s(s[46]) );
  MFA_47 mfa_inst_47_ ( .a(a[47]), .b(b[47]), .ci(internal_ci[47]), .p(p[47]), 
        .g(g[47]), .s(s[47]) );
  MFA_48 mfa_inst_48_ ( .a(a[48]), .b(b[48]), .ci(internal_ci[48]), .p(
        p_controlled[48]), .g(g_controlled[48]), .s(s[48]) );
  MFA_49 mfa_inst_49_ ( .a(a[49]), .b(b[49]), .ci(internal_ci[49]), .p(
        p_controlled[49]), .g(g_controlled[49]), .s(s[49]) );
  MFA_50 mfa_inst_50_ ( .a(a[50]), .b(b[50]), .ci(internal_ci[50]), .p(
        p_controlled[50]), .g(g_controlled[50]), .s(s[50]) );
  MFA_51 mfa_inst_51_ ( .a(a[51]), .b(b[51]), .ci(internal_ci[51]), .p(
        p_controlled[51]), .g(g_controlled[51]), .s(s[51]) );
  MFA_52 mfa_inst_52_ ( .a(a[52]), .b(b[52]), .ci(internal_ci[52]), .p(
        p_controlled[52]), .g(g_controlled[52]), .s(s[52]) );
  MFA_53 mfa_inst_53_ ( .a(a[53]), .b(b[53]), .ci(internal_ci[53]), .p(
        p_controlled[53]), .g(g_controlled[53]), .s(s[53]) );
  MFA_54 mfa_inst_54_ ( .a(a[54]), .b(b[54]), .ci(internal_ci[54]), .p(
        p_controlled[54]), .g(g_controlled[54]), .s(s[54]) );
  MFA_55 mfa_inst_55_ ( .a(a[55]), .b(b[55]), .ci(internal_ci[55]), .p(p[55]), 
        .g(g[55]), .s(s[55]) );
  MFA_56 mfa_inst_56_ ( .a(a[56]), .b(b[56]), .ci(internal_ci[56]), .p(
        p_controlled[56]), .g(g_controlled[56]), .s(s[56]) );
  MFA_57 mfa_inst_57_ ( .a(a[57]), .b(b[57]), .ci(internal_ci[57]), .p(
        p_controlled[57]), .g(g_controlled[57]), .s(s[57]) );
  MFA_58 mfa_inst_58_ ( .a(a[58]), .b(b[58]), .ci(internal_ci[58]), .p(
        p_controlled[58]), .g(g_controlled[58]), .s(s[58]) );
  MFA_59 mfa_inst_59_ ( .a(a[59]), .b(b[59]), .ci(internal_ci[59]), .p(
        p_controlled[59]), .g(g_controlled[59]), .s(s[59]) );
  MFA_60 mfa_inst_60_ ( .a(a[60]), .b(b[60]), .ci(internal_ci[60]), .p(
        p_controlled[60]), .g(g_controlled[60]), .s(s[60]) );
  MFA_61 mfa_inst_61_ ( .a(a[61]), .b(b[61]), .ci(internal_ci[61]), .p(
        p_controlled[61]), .g(g_controlled[61]), .s(s[61]) );
  MFA_62 mfa_inst_62_ ( .a(a[62]), .b(b[62]), .ci(internal_ci[62]), .p(
        p_controlled[62]), .g(g_controlled[62]), .s(s[62]) );
  MFA_63 mfa_inst_63_ ( .a(a[63]), .b(b[63]), .ci(internal_ci[63]), .p(p[63]), 
        .g(g[63]), .s(s[63]) );
  LA4_4 layer1_0_ ( .g(g_controlled[3:0]), .p(p_controlled[3:0]), .ci(ci1[0]), 
        .G(g1[0]), .P(p1[0]), .co(internal_ci[3:0]) );
  LA4_5 layer1_1_ ( .g(g_controlled[7:4]), .p(p_controlled[7:4]), .ci(ci1[1]), 
        .G(g1[1]), .P(p1[1]), .co(internal_ci[7:4]) );
  LA4_6 layer1_2_ ( .g(g_controlled[11:8]), .p(p_controlled[11:8]), .ci(ci1[2]), .G(g1[2]), .P(p1[2]), .co(internal_ci[11:8]) );
  LA4_7 layer1_3_ ( .g(g_controlled[15:12]), .p(p_controlled[15:12]), .ci(
        ci1[3]), .G(g1[3]), .P(p1[3]), .co(internal_ci[15:12]) );
  LA4_8 layer1_4_ ( .g(g_controlled[19:16]), .p(p_controlled[19:16]), .ci(
        ci1[4]), .G(g1[4]), .P(p1[4]), .co(internal_ci[19:16]) );
  LA4_9 layer1_5_ ( .g(g_controlled[23:20]), .p(p_controlled[23:20]), .ci(
        ci1[5]), .G(g1[5]), .P(p1[5]), .co(internal_ci[23:20]) );
  LA4_10 layer1_6_ ( .g(g_controlled[27:24]), .p(p_controlled[27:24]), .ci(
        ci1[6]), .G(g1[6]), .P(p1[6]), .co(internal_ci[27:24]) );
  LA4_11 layer1_7_ ( .g(g_controlled[31:28]), .p(p_controlled[31:28]), .ci(
        ci1[7]), .G(g1[7]), .P(p1[7]), .co(internal_ci[31:28]) );
  LA4_12 layer1_8_ ( .g(g_controlled[35:32]), .p(p_controlled[35:32]), .ci(
        ci1[8]), .G(g1[8]), .P(p1[8]), .co(internal_ci[35:32]) );
  LA4_13 layer1_9_ ( .g(g_controlled[39:36]), .p(p_controlled[39:36]), .ci(
        ci1[9]), .G(g1[9]), .P(p1[9]), .co(internal_ci[39:36]) );
  LA4_14 layer1_10_ ( .g(g_controlled[43:40]), .p(p_controlled[43:40]), .ci(
        ci1[10]), .G(g1[10]), .P(p1[10]), .co(internal_ci[43:40]) );
  LA4_15 layer1_11_ ( .g(g_controlled[47:44]), .p(p_controlled[47:44]), .ci(
        ci1[11]), .G(g1[11]), .P(p1[11]), .co(internal_ci[47:44]) );
  LA4_16 layer1_12_ ( .g(g_controlled[51:48]), .p(p_controlled[51:48]), .ci(
        ci1[12]), .G(g1[12]), .P(p1[12]), .co(internal_ci[51:48]) );
  LA4_17 layer1_13_ ( .g(g_controlled[55:52]), .p(p_controlled[55:52]), .ci(
        ci1[13]), .G(g1[13]), .P(p1[13]), .co(internal_ci[55:52]) );
  LA4_18 layer1_14_ ( .g(g_controlled[59:56]), .p(p_controlled[59:56]), .ci(
        ci1[14]), .G(g1[14]), .P(p1[14]), .co(internal_ci[59:56]) );
  LA4_19 layer1_15_ ( .g(g_controlled[63:60]), .p(p_controlled[63:60]), .ci(
        ci1[15]), .G(g1[15]), .P(p1[15]), .co(internal_ci[63:60]) );
  LA4_0 layer2_0_ ( .g(g1[3:0]), .p(p1[3:0]), .ci(ci2[0]), .G(g2[0]), .P(p2[0]), .co(ci1[3:0]) );
  LA4_1 layer2_1_ ( .g(g1[7:4]), .p(p1[7:4]), .ci(ci2[1]), .G(g2[1]), .P(p2[1]), .co(ci1[7:4]) );
  LA4_2 layer2_2_ ( .g(g1[11:8]), .p(p1[11:8]), .ci(ci2[2]), .G(g2[2]), .P(
        p2[2]), .co(ci1[11:8]) );
  LA4_3 layer2_3_ ( .g(g1[15:12]), .p(p1[15:12]), .ci(ci2[3]), .G(g2[3]), .P(
        p2[3]), .co(ci1[15:12]) );
  LA4_20 layer3 ( .g(g2), .p(p2), .ci(ci_controlled), .G(g3), .P(p3), .co(ci2)
         );
  INVX0_RVT U26 ( .A(control[1]), .Y(n6) );
  AND2X1_RVT U27 ( .A1(p[63]), .A2(n6), .Y(p_controlled[63]) );
  NAND2X0_RVT U28 ( .A1(control[0]), .A2(control[1]), .Y(n7) );
  AND2X1_RVT U29 ( .A1(p[55]), .A2(n7), .Y(p_controlled[55]) );
  AND2X1_RVT U30 ( .A1(p[47]), .A2(n6), .Y(p_controlled[47]) );
  AND2X1_RVT U31 ( .A1(p[39]), .A2(n7), .Y(p_controlled[39]) );
  NOR2X0_RVT U32 ( .A1(control[0]), .A2(control[1]), .Y(n8) );
  AND2X1_RVT U33 ( .A1(n8), .A2(p[31]), .Y(p_controlled[31]) );
  AND2X1_RVT U34 ( .A1(p[23]), .A2(n7), .Y(p_controlled[23]) );
  AND2X1_RVT U35 ( .A1(p[15]), .A2(n6), .Y(p_controlled[15]) );
  AND2X1_RVT U36 ( .A1(p[7]), .A2(n7), .Y(p_controlled[7]) );
  AND2X1_RVT U37 ( .A1(g[63]), .A2(n6), .Y(g_controlled[63]) );
  AND2X1_RVT U38 ( .A1(g[55]), .A2(n7), .Y(g_controlled[55]) );
  AND2X1_RVT U39 ( .A1(g[47]), .A2(n6), .Y(g_controlled[47]) );
  AND2X1_RVT U40 ( .A1(g[39]), .A2(n7), .Y(g_controlled[39]) );
  AND2X1_RVT U41 ( .A1(n8), .A2(g[31]), .Y(g_controlled[31]) );
  AND2X1_RVT U42 ( .A1(g[23]), .A2(n7), .Y(g_controlled[23]) );
  AND2X1_RVT U43 ( .A1(g[15]), .A2(n6), .Y(g_controlled[15]) );
  AND2X1_RVT U44 ( .A1(g[7]), .A2(n7), .Y(g_controlled[7]) );
  AND2X1_RVT U45 ( .A1(n8), .A2(ci), .Y(ci_controlled) );
  NAND2X0_RVT U46 ( .A1(p3), .A2(ci_controlled), .Y(n10) );
  NAND2X0_RVT U47 ( .A1(g3), .A2(n8), .Y(n9) );
  NAND2X0_RVT U48 ( .A1(n10), .A2(n9), .Y(co) );
endmodule

