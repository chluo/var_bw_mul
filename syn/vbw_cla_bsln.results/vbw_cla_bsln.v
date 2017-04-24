/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Sun Apr 23 19:50:31 2017
/////////////////////////////////////////////////////////////


module MFA_56 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module LA4_20 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_67 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND4X1_RVT U5 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U6 ( .A1(g[0]), .A2(p[1]), .Y(n3) );
  OR2X1_RVT U7 ( .A1(g[1]), .A2(n3), .Y(n4) );
  AND2X1_RVT U8 ( .A1(p[2]), .A2(n4), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[2]), .A2(n5), .Y(n6) );
  AND2X1_RVT U10 ( .A1(p[3]), .A2(n6), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[3]), .A2(n7), .Y(G) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_19 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_18 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_17 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_16 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND4X1_RVT U5 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U6 ( .A1(g[0]), .A2(p[1]), .Y(n3) );
  OR2X1_RVT U7 ( .A1(g[1]), .A2(n3), .Y(n4) );
  AND2X1_RVT U8 ( .A1(p[2]), .A2(n4), .Y(n5) );
  OR2X1_RVT U9 ( .A1(g[2]), .A2(n5), .Y(n6) );
  AND2X1_RVT U10 ( .A1(p[3]), .A2(n6), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[3]), .A2(n7), .Y(G) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_35 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_34 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_33 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_32 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_31 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_30 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_29 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_28 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_27 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_26 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_25 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_24 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_23 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_22 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_21 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module MFA_119 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_118 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_117 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_116 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_115 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_114 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_113 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_112 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_111 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_110 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_109 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_108 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_107 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_106 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_105 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_104 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_103 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_102 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_101 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_100 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_99 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_98 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_97 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_96 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_95 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_94 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_93 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_92 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_91 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_90 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_89 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_88 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_87 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_86 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_85 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_84 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_83 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_82 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_81 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_80 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_79 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_78 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_77 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_76 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_75 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_74 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_73 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_72 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_71 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_70 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_69 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_68 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_67 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_66 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_65 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_64 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_63 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_62 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_61 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_60 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_59 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_58 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_57 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
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
  LA4_67 genblk1_layer3 ( .g(genblk1_g2), .p(genblk1_p2), .ci(ci), .G(
        genblk1_g3), .P(genblk1_p3), .co(genblk1_ci2) );
  AND2X1_RVT U1 ( .A1(ci), .A2(genblk1_p3), .Y(n1) );
  OR2X1_RVT U2 ( .A1(genblk1_g3), .A2(n1), .Y(co) );
endmodule


module MFA_24 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module MFA_55 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
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


