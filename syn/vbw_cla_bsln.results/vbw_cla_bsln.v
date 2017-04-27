/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Wed Apr 26 19:35:09 2017
/////////////////////////////////////////////////////////////


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


module LA4_20 ( g, p, ci, G, P, co );
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


module LA4_48 ( g, p, ci, G, P, co );
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


module LA4_35 ( g, p, ci, G, P, co );
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


module LA4_34 ( g, p, ci, G, P, co );
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


module LA4_33 ( g, p, ci, G, P, co );
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


module LA4_32 ( g, p, ci, G, P, co );
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


module LA4_31 ( g, p, ci, G, P, co );
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


module LA4_30 ( g, p, ci, G, P, co );
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


module LA4_29 ( g, p, ci, G, P, co );
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


module LA4_28 ( g, p, ci, G, P, co );
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


module LA4_27 ( g, p, ci, G, P, co );
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


module LA4_26 ( g, p, ci, G, P, co );
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


module LA4_25 ( g, p, ci, G, P, co );
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


module LA4_24 ( g, p, ci, G, P, co );
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


module LA4_23 ( g, p, ci, G, P, co );
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


module LA4_22 ( g, p, ci, G, P, co );
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


module LA4_21 ( g, p, ci, G, P, co );
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


module MFA_119 ( a, b, ci, p, g, s );
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


module MFA_118 ( a, b, ci, p, g, s );
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


module MFA_117 ( a, b, ci, p, g, s );
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


module MFA_116 ( a, b, ci, p, g, s );
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


module MFA_115 ( a, b, ci, p, g, s );
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


module MFA_114 ( a, b, ci, p, g, s );
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


module MFA_113 ( a, b, ci, p, g, s );
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


module MFA_112 ( a, b, ci, p, g, s );
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


module MFA_111 ( a, b, ci, p, g, s );
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


module MFA_110 ( a, b, ci, p, g, s );
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


module MFA_109 ( a, b, ci, p, g, s );
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


module MFA_108 ( a, b, ci, p, g, s );
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


module MFA_107 ( a, b, ci, p, g, s );
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


module MFA_106 ( a, b, ci, p, g, s );
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


module MFA_105 ( a, b, ci, p, g, s );
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


module MFA_104 ( a, b, ci, p, g, s );
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


module MFA_103 ( a, b, ci, p, g, s );
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


module MFA_102 ( a, b, ci, p, g, s );
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


module MFA_101 ( a, b, ci, p, g, s );
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


module MFA_100 ( a, b, ci, p, g, s );
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


module MFA_99 ( a, b, ci, p, g, s );
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


module MFA_98 ( a, b, ci, p, g, s );
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


module MFA_97 ( a, b, ci, p, g, s );
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


module MFA_96 ( a, b, ci, p, g, s );
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


module MFA_95 ( a, b, ci, p, g, s );
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


module MFA_94 ( a, b, ci, p, g, s );
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


module MFA_93 ( a, b, ci, p, g, s );
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


module MFA_92 ( a, b, ci, p, g, s );
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


module MFA_91 ( a, b, ci, p, g, s );
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


module MFA_90 ( a, b, ci, p, g, s );
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


module MFA_89 ( a, b, ci, p, g, s );
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


module MFA_88 ( a, b, ci, p, g, s );
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


module MFA_87 ( a, b, ci, p, g, s );
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


module MFA_86 ( a, b, ci, p, g, s );
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


module MFA_85 ( a, b, ci, p, g, s );
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


module MFA_84 ( a, b, ci, p, g, s );
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


module MFA_83 ( a, b, ci, p, g, s );
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


module MFA_82 ( a, b, ci, p, g, s );
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


module MFA_81 ( a, b, ci, p, g, s );
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


module MFA_80 ( a, b, ci, p, g, s );
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


module MFA_79 ( a, b, ci, p, g, s );
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


module MFA_78 ( a, b, ci, p, g, s );
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


module MFA_77 ( a, b, ci, p, g, s );
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


module MFA_76 ( a, b, ci, p, g, s );
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


module MFA_75 ( a, b, ci, p, g, s );
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


module MFA_74 ( a, b, ci, p, g, s );
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


module MFA_73 ( a, b, ci, p, g, s );
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


module MFA_72 ( a, b, ci, p, g, s );
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


module MFA_71 ( a, b, ci, p, g, s );
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


module MFA_70 ( a, b, ci, p, g, s );
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


module MFA_69 ( a, b, ci, p, g, s );
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


module MFA_68 ( a, b, ci, p, g, s );
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


module MFA_67 ( a, b, ci, p, g, s );
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


module MFA_66 ( a, b, ci, p, g, s );
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


module MFA_65 ( a, b, ci, p, g, s );
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


module MFA_64 ( a, b, ci, p, g, s );
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