module LA4_66 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
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
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_13 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_12 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_11 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_10 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_9 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
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


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_53 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_52 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_51 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_50 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_49 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_48 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_47 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_46 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_45 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_44 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_43 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_42 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_41 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_40 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_39 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_38 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_37 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_36 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_35 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_34 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_33 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_32 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_31 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_30 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_29 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_28 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_27 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_26 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_25 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module cla_adder_WIDTH32 ( a, b, ci, s, co );
  input [31:0] a;
  input [31:0] b;
  output [31:0] s;
  input ci;
  output co;
  wire   genblk1_g2_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5;
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
  LA4_66 genblk1_layer3 ( .g({1'b0, 1'b0, 1'b0, genblk1_g2_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, genblk1_ci2[1], SYNOPSYS_UNCONNECTED_5}) );
endmodule


module LA4_65 ( g, p, ci, G, P, co );
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
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
endmodule


module LA4_3 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
  AND4X1_RVT U7 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U8 ( .A1(g[0]), .A2(p[1]), .Y(n4) );
  OR2X1_RVT U9 ( .A1(g[1]), .A2(n4), .Y(n5) );
  AND2X1_RVT U10 ( .A1(p[2]), .A2(n5), .Y(n6) );
  OR2X1_RVT U11 ( .A1(g[2]), .A2(n6), .Y(n7) );
  AND2X1_RVT U12 ( .A1(p[3]), .A2(n7), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[3]), .A2(n8), .Y(G) );
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


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_21 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_20 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_19 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_18 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_17 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_16 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_15 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_14 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_13 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_12 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_11 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_10 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_9 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_23 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_8 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module cla_adder_WIDTH16_2 ( a, b, ci, s, co );
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
  LA4_65 genblk1_layer2 ( .g({1'b0, genblk1_g1}), .p({1'b0, genblk1_p1, 1'b0}), 
        .ci(1'b0), .co({genblk1_ci1[3:1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_61 ( g, p, ci, G, P, co );
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


module LA4_63 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_62 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_64 ( g, p, ci, G, P, co );
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


module LA4_60 ( g, p, ci, G, P, co );
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


module MFA_198 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_197 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_196 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_195 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_194 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_193 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_192 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_191 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_190 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_189 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_188 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_187 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_186 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_185 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_199 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_184 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
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

  MFA_184 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_185 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_186 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_187 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_188 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_189 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_190 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_191 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_192 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_193 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_194 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_195 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_196 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_197 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_198 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_199 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .s(s[15])
         );
  LA4_61 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1[0]), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_62 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_63 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), 
        .G(genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_64 genblk1_layer1_3_ ( .g({1'b0, g[14:12]}), .p({1'b0, p[14:12]}), .ci(
        genblk1_ci1[3]), .co(internal_ci[15:12]) );
  LA4_60 genblk1_layer2 ( .g({1'b0, genblk1_g1}), .p({1'b0, genblk1_p1, 1'b0}), 
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


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_5 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_4 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_3 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_2 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_1 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_7 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_0 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_54 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_6 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
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
  LA4_54 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
endmodule


module LA4_52 ( g, p, ci, G, P, co );
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


module LA4_53 ( g, p, ci, G, P, co );
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


module MFA_166 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_165 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_164 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_163 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_162 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_161 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_167 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_160 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_51 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_5 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_160 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_161 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_162 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_163 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_164 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_165 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_166 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_167 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_52 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_53 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_51 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
endmodule


module LA4_58 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_57 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3, n4, n5, n6, n7, n8;
  assign co[0] = ci;

  AND4X1_RVT U1 ( .A1(p[2]), .A2(p[1]), .A3(p[3]), .A4(p[0]), .Y(P) );
  AND2X1_RVT U2 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U3 ( .A1(g[1]), .A2(n1), .Y(n2) );
  AND2X1_RVT U4 ( .A1(p[2]), .A2(n2), .Y(n3) );
  OR2X1_RVT U5 ( .A1(g[2]), .A2(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(p[3]), .A2(n4), .Y(n5) );
  OR2X1_RVT U7 ( .A1(g[3]), .A2(n5), .Y(G) );
  AND2X1_RVT U8 ( .A1(ci), .A2(p[0]), .Y(n6) );
  OR2X1_RVT U9 ( .A1(g[0]), .A2(n6), .Y(co[1]) );
  AND2X1_RVT U10 ( .A1(p[1]), .A2(co[1]), .Y(n7) );
  OR2X1_RVT U11 ( .A1(g[1]), .A2(n7), .Y(co[2]) );
  AND2X1_RVT U12 ( .A1(p[2]), .A2(co[2]), .Y(n8) );
  OR2X1_RVT U13 ( .A1(g[2]), .A2(n8), .Y(co[3]) );
endmodule


module LA4_56 ( g, p, ci, G, P, co );
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


module LA4_59 ( g, p, ci, G, P, co );
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


module LA4_55 ( g, p, ci, G, P, co );
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


module MFA_182 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_181 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_180 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_179 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_178 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_177 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_176 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_175 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_174 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_173 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_172 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_171 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_170 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_169 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_183 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_168 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
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

  MFA_168 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_169 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_170 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_171 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_172 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_173 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_174 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_175 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .p(p[7]), .g(
        g[7]), .s(s[7]) );
  MFA_176 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(internal_ci[8]), .p(p[8]), .g(
        g[8]), .s(s[8]) );
  MFA_177 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(internal_ci[9]), .p(p[9]), .g(
        g[9]), .s(s[9]) );
  MFA_178 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(internal_ci[10]), .p(p[10]), 
        .g(g[10]), .s(s[10]) );
  MFA_179 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(internal_ci[11]), .p(p[11]), 
        .g(g[11]), .s(s[11]) );
  MFA_180 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(internal_ci[12]), .p(p[12]), 
        .g(g[12]), .s(s[12]) );
  MFA_181 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(internal_ci[13]), .p(p[13]), 
        .g(g[13]), .s(s[13]) );
  MFA_182 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(internal_ci[14]), .p(p[14]), 
        .g(g[14]), .s(s[14]) );
  MFA_183 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(internal_ci[15]), .s(s[15])
         );
  LA4_56 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1[0]), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_57 genblk1_layer1_1_ ( .g(g[7:4]), .p(p[7:4]), .ci(genblk1_ci1[1]), .G(
        genblk1_g1[1]), .P(genblk1_p1[1]), .co(internal_ci[7:4]) );
  LA4_58 genblk1_layer1_2_ ( .g(g[11:8]), .p(p[11:8]), .ci(genblk1_ci1[2]), 
        .G(genblk1_g1[2]), .P(genblk1_p1[2]), .co(internal_ci[11:8]) );
  LA4_59 genblk1_layer1_3_ ( .g({1'b0, g[14:12]}), .p({1'b0, p[14:12]}), .ci(
        genblk1_ci1[3]), .co(internal_ci[15:12]) );
  LA4_55 genblk1_layer2 ( .g({1'b0, genblk1_g1}), .p({1'b0, genblk1_p1, 1'b0}), 
        .ci(1'b0), .co({genblk1_ci1[3:1], SYNOPSYS_UNCONNECTED_2}) );
endmodule


module LA4_37 ( g, p, ci, G, P, co );
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


module LA4_38 ( g, p, ci, G, P, co );
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


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_125 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_124 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_123 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_122 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_121 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_127 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_120 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_36 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
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
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
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
  LA4_37 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_38 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_36 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
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


module MFA_134 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_133 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_132 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_131 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_130 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_129 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_135 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_128 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_39 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
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
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
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
  LA4_40 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_41 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_39 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
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


module LA4_44 ( g, p, ci, G, P, co );
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


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_141 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_140 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_139 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_138 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_137 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_143 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_136 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_42 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
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
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
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
  LA4_43 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_44 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_42 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
endmodule


module LA4_46 ( g, p, ci, G, P, co );
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
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(ci), .A2(p[0]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[0]), .A2(n1), .Y(co[1]) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(co[1]), .Y(n2) );
  OR2X1_RVT U4 ( .A1(g[1]), .A2(n2), .Y(co[2]) );
  AND2X1_RVT U5 ( .A1(p[2]), .A2(co[2]), .Y(n3) );
  OR2X1_RVT U6 ( .A1(g[2]), .A2(n3), .Y(co[3]) );
endmodule


module MFA_150 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_149 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_148 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_147 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_146 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_145 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_151 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_144 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_45 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
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
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

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
  MFA_151 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_46 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_47 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_45 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
endmodule


module LA4_49 ( g, p, ci, G, P, co );
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


module LA4_50 ( g, p, ci, G, P, co );
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


module MFA_158 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_157 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_156 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_155 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_154 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_153 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(a), .A2(b), .Y(g) );
  HADDX1_RVT U2 ( .A0(a), .B0(b), .SO(p) );
  HADDX1_RVT U3 ( .A0(ci), .B0(p), .SO(s) );
endmodule


module MFA_159 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  FADDX1_RVT U1 ( .A(a), .B(ci), .CI(b), .S(s) );
endmodule


module MFA_152 ( a, b, ci, p, g, s );
  input a, b, ci;
  output p, g, s;


  AND2X1_RVT U1 ( .A1(b), .A2(a), .Y(g) );
  HADDX1_RVT U2 ( .A0(b), .B0(a), .SO(s) );
endmodule


module LA4_48 ( g, p, ci, G, P, co );
  input [3:0] g;
  input [3:0] p;
  output [3:0] co;
  input ci;
  output G, P;

  assign co[1] = g[0];

endmodule


module cla_adder_WIDTH8_4 ( a, b, ci, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci;
  output co;
  wire   genblk1_g1_0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [7:0] internal_ci;
  wire   [6:1] p;
  wire   [6:0] g;
  wire   [1:0] genblk1_ci1;

  MFA_152 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(1'b0), .g(g[0]), .s(s[0]) );
  MFA_153 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(internal_ci[1]), .p(p[1]), .g(
        g[1]), .s(s[1]) );
  MFA_154 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(internal_ci[2]), .p(p[2]), .g(
        g[2]), .s(s[2]) );
  MFA_155 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(internal_ci[3]), .p(p[3]), .g(
        g[3]), .s(s[3]) );
  MFA_156 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(internal_ci[4]), .p(p[4]), .g(
        g[4]), .s(s[4]) );
  MFA_157 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(internal_ci[5]), .p(p[5]), .g(
        g[5]), .s(s[5]) );
  MFA_158 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(internal_ci[6]), .p(p[6]), .g(
        g[6]), .s(s[6]) );
  MFA_159 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(internal_ci[7]), .s(s[7]) );
  LA4_49 genblk1_layer1_0_ ( .g(g[3:0]), .p({p[3:1], 1'b0}), .ci(1'b0), .G(
        genblk1_g1_0_), .co({internal_ci[3:1], SYNOPSYS_UNCONNECTED_1}) );
  LA4_50 genblk1_layer1_1_ ( .g({1'b0, g[6:4]}), .p({1'b0, p[6:4]}), .ci(
        genblk1_ci1[1]), .co(internal_ci[7:4]) );
  LA4_48 genblk1_layer2 ( .g({1'b0, 1'b0, 1'b0, genblk1_g1_0_}), .p({1'b0, 
        1'b0, 1'b0, 1'b0}), .ci(1'b0), .co({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, genblk1_ci1[1], SYNOPSYS_UNCONNECTED_4}) );
endmodule


module vbw_cla_bsln ( a, b, ci, control, s, co );
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

  cla_adder_WIDTH64 add64 ( .a(a), .b(b), .ci(controlled_ci), .s({s64, s[7:0]}), .co(controlled_co) );
  cla_adder_WIDTH32 add32_1 ( .a(a[63:32]), .b(b[63:32]), .ci(1'b0), .s(s32)
         );
  cla_adder_WIDTH16_2 add16_3 ( .a(a[63:48]), .b(b[63:48]), .ci(1'b0), .s(
        s16[63:48]) );
  cla_adder_WIDTH16_1 add16_2 ( .a(a[47:32]), .b(b[47:32]), .ci(1'b0), .s(
        s16[47:32]) );
  cla_adder_WIDTH16_0 add16_1 ( .a(a[31:16]), .b(b[31:16]), .ci(1'b0), .s(
        s16[31:16]) );
  cla_adder_WIDTH8_6 add8_7 ( .a(a[63:56]), .b(b[63:56]), .ci(1'b0), .s(
        s8[63:56]) );
  cla_adder_WIDTH8_5 add8_6 ( .a(a[55:48]), .b(b[55:48]), .ci(1'b0), .s(
        s8[55:48]) );
  cla_adder_WIDTH8_4 add8_5 ( .a(a[47:40]), .b(b[47:40]), .ci(1'b0), .s(
        s8[47:40]) );
  cla_adder_WIDTH8_3 add8_4 ( .a(a[39:32]), .b(b[39:32]), .ci(1'b0), .s(
        s8[39:32]) );
  cla_adder_WIDTH8_2 add8_3 ( .a(a[31:24]), .b(b[31:24]), .ci(1'b0), .s(
        s8[31:24]) );
  cla_adder_WIDTH8_1 add8_2 ( .a(a[23:16]), .b(b[23:16]), .ci(1'b0), .s(
        s8[23:16]) );
  cla_adder_WIDTH8_0 add8_1 ( .a(a[15:8]), .b(b[15:8]), .ci(1'b0), .s(s8[15:8]) );
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