module cla_adder_WIDTH64 ( a, b, ci, s, co );
  input [63:0] a;
  input [63:0] b;
  output [63:0] s;
  input ci;
  output co;
  wire   genblk1_g3, genblk1_p3, n1;
  wire   [63:0] internal_ci;
  wire   [63:0] p;
  wire   [63:0] g;
  wire   [15:0] genblk1_ci1;
  wire   [15:0] genblk1_g1;
  wire   [15:0] genblk1_p1;
  wire   [3:0] genblk1_ci2;
  wire   [3:0] genblk1_g2;
  wire   [3:0] genblk1_p2;

  MFA_56 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(internal_ci[0]), .p(p[0]), .g(
        g[0]), .s(s[0]) );
  MFA_57 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_58 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_59 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_60 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_61 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_62 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_63 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_64 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_65 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_66 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_67 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_68 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_69 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_70 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_71 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .p(p[15]), 
        .g(g[15]), .s(s[15]) );
  MFA_72 mfa_inst_16_ ( .a(a[16]), .b(b[16]), .ci(internal_ci[16]), .p(p[16]), 
        .g(g[16]), .s(s[16]) );
  MFA_73 mfa_inst_17_ ( .a(a[17]), .b(b[17]), .ci(internal_ci[17]), .p(p[17]), 
        .g(g[17]), .s(s[17]) );
  MFA_74 mfa_inst_18_ ( .a(a[18]), .b(b[18]), .ci(internal_ci[18]), .p(p[18]), 
        .g(g[18]), .s(s[18]) );
  MFA_75 mfa_inst_19_ ( .a(a[19]), .b(b[19]), .ci(internal_ci[19]), .p(p[19]), 
        .g(g[19]), .s(s[19]) );
  MFA_76 mfa_inst_20_ ( .a(a[20]), .b(b[20]), .ci(internal_ci[20]), .p(p[20]), 
        .g(g[20]), .s(s[20]) );
  MFA_77 mfa_inst_21_ ( .a(a[21]), .b(b[21]), .ci(internal_ci[21]), .p(p[21]), 
        .g(g[21]), .s(s[21]) );
  MFA_78 mfa_inst_22_ ( .a(a[22]), .b(b[22]), .ci(internal_ci[22]), .p(p[22]), 
        .g(g[22]), .s(s[22]) );
  MFA_79 mfa_inst_23_ ( .a(a[23]), .b(b[23]), .ci(internal_ci[23]), .p(p[23]), 
        .g(g[23]), .s(s[23]) );
  MFA_80 mfa_inst_24_ ( .a(a[24]), .b(b[24]), .ci(internal_ci[24]), .p(p[24]), 
        .g(g[24]), .s(s[24]) );
  MFA_81 mfa_inst_25_ ( .a(a[25]), .b(b[25]), .ci(internal_ci[25]), .p(p[25]), 
        .g(g[25]), .s(s[25]) );
  MFA_82 mfa_inst_26_ ( .a(a[26]), .b(b[26]), .ci(internal_ci[26]), .p(p[26]), 
        .g(g[26]), .s(s[26]) );
  MFA_83 mfa_inst_27_ ( .a(a[27]), .b(b[27]), .ci(internal_ci[27]), .p(p[27]), 
        .g(g[27]), .s(s[27]) );
  MFA_84 mfa_inst_28_ ( .a(a[28]), .b(b[28]), .ci(internal_ci[28]), .p(p[28]), 
        .g(g[28]), .s(s[28]) );
  MFA_85 mfa_inst_29_ ( .a(a[29]), .b(b[29]), .ci(internal_ci[29]), .p(p[29]), 
        .g(g[29]), .s(s[29]) );
  MFA_86 mfa_inst_30_ ( .a(a[30]), .b(b[30]), .ci(internal_ci[30]), .p(p[30]), 
        .g(g[30]), .s(s[30]) );
  MFA_87 mfa_inst_31_ ( .a(a[31]), .b(b[31]), .ci(internal_ci[31]), .p(p[31]), 
        .g(g[31]), .s(s[31]) );
  MFA_88 mfa_inst_32_ ( .a(a[32]), .b(b[32]), .ci(internal_ci[32]), .p(p[32]), 
        .g(g[32]), .s(s[32]) );
  MFA_89 mfa_inst_33_ ( .a(a[33]), .b(b[33]), .ci(internal_ci[33]), .p(p[33]), 
        .g(g[33]), .s(s[33]) );
  MFA_90 mfa_inst_34_ ( .a(a[34]), .b(b[34]), .ci(internal_ci[34]), .p(p[34]), 
        .g(g[34]), .s(s[34]) );
  MFA_91 mfa_inst_35_ ( .a(a[35]), .b(b[35]), .ci(internal_ci[35]), .p(p[35]), 
        .g(g[35]), .s(s[35]) );
  MFA_92 mfa_inst_36_ ( .a(a[36]), .b(b[36]), .ci(internal_ci[36]), .p(p[36]), 
        .g(g[36]), .s(s[36]) );
  MFA_93 mfa_inst_37_ ( .a(a[37]), .b(b[37]), .ci(internal_ci[37]), .p(p[37]), 
        .g(g[37]), .s(s[37]) );
  MFA_94 mfa_inst_38_ ( .a(a[38]), .b(b[38]), .ci(internal_ci[38]), .p(p[38]), 
        .g(g[38]), .s(s[38]) );
  MFA_95 mfa_inst_39_ ( .a(a[39]), .b(b[39]), .ci(internal_ci[39]), .p(p[39]), 
        .g(g[39]), .s(s[39]) );
  MFA_96 mfa_inst_40_ ( .a(a[40]), .b(b[40]), .ci(internal_ci[40]), .p(p[40]), 
        .g(g[40]), .s(s[40]) );
  MFA_97 mfa_inst_41_ ( .a(a[41]), .b(b[41]), .ci(internal_ci[41]), .p(p[41]), 
        .g(g[41]), .s(s[41]) );
  MFA_98 mfa_inst_42_ ( .a(a[42]), .b(b[42]), .ci(internal_ci[42]), .p(p[42]), 
        .g(g[42]), .s(s[42]) );
  MFA_99 mfa_inst_43_ ( .a(a[43]), .b(b[43]), .ci(internal_ci[43]), .p(p[43]), 
        .g(g[43]), .s(s[43]) );
  MFA_100 mfa_inst_44_ ( .a(a[44]), .b(b[44]), .ci(internal_ci[44]), .p(p[44]), 
        .g(g[44]), .s(s[44]) );
  MFA_101 mfa_inst_45_ ( .a(a[45]), .b(b[45]), .ci(internal_ci[45]), .p(p[45]), 
        .g(g[45]), .s(s[45]) );
  MFA_102 mfa_inst_46_ ( .a(a[46]), .b(b[46]), .ci(internal_ci[46]), .p(p[46]), 
        .g(g[46]), .s(s[46]) );
  MFA_103 mfa_inst_47_ ( .a(a[47]), .b(b[47]), .ci(internal_ci[47]), .p(p[47]), 
        .g(g[47]), .s(s[47]) );
  MFA_104 mfa_inst_48_ ( .a(a[48]), .b(b[48]), .ci(internal_ci[48]), .p(p[48]), 
        .g(g[48]), .s(s[48]) );
  MFA_105 mfa_inst_49_ ( .a(a[49]), .b(b[49]), .ci(internal_ci[49]), .p(p[49]), 
        .g(g[49]), .s(s[49]) );
  MFA_106 mfa_inst_50_ ( .a(a[50]), .b(b[50]), .ci(internal_ci[50]), .p(p[50]), 
        .g(g[50]), .s(s[50]) );
  MFA_107 mfa_inst_51_ ( .a(a[51]), .b(b[51]), .ci(internal_ci[51]), .p(p[51]), 
        .g(g[51]), .s(s[51]) );
  MFA_108 mfa_inst_52_ ( .a(a[52]), .b(b[52]), .ci(internal_ci[52]), .p(p[52]), 
        .g(g[52]), .s(s[52]) );
  MFA_109 mfa_inst_53_ ( .a(a[53]), .b(b[53]), .ci(internal_ci[53]), .p(p[53]), 
        .g(g[53]), .s(s[53]) );
  MFA_110 mfa_inst_54_ ( .a(a[54]), .b(b[54]), .ci(internal_ci[54]), .p(p[54]), 
        .g(g[54]), .s(s[54]) );
  MFA_111 mfa_inst_55_ ( .a(a[55]), .b(b[55]), .ci(internal_ci[55]), .p(p[55]), 
        .g(g[55]), .s(s[55]) );
  MFA_112 mfa_inst_56_ ( .a(a[56]), .b(b[56]), .ci(internal_ci[56]), .p(p[56]), 
        .g(g[56]), .s(s[56]) );
  MFA_113 mfa_inst_57_ ( .a(a[57]), .b(b[57]), .ci(internal_ci[57]), .p(p[57]), 
        .g(g[57]), .s(s[57]) );
  MFA_114 mfa_inst_58_ ( .a(a[58]), .b(b[58]), .ci(internal_ci[58]), .p(p[58]), 
        .g(g[58]), .s(s[58]) );
  MFA_115 mfa_inst_59_ ( .a(a[59]), .b(b[59]), .ci(internal_ci[59]), .p(p[59]), 
        .g(g[59]), .s(s[59]) );
  MFA_116 mfa_inst_60_ ( .a(a[60]), .b(b[60]), .ci(internal_ci[60]), .p(p[60]), 
        .g(g[60]), .s(s[60]) );
  MFA_117 mfa_inst_61_ ( .a(a[61]), .b(b[61]), .ci(internal_ci[61]), .p(p[61]), 
        .g(g[61]), .s(s[61]) );
  MFA_118 mfa_inst_62_ ( .a(a[62]), .b(b[62]), .ci(internal_ci[62]), .p(p[62]), 
        .g(g[62]), .s(s[62]) );
  MFA_119 mfa_inst_63_ ( .a(a[63]), .b(b[63]), .ci(internal_ci[63]), .p(p[63]), 
        .g(g[63]), .s(s[63]) );
  LA4_20 genblk1_layer1_0_ ( .g(g[3:0]), .p(p[3:0]), .ci(genblk1_ci1[0]), .G(
        genblk1_g1[0]), .P(genblk1_p1[0]), .co(internal_ci[3:0]) );
  LA4_21 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_22 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), 
        .G(genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_23 genblk1_layer1_3_ ( .g(g[15:12]), .p(p[15:12]), .ci(genblk1_ci1[3]), 
        .G(genblk1_g1[3]), .P(genblk1_p1[3]), .co(internal_ci[15:12]) );
  LA4_24 genblk1_layer1_4_ ( .g(g[19:16]), .p(p[19:16]), .ci(genblk1_ci1[4]), 
        .G(genblk1_g1[4]), .P(genblk1_p1[4]), .co(internal_ci[19:16]) );
  LA4_25 genblk1_layer1_5_ ( .g(g[23:20]), .p(p[23:20]), .ci(genblk1_ci1[5]), 
        .G(genblk1_g1[5]), .P(genblk1_p1[5]), .co(internal_ci[23:20]) );
  LA4_26 genblk1_layer1_6_ ( .g(g[27:24]), .p(p[27:24]), .ci(genblk1_ci1[6]), 
        .G(genblk1_g1[6]), .P(genblk1_p1[6]), .co(internal_ci[27:24]) );
  LA4_27 genblk1_layer1_7_ ( .g(g[31:28]), .p(p[31:28]), .ci(genblk1_ci1[7]), 
        .G(genblk1_g1[7]), .P(genblk1_p1[7]), .co(internal_ci[31:28]) );
  LA4_28 genblk1_layer1_8_ ( .g(g[35:32]), .p(p[35:32]), .ci(genblk1_ci1[8]), 
        .G(genblk1_g1[8]), .P(genblk1_p1[8]), .co(internal_ci[35:32]) );
  LA4_29 genblk1_layer1_9_ ( .g(g[39:36]), .p(p[39:36]), .ci(genblk1_ci1[9]), 
        .G(genblk1_g1[9]), .P(genblk1_p1[9]), .co(internal_ci[39:36]) );
  LA4_30 genblk1_layer1_10_ ( .g(g[43:40]), .p(p[43:40]), .ci(genblk1_ci1[10]), 
        .G(genblk1_g1[10]), .P(genblk1_p1[10]), .co(internal_ci[43:40]) );
  LA4_31 genblk1_layer1_11_ ( .g(g[47:44]), .p(p[47:44]), .ci(genblk1_ci1[11]), 
        .G(genblk1_g1[11]), .P(genblk1_p1[11]), .co(internal_ci[47:44]) );
  LA4_32 genblk1_layer1_12_ ( .g(g[51:48]), .p(p[51:48]), .ci(genblk1_ci1[12]), 
        .G(genblk1_g1[12]), .P(genblk1_p1[12]), .co(internal_ci[51:48]) );
  LA4_33 genblk1_layer1_13_ ( .g(g[55:52]), .p(p[55:52]), .ci(genblk1_ci1[13]), 
        .G(genblk1_g1[13]), .P(genblk1_p1[13]), .co(internal_ci[55:52]) );
  LA4_34 genblk1_layer1_14_ ( .g(g[59:56]), .p(p[59:56]), .ci(genblk1_ci1[14]), 
        .G(genblk1_g1[14]), .P(genblk1_p1[14]), .co(internal_ci[59:56]) );
  LA4_35 genblk1_layer1_15_ ( .g(g[63:60]), .p(p[63:60]), .ci(genblk1_ci1[15]), 
        .G(genblk1_g1[15]), .P(genblk1_p1[15]), .co(internal_ci[63:60]) );
  LA4_16 genblk1_layer2_0_ ( .g(genblk1_g1[3:0]), .p(genblk1_p1[3:0]), .ci(
        genblk1_ci2[0]), .G(genblk1_g2[0]), .P(genblk1_p2[0]), .co(
        genblk1_ci1[3:0]) );
  LA4_17 genblk1_layer2_1_ ( .g(genblk1_g1[7:4]), .p(genblk1_p1[7:4]), .ci(
        genblk1_ci2[1]), .G(genblk1_g2[1]), .P(genblk1_p2[1]), .co(
        genblk1_ci1[7:4]) );
  LA4_18 genblk1_layer2_2_ ( .g(genblk1_g1[11:8]), .p(genblk1_p1[11:8]), .ci(
        genblk1_ci2[2]), .G(genblk1_g2[2]), .P(genblk1_p2[2]), .co(
        genblk1_ci1[11:8]) );
  LA4_19 genblk1_layer2_3_ ( .g(genblk1_g1[15:12]), .p(genblk1_p1[15:12]), 
        .ci(genblk1_ci2[3]), .G(genblk1_g2[3]), .P(genblk1_p2[3]), .co(
        genblk1_ci1[15:12]) );
  LA4_48 genblk1_layer3 ( .g(genblk1_g2), .p(genblk1_p2), .ci(ci), .G(
        genblk1_g3), .P(genblk1_p3), .co(genblk1_ci2) );
  AND2X1_RVT U1 ( .A1(ci), .A2(genblk1_p3), .Y(n1) );
  OR2X1_RVT U2 ( .A1(genblk1_g3), .A2(n1), .Y(co) );
endmodule


module MFA_24 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module MFA_55 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module LA4_8 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_15 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module LA2_4 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module LA4_14 ( g, p, ci, G, P, co );
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


module LA4_13 ( g, p, ci, G, P, co );
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


module LA4_6 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_7 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
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


module cla_adder_WIDTH32 ( a, b, ci, s, co );
  input [31:0] a;
  input [31:0] b;
  output [31:0] s;
  input ci;
  output co;
  wire   genblk1_g2_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [31:0] internal_ci;
  wire   [30:1] p;
  wire   [30:0] g;
  wire   [7:0] genblk1_ci1;
  wire   [6:0] genblk1_g1;
  wire   [6:1] genblk1_p1;
  wire   [1:0] genblk1_ci2;

  MFA_24 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_25 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_26 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_27 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_28 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_29 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_30 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_31 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_32 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_33 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_34 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_35 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_36 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_37 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_38 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_39 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .p(p[15]), 
        .g(g[15]), .s(s[15]) );
  MFA_40 mfa_inst_16_ ( .a(a[16]), .b(b[16]), .ci(internal_ci[16]), .p(p[16]), 
        .g(g[16]), .s(s[16]) );
  MFA_41 mfa_inst_17_ ( .a(a[17]), .b(b[17]), .ci(internal_ci[17]), .p(p[17]), 
        .g(g[17]), .s(s[17]) );
  MFA_42 mfa_inst_18_ ( .a(a[18]), .b(b[18]), .ci(internal_ci[18]), .p(p[18]), 
        .g(g[18]), .s(s[18]) );
  MFA_43 mfa_inst_19_ ( .a(a[19]), .b(b[19]), .ci(internal_ci[19]), .p(p[19]), 
        .g(g[19]), .s(s[19]) );
  MFA_44 mfa_inst_20_ ( .a(a[20]), .b(b[20]), .ci(internal_ci[20]), .p(p[20]), 
        .g(g[20]), .s(s[20]) );
  MFA_45 mfa_inst_21_ ( .a(a[21]), .b(b[21]), .ci(internal_ci[21]), .p(p[21]), 
        .g(g[21]), .s(s[21]) );
  MFA_46 mfa_inst_22_ ( .a(a[22]), .b(b[22]), .ci(internal_ci[22]), .p(p[22]), 
        .g(g[22]), .s(s[22]) );
  MFA_47 mfa_inst_23_ ( .a(a[23]), .b(b[23]), .ci(internal_ci[23]), .p(p[23]), 
        .g(g[23]), .s(s[23]) );
  MFA_48 mfa_inst_24_ ( .a(a[24]), .b(b[24]), .ci(internal_ci[24]), .p(p[24]), 
        .g(g[24]), .s(s[24]) );
  MFA_49 mfa_inst_25_ ( .a(a[25]), .b(b[25]), .ci(internal_ci[25]), .p(p[25]), 
        .g(g[25]), .s(s[25]) );
  MFA_50 mfa_inst_26_ ( .a(a[26]), .b(b[26]), .ci(internal_ci[26]), .p(p[26]), 
        .g(g[26]), .s(s[26]) );
  MFA_51 mfa_inst_27_ ( .a(a[27]), .b(b[27]), .ci(internal_ci[27]), .p(p[27]), 
        .g(g[27]), .s(s[27]) );
  MFA_52 mfa_inst_28_ ( .a(a[28]), .b(b[28]), .ci(internal_ci[28]), .p(p[28]), 
        .g(g[28]), .s(s[28]) );
  MFA_53 mfa_inst_29_ ( .a(a[29]), .b(b[29]), .ci(internal_ci[29]), .p(p[29]), 
        .g(g[29]), .s(s[29]) );
  MFA_54 mfa_inst_30_ ( .a(a[30]), .b(b[30]), .ci(internal_ci[30]), .p(p[30]), 
        .g(g[30]), .s(s[30]) );
  MFA_55 mfa_inst_31_ ( .a(a[31]), .b(b[31]), .ci(internal_ci[31]), .s(s[31])
         );
  LA4_8 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1[0]), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_9 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_10 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), 
        .G(genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_11 genblk1_layer1_3_ ( .g(g[15:12]), .p(p[15:12]), .ci(genblk1_ci1[3]), 
        .G(genblk1_g1[3]), .P(genblk1_p1[3]), .co(internal_ci[15:12]) );
  LA4_12 genblk1_layer1_4_ ( .g(g[19:16]), .p(p[19:16]), .ci(genblk1_ci1[4]), 
        .G(genblk1_g1[4]), .P(genblk1_p1[4]), .co(internal_ci[19:16]) );
  LA4_13 genblk1_layer1_5_ ( .g(g[23:20]), .p(p[23:20]), .ci(genblk1_ci1[5]), 
        .G(genblk1_g1[5]), .P(genblk1_p1[5]), .co(internal_ci[23:20]) );
  LA4_14 genblk1_layer1_6_ ( .g(g[27:24]), .p(p[27:24]), .ci(genblk1_ci1[6]), 
        .G(genblk1_g1[6]), .P(genblk1_p1[6]), .co(internal_ci[27:24]) );
  LA4_15 genblk1_layer1_7_ ( .g({1'b0, g[30:28]}), .p({1'b0, p[30:28]}), .ci(
        genblk1_ci1[7]), .co(internal_ci[31:28]) );
  LA4_6 genblk1_layer2_0_ ( .g(genblk1_g1[3:0]), .p({genblk1_p1[3:1], 1'b0}), 
        .ci(1'b0), .G(genblk1_g2_0_), .co({genblk1_ci1[3:1], 
        SYNOPSYS_UNCONNECTED_2}) );
  LA4_7 genblk1_layer2_1_ ( .g({1'b0, genblk1_g1[6:4]}), .p({1'b0, 
        genblk1_p1[6:4]}), .ci(genblk1_ci2[1]), .co(genblk1_ci1[7:4]) );
  LA2_4 genblk1_layer3 ( .g({1'b0, genblk1_g2_0_}), .p({1'b0, 1'b0}), .ci(1'b0), .co({genblk1_ci2[1], SYNOPSYS_UNCONNECTED_3}) );
endmodule


module LA4_2 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_47 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
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


module LA4_3 ( g, p, ci, G, P, co );
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
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
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


module MFA_23 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_8 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module cla_adder_WIDTH16_1 ( a, b, ci, s, co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  input ci;
  output co;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [15:0] internal_ci;
  wire   [14:1] p;
  wire   [14:0] g;
  wire   [3:0] genblk1_ci1;
  wire   [2:0] genblk1_g1;
  wire   [2:1] genblk1_p1;

  MFA_8 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_9 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_10 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_11 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_12 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_13 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_14 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_15 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_16 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_17 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_18 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_19 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_20 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_21 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_22 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_23 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .s(s[15])
         );
  LA4_2 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1[0]), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_3 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_4 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), .G(
        genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_5 genblk1_layer1_3_ ( .g({1'b0, g[14:12]}), .p({1'b0, p[14:12]}), .ci(
        genblk1_ci1[3]), .co(internal_ci[15:12]) );
  LA4_47 genblk1_layer2 ( .g({1'b0, genblk1_g1}), .p({1'b0, genblk1_p1, 1'b0}), 
        .ci(1'b0), .co({genblk1_ci1[3:1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_45 ( g, p, ci, G, P, co );
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


module LA4_44 ( g, p, ci, G, P, co );
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


module LA4_43 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_46 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module LA4_42 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
endmodule


module MFA_158 ( a, b, ci, p, g, s );
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


module MFA_157 ( a, b, ci, p, g, s );
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


module MFA_156 ( a, b, ci, p, g, s );
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


module MFA_155 ( a, b, ci, p, g, s );
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


module MFA_154 ( a, b, ci, p, g, s );
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


module MFA_153 ( a, b, ci, p, g, s );
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


module MFA_152 ( a, b, ci, p, g, s );
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


module MFA_151 ( a, b, ci, p, g, s );
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


module MFA_150 ( a, b, ci, p, g, s );
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


module MFA_149 ( a, b, ci, p, g, s );
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


module MFA_148 ( a, b, ci, p, g, s );
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


module MFA_147 ( a, b, ci, p, g, s );
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


module MFA_146 ( a, b, ci, p, g, s );
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


module MFA_145 ( a, b, ci, p, g, s );
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


module MFA_159 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_144 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module cla_adder_WIDTH16_0 ( a, b, ci, s, co );
  input [15:0] a;
  input [15:0] b;
  output [15:0] s;
  input ci;
  output co;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [15:0] internal_ci;
  wire   [14:1] p;
  wire   [14:0] g;
  wire   [3:0] genblk1_ci1;
  wire   [2:0] genblk1_g1;
  wire   [2:1] genblk1_p1;

  MFA_144 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_145 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_146 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_147 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_148 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_149 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_150 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_151 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_152 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_153 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_154 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_155 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_156 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_157 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_158 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_159 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .s(s[15])
         );
  LA4_43 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1[0]), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_44 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_45 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), 
        .G(genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_46 genblk1_layer1_3_ ( .g({1'b0, g[14:12]}), .p({1'b0, p[14:12]}), .ci(
        genblk1_ci1[3]), .co(internal_ci[15:12]) );
  LA4_42 genblk1_layer2 ( .g({1'b0, genblk1_g1}), .p({1'b0, genblk1_p1, 1'b0}), 
        .ci(1'b0), .co({genblk1_ci1[3:1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_0 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_1 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
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


module MFA_7 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_0 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module LA2_3 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_3 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_0 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_1 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_2 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_3 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_4 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_5 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_6 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_7 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_0 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_1 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA2_3 genblk1_layer2 ( .g({1'b0, genblk1_g1_0_}), .p({1'b0, 1'b0}), .ci(1'b0), .co({genblk1_ci1[1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_36 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_37 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module MFA_126 ( a, b, ci, p, g, s );
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


module MFA_125 ( a, b, ci, p, g, s );
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


module MFA_124 ( a, b, ci, p, g, s );
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


module MFA_123 ( a, b, ci, p, g, s );
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


module MFA_122 ( a, b, ci, p, g, s );
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


module MFA_121 ( a, b, ci, p, g, s );
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


module MFA_127 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_120 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module LA2_0 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_0 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_120 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_121 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_122 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_123 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_124 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_125 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_126 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_127 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_36 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_37 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA2_0 genblk1_layer2 ( .g({1'b0, genblk1_g1_0_}), .p({1'b0, 1'b0}), .ci(1'b0), .co({genblk1_ci1[1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_38 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_39 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module MFA_134 ( a, b, ci, p, g, s );
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


module MFA_133 ( a, b, ci, p, g, s );
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


module MFA_132 ( a, b, ci, p, g, s );
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


module MFA_131 ( a, b, ci, p, g, s );
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


module MFA_130 ( a, b, ci, p, g, s );
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


module MFA_129 ( a, b, ci, p, g, s );
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


module MFA_135 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_128 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module LA2_1 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_1 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_128 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_129 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_130 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_131 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_132 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_133 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_134 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_135 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_38 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_39 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA2_1 genblk1_layer2 ( .g({1'b0, genblk1_g1_0_}), .p({1'b0, 1'b0}), .ci(1'b0), .co({genblk1_ci1[1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_40 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;
  assign co[1] = g[0];

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(co[2]) );
  AND2X1_RVT U3 ( .A1(p[2]), .A2(co[2]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[2]), .A2(n2), .Y(co[3]) );
  AND2X1_RVT U5 ( .A1(p[3]), .A2(co[3]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[3]), .A2(n3), .Y(G) );
endmodule


module LA4_41 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module MFA_142 ( a, b, ci, p, g, s );
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


module MFA_141 ( a, b, ci, p, g, s );
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


module MFA_140 ( a, b, ci, p, g, s );
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


module MFA_139 ( a, b, ci, p, g, s );
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


module MFA_138 ( a, b, ci, p, g, s );
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


module MFA_137 ( a, b, ci, p, g, s );
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


module MFA_143 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n2, n3, n4, n5, n6, n7;

  INVX0_RVT U1 ( .A(b), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n2), .A2(ci), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(ci), .A2(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n5), .A2(a), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(a), .A2(n5), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n6), .Y(s) );
endmodule


module MFA_136 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;
  wire   n1, n2;

  NAND2X0_RVT U1 ( .A1(b), .A2(a), .Y(n2) );
  INVX0_RVT U2 ( .A(n2), .Y(g) );
  OR2X1_RVT U3 ( .A1(b), .A2(a), .Y(n1) );
  AND2X1_RVT U4 ( .A1(n2), .A2(n1), .Y(s) );
endmodule


module LA2_2 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_2 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_136 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_137 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_138 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_139 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_140 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_141 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_142 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_143 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_40 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_41 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA2_2 genblk1_layer2 ( .g({1'b0, genblk1_g1_0_}), .p({1'b0, 1'b0}), .ci(1'b0), .co({genblk1_ci1[1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module vbw_cla_bsln ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   controlled_ci, controlled_co, s16_31, s16_30, s16_29, s16_28, s16_27,
         s16_26, s16_25, s16_24, s16_23, s16_22, s16_21, s16_20, s16_19,
         s16_18, s16_17, s16_16, s8_47, s8_46, s8_45, s8_44, s8_43, s8_42,
         s8_41, s8_40, s8_31, s8_30, s8_29, s8_28, s8_27, s8_26, s8_25, s8_24,
         s8_15, s8_14, s8_13, s8_12, s8_11, s8_10, s8_9, s8_8, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229;
  wire   [63:8] s64;
  wire   [63:32] s32;
  wire   [63:48] s16;
  wire   [63:56] s8;

  cla_adder_WIDTH64 add64_0 ( .a(a), .b(b), .ci(controlled_ci), .s({s64, 
        s[7:0]}), .co(controlled_co) );
  cla_adder_WIDTH32 add32_1 ( .a(a[63:32]), .b(b[63:32]), .ci(1'b0), .s(s32)
         );
  cla_adder_WIDTH16_1 add16_3 ( .a(a[63:48]), .b(b[63:48]), .ci(1'b0), .s(s16)
         );
  cla_adder_WIDTH16_0 add16_2 ( .a(a[31:16]), .b(b[31:16]), .ci(1'b0), .s({
        s16_31, s16_30, s16_29, s16_28, s16_27, s16_26, s16_25, s16_24, s16_23, 
        s16_22, s16_21, s16_20, s16_19, s16_18, s16_17, s16_16}) );
  cla_adder_WIDTH8_3 add8_7 ( .a(a[63:56]), .b(b[63:56]), .ci(1'b0), .s(s8) );
  cla_adder_WIDTH8_2 add8_6 ( .a(a[47:40]), .b(b[47:40]), .ci(1'b0), .s({s8_47, 
        s8_46, s8_45, s8_44, s8_43, s8_42, s8_41, s8_40}) );
  cla_adder_WIDTH8_1 add8_5 ( .a(a[31:24]), .b(b[31:24]), .ci(1'b0), .s({s8_31, 
        s8_30, s8_29, s8_28, s8_27, s8_26, s8_25, s8_24}) );
  cla_adder_WIDTH8_0 add8_4 ( .a(a[15:8]), .b(b[15:8]), .ci(1'b0), .s({s8_15, 
        s8_14, s8_13, s8_12, s8_11, s8_10, s8_9, s8_8}) );
  INVX0_RVT U142 ( .A(control[0]), .Y(n115) );
  NAND2X0_RVT U143 ( .A1(control[1]), .A2(n115), .Y(n169) );
  INVX0_RVT U144 ( .A(n169), .Y(n221) );
  NAND2X0_RVT U145 ( .A1(n221), .A2(s16[62]), .Y(n119) );
  INVX2_RVT U146 ( .A(control[1]), .Y(n227) );
  NAND2X0_RVT U147 ( .A1(control[0]), .A2(n227), .Y(n168) );
  INVX0_RVT U148 ( .A(n168), .Y(n198) );
  NAND2X0_RVT U149 ( .A1(n198), .A2(s32[62]), .Y(n118) );
  AND2X1_RVT U150 ( .A1(n227), .A2(n115), .Y(n228) );
  NBUFFX2_RVT U151 ( .A(n228), .Y(n229) );
  NAND2X0_RVT U152 ( .A1(n229), .A2(s64[62]), .Y(n117) );
  AND2X1_RVT U153 ( .A1(control[1]), .A2(control[0]), .Y(n226) );
  NBUFFX2_RVT U154 ( .A(n226), .Y(n225) );
  NAND2X0_RVT U155 ( .A1(n225), .A2(s8[62]), .Y(n116) );
  NAND4X0_RVT U156 ( .A1(n119), .A2(n118), .A3(n117), .A4(n116), .Y(s[62]) );
  NAND2X0_RVT U157 ( .A1(n221), .A2(s16[61]), .Y(n123) );
  NAND2X0_RVT U158 ( .A1(n198), .A2(s32[61]), .Y(n122) );
  NAND2X0_RVT U159 ( .A1(n229), .A2(s64[61]), .Y(n121) );
  NAND2X0_RVT U160 ( .A1(n225), .A2(s8[61]), .Y(n120) );
  NAND4X0_RVT U161 ( .A1(n123), .A2(n122), .A3(n121), .A4(n120), .Y(s[61]) );
  NAND2X0_RVT U162 ( .A1(n221), .A2(s16[60]), .Y(n127) );
  NAND2X0_RVT U163 ( .A1(n198), .A2(s32[60]), .Y(n126) );
  NAND2X0_RVT U164 ( .A1(n229), .A2(s64[60]), .Y(n125) );
  NAND2X0_RVT U165 ( .A1(n225), .A2(s8[60]), .Y(n124) );
  NAND4X0_RVT U166 ( .A1(n127), .A2(n126), .A3(n125), .A4(n124), .Y(s[60]) );
  NAND2X0_RVT U167 ( .A1(n221), .A2(s16[59]), .Y(n131) );
  NAND2X0_RVT U168 ( .A1(n198), .A2(s32[59]), .Y(n130) );
  NAND2X0_RVT U169 ( .A1(n229), .A2(s64[59]), .Y(n129) );
  NAND2X0_RVT U170 ( .A1(n225), .A2(s8[59]), .Y(n128) );
  NAND4X0_RVT U171 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .Y(s[59]) );
  NAND2X0_RVT U172 ( .A1(n221), .A2(s16[58]), .Y(n135) );
  NAND2X0_RVT U173 ( .A1(n198), .A2(s32[58]), .Y(n134) );
  NAND2X0_RVT U174 ( .A1(n229), .A2(s64[58]), .Y(n133) );
  NAND2X0_RVT U175 ( .A1(n225), .A2(s8[58]), .Y(n132) );
  NAND4X0_RVT U176 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(s[58]) );
  NAND2X0_RVT U177 ( .A1(n221), .A2(s16[57]), .Y(n139) );
  NAND2X0_RVT U178 ( .A1(n198), .A2(s32[57]), .Y(n138) );
  NAND2X0_RVT U179 ( .A1(n229), .A2(s64[57]), .Y(n137) );
  NAND2X0_RVT U180 ( .A1(n225), .A2(s8[57]), .Y(n136) );
  NAND4X0_RVT U181 ( .A1(n139), .A2(n138), .A3(n137), .A4(n136), .Y(s[57]) );
  NAND2X0_RVT U182 ( .A1(n221), .A2(s16[56]), .Y(n143) );
  NAND2X0_RVT U183 ( .A1(n198), .A2(s32[56]), .Y(n142) );
  NAND2X0_RVT U184 ( .A1(n229), .A2(s64[56]), .Y(n141) );
  NAND2X0_RVT U185 ( .A1(n225), .A2(s8[56]), .Y(n140) );
  NAND4X0_RVT U186 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .Y(s[56]) );
  NAND2X0_RVT U187 ( .A1(control[1]), .A2(s16[55]), .Y(n146) );
  NAND2X0_RVT U188 ( .A1(n229), .A2(s64[55]), .Y(n145) );
  NAND2X0_RVT U189 ( .A1(n198), .A2(s32[55]), .Y(n144) );
  NAND3X0_RVT U190 ( .A1(n146), .A2(n145), .A3(n144), .Y(s[55]) );
  NAND2X0_RVT U191 ( .A1(control[1]), .A2(s16[54]), .Y(n149) );
  NAND2X0_RVT U192 ( .A1(n229), .A2(s64[54]), .Y(n148) );
  NAND2X0_RVT U193 ( .A1(n198), .A2(s32[54]), .Y(n147) );
  NAND3X0_RVT U194 ( .A1(n149), .A2(n148), .A3(n147), .Y(s[54]) );
  NAND2X0_RVT U195 ( .A1(control[1]), .A2(s16[53]), .Y(n152) );
  NAND2X0_RVT U196 ( .A1(n229), .A2(s64[53]), .Y(n151) );
  NAND2X0_RVT U197 ( .A1(n198), .A2(s32[53]), .Y(n150) );
  NAND3X0_RVT U198 ( .A1(n152), .A2(n151), .A3(n150), .Y(s[53]) );
  NAND2X0_RVT U199 ( .A1(control[1]), .A2(s16[52]), .Y(n155) );
  NAND2X0_RVT U200 ( .A1(n229), .A2(s64[52]), .Y(n154) );
  NAND2X0_RVT U201 ( .A1(n198), .A2(s32[52]), .Y(n153) );
  NAND3X0_RVT U202 ( .A1(n155), .A2(n154), .A3(n153), .Y(s[52]) );
  NAND2X0_RVT U203 ( .A1(control[1]), .A2(s16[51]), .Y(n158) );
  NAND2X0_RVT U204 ( .A1(n229), .A2(s64[51]), .Y(n157) );
  NAND2X0_RVT U205 ( .A1(n198), .A2(s32[51]), .Y(n156) );
  NAND3X0_RVT U206 ( .A1(n158), .A2(n157), .A3(n156), .Y(s[51]) );
  NAND2X0_RVT U207 ( .A1(control[1]), .A2(s16[50]), .Y(n161) );
  NAND2X0_RVT U208 ( .A1(n229), .A2(s64[50]), .Y(n160) );
  NAND2X0_RVT U209 ( .A1(n198), .A2(s32[50]), .Y(n159) );
  NAND3X0_RVT U210 ( .A1(n161), .A2(n160), .A3(n159), .Y(s[50]) );
  NAND2X0_RVT U211 ( .A1(control[1]), .A2(s16[49]), .Y(n164) );
  NAND2X0_RVT U212 ( .A1(n229), .A2(s64[49]), .Y(n163) );
  NAND2X0_RVT U213 ( .A1(n198), .A2(s32[49]), .Y(n162) );
  NAND3X0_RVT U214 ( .A1(n164), .A2(n163), .A3(n162), .Y(s[49]) );
  NAND2X0_RVT U215 ( .A1(control[1]), .A2(s16[48]), .Y(n167) );
  NAND2X0_RVT U216 ( .A1(n229), .A2(s64[48]), .Y(n166) );
  NAND2X0_RVT U217 ( .A1(n198), .A2(s32[48]), .Y(n165) );
  NAND3X0_RVT U218 ( .A1(n167), .A2(n166), .A3(n165), .Y(s[48]) );
  NAND2X0_RVT U219 ( .A1(n229), .A2(s64[47]), .Y(n172) );
  NAND2X0_RVT U220 ( .A1(n225), .A2(s8_47), .Y(n171) );
  NAND2X0_RVT U221 ( .A1(n169), .A2(n168), .Y(n191) );
  NAND2X0_RVT U222 ( .A1(s32[47]), .A2(n191), .Y(n170) );
  NAND3X0_RVT U223 ( .A1(n172), .A2(n171), .A3(n170), .Y(s[47]) );
  NAND2X0_RVT U224 ( .A1(n229), .A2(s64[46]), .Y(n175) );
  NAND2X0_RVT U225 ( .A1(n225), .A2(s8_46), .Y(n174) );
  NAND2X0_RVT U226 ( .A1(s32[46]), .A2(n191), .Y(n173) );
  NAND3X0_RVT U227 ( .A1(n175), .A2(n174), .A3(n173), .Y(s[46]) );
  NAND2X0_RVT U228 ( .A1(n229), .A2(s64[45]), .Y(n178) );
  NAND2X0_RVT U229 ( .A1(n225), .A2(s8_45), .Y(n177) );
  NAND2X0_RVT U230 ( .A1(s32[45]), .A2(n191), .Y(n176) );
  NAND3X0_RVT U231 ( .A1(n178), .A2(n177), .A3(n176), .Y(s[45]) );
  NAND2X0_RVT U232 ( .A1(n229), .A2(s64[44]), .Y(n181) );
  NAND2X0_RVT U233 ( .A1(n225), .A2(s8_44), .Y(n180) );
  NAND2X0_RVT U234 ( .A1(s32[44]), .A2(n191), .Y(n179) );
  NAND3X0_RVT U235 ( .A1(n181), .A2(n180), .A3(n179), .Y(s[44]) );
  NAND2X0_RVT U236 ( .A1(n229), .A2(s64[43]), .Y(n184) );
  NAND2X0_RVT U237 ( .A1(n225), .A2(s8_43), .Y(n183) );
  NAND2X0_RVT U238 ( .A1(s32[43]), .A2(n191), .Y(n182) );
  NAND3X0_RVT U239 ( .A1(n184), .A2(n183), .A3(n182), .Y(s[43]) );
  NAND2X0_RVT U240 ( .A1(n229), .A2(s64[42]), .Y(n187) );
  NAND2X0_RVT U241 ( .A1(n225), .A2(s8_42), .Y(n186) );
  NAND2X0_RVT U242 ( .A1(s32[42]), .A2(n191), .Y(n185) );
  NAND3X0_RVT U243 ( .A1(n187), .A2(n186), .A3(n185), .Y(s[42]) );
  NAND2X0_RVT U244 ( .A1(n229), .A2(s64[41]), .Y(n190) );
  NAND2X0_RVT U245 ( .A1(n225), .A2(s8_41), .Y(n189) );
  NAND2X0_RVT U246 ( .A1(s32[41]), .A2(n191), .Y(n188) );
  NAND3X0_RVT U247 ( .A1(n190), .A2(n189), .A3(n188), .Y(s[41]) );
  NAND2X0_RVT U248 ( .A1(n229), .A2(s64[40]), .Y(n194) );
  NAND2X0_RVT U249 ( .A1(n225), .A2(s8_40), .Y(n193) );
  NAND2X0_RVT U250 ( .A1(s32[40]), .A2(n191), .Y(n192) );
  NAND3X0_RVT U251 ( .A1(n194), .A2(n193), .A3(n192), .Y(s[40]) );
  NAND2X0_RVT U252 ( .A1(s64[31]), .A2(n227), .Y(n197) );
  NAND2X0_RVT U253 ( .A1(n221), .A2(s16_31), .Y(n196) );
  NAND2X0_RVT U254 ( .A1(n225), .A2(s8_31), .Y(n195) );
  NAND3X0_RVT U255 ( .A1(n197), .A2(n196), .A3(n195), .Y(s[31]) );
  NAND2X0_RVT U256 ( .A1(n221), .A2(s16[63]), .Y(n202) );
  NAND2X0_RVT U257 ( .A1(n198), .A2(s32[63]), .Y(n201) );
  NAND2X0_RVT U258 ( .A1(n229), .A2(s64[63]), .Y(n200) );
  NAND2X0_RVT U259 ( .A1(n225), .A2(s8[63]), .Y(n199) );
  NAND4X0_RVT U260 ( .A1(n202), .A2(n201), .A3(n200), .A4(n199), .Y(s[63]) );
  NAND2X0_RVT U261 ( .A1(s64[30]), .A2(n227), .Y(n205) );
  NAND2X0_RVT U262 ( .A1(n221), .A2(s16_30), .Y(n204) );
  NAND2X0_RVT U263 ( .A1(n225), .A2(s8_30), .Y(n203) );
  NAND3X0_RVT U264 ( .A1(n205), .A2(n204), .A3(n203), .Y(s[30]) );
  NAND2X0_RVT U265 ( .A1(s64[29]), .A2(n227), .Y(n208) );
  NAND2X0_RVT U266 ( .A1(n221), .A2(s16_29), .Y(n207) );
  NAND2X0_RVT U267 ( .A1(n225), .A2(s8_29), .Y(n206) );
  NAND3X0_RVT U268 ( .A1(n208), .A2(n207), .A3(n206), .Y(s[29]) );
  NAND2X0_RVT U269 ( .A1(s64[28]), .A2(n227), .Y(n211) );
  NAND2X0_RVT U270 ( .A1(n221), .A2(s16_28), .Y(n210) );
  NAND2X0_RVT U271 ( .A1(n225), .A2(s8_28), .Y(n209) );
  NAND3X0_RVT U272 ( .A1(n211), .A2(n210), .A3(n209), .Y(s[28]) );
  NAND2X0_RVT U273 ( .A1(s64[27]), .A2(n227), .Y(n214) );
  NAND2X0_RVT U274 ( .A1(n221), .A2(s16_27), .Y(n213) );
  NAND2X0_RVT U275 ( .A1(n225), .A2(s8_27), .Y(n212) );
  NAND3X0_RVT U276 ( .A1(n214), .A2(n213), .A3(n212), .Y(s[27]) );
  NAND2X0_RVT U277 ( .A1(s64[26]), .A2(n227), .Y(n217) );
  NAND2X0_RVT U278 ( .A1(n221), .A2(s16_26), .Y(n216) );
  NAND2X0_RVT U279 ( .A1(n225), .A2(s8_26), .Y(n215) );
  NAND3X0_RVT U280 ( .A1(n217), .A2(n216), .A3(n215), .Y(s[26]) );
  NAND2X0_RVT U281 ( .A1(s64[25]), .A2(n227), .Y(n220) );
  NAND2X0_RVT U282 ( .A1(n221), .A2(s16_25), .Y(n219) );
  NAND2X0_RVT U283 ( .A1(n225), .A2(s8_25), .Y(n218) );
  NAND3X0_RVT U284 ( .A1(n220), .A2(n219), .A3(n218), .Y(s[25]) );
  NAND2X0_RVT U285 ( .A1(s64[24]), .A2(n227), .Y(n224) );
  NAND2X0_RVT U286 ( .A1(n221), .A2(s16_24), .Y(n223) );
  NAND2X0_RVT U287 ( .A1(n225), .A2(s8_24), .Y(n222) );
  NAND3X0_RVT U288 ( .A1(n224), .A2(n223), .A3(n222), .Y(s[24]) );
  MUX21X1_RVT U289 ( .A1(s64[8]), .A2(s8_8), .S0(n226), .Y(s[8]) );
  MUX21X1_RVT U290 ( .A1(s64[9]), .A2(s8_9), .S0(n225), .Y(s[9]) );
  MUX21X1_RVT U291 ( .A1(s64[10]), .A2(s8_10), .S0(n226), .Y(s[10]) );
  MUX21X1_RVT U292 ( .A1(s64[11]), .A2(s8_11), .S0(n226), .Y(s[11]) );
  MUX21X1_RVT U293 ( .A1(s64[12]), .A2(s8_12), .S0(n226), .Y(s[12]) );
  MUX21X1_RVT U294 ( .A1(s64[13]), .A2(s8_13), .S0(n226), .Y(s[13]) );
  MUX21X1_RVT U295 ( .A1(s64[14]), .A2(s8_14), .S0(n226), .Y(s[14]) );
  MUX21X1_RVT U296 ( .A1(s64[15]), .A2(s8_15), .S0(n226), .Y(s[15]) );
  MUX21X1_RVT U297 ( .A1(s16_16), .A2(s64[16]), .S0(n227), .Y(s[16]) );
  MUX21X1_RVT U298 ( .A1(s16_17), .A2(s64[17]), .S0(n227), .Y(s[17]) );
  MUX21X1_RVT U299 ( .A1(s16_18), .A2(s64[18]), .S0(n227), .Y(s[18]) );
  MUX21X1_RVT U300 ( .A1(s16_19), .A2(s64[19]), .S0(n227), .Y(s[19]) );
  MUX21X1_RVT U301 ( .A1(s16_20), .A2(s64[20]), .S0(n227), .Y(s[20]) );
  MUX21X1_RVT U302 ( .A1(s16_21), .A2(s64[21]), .S0(n227), .Y(s[21]) );
  MUX21X1_RVT U303 ( .A1(s16_22), .A2(s64[22]), .S0(n227), .Y(s[22]) );
  MUX21X1_RVT U304 ( .A1(s16_23), .A2(s64[23]), .S0(n227), .Y(s[23]) );
  MUX21X1_RVT U305 ( .A1(s32[32]), .A2(s64[32]), .S0(n229), .Y(s[32]) );
  MUX21X1_RVT U306 ( .A1(s32[33]), .A2(s64[33]), .S0(n228), .Y(s[33]) );
  MUX21X1_RVT U307 ( .A1(s32[34]), .A2(s64[34]), .S0(n228), .Y(s[34]) );
  MUX21X1_RVT U308 ( .A1(s32[35]), .A2(s64[35]), .S0(n228), .Y(s[35]) );
  MUX21X1_RVT U309 ( .A1(s32[36]), .A2(s64[36]), .S0(n228), .Y(s[36]) );
  MUX21X1_RVT U310 ( .A1(s32[37]), .A2(s64[37]), .S0(n228), .Y(s[37]) );
  MUX21X1_RVT U311 ( .A1(s32[38]), .A2(s64[38]), .S0(n228), .Y(s[38]) );
  MUX21X1_RVT U312 ( .A1(s32[39]), .A2(s64[39]), .S0(n228), .Y(s[39]) );
  AND2X1_RVT U313 ( .A1(n229), .A2(controlled_co), .Y(co) );
  AND2X1_RVT U314 ( .A1(n229), .A2(ci), .Y(controlled_ci) );
endmodule

