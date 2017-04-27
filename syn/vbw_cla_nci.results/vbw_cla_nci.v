/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Wed Apr 26 19:44:04 2017
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


module LA2_30 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_62 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_1 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_0 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_5 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_4 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_3 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_2 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   n1, n2, n3;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_13 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_12 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_11 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_10 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_9 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_8 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_7 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_6 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_29 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_28 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_27 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_26 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_25 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_24 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_23 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_22 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_21 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_20 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_19 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_18 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_17 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_16 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_15 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_14 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_61 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_60 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_59 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_58 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_57 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_56 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_55 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_54 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_53 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_52 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_51 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_50 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_49 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_48 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_47 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_46 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_45 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_44 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_43 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_42 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_41 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_40 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_39 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_38 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_37 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_36 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_35 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_34 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_33 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_32 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
endmodule


module LA2_31 ( g, p, ci, G, P, co );
  input [1:0] g;
  input [1:0] p;
  output [1:0] co;
  input ci;
  output G, P;
  wire   ci, n1, n2, n3;
  assign co[0] = ci;

  AND2X1_RVT U1 ( .A1(g[0]), .A2(p[1]), .Y(n1) );
  OR2X1_RVT U2 ( .A1(g[1]), .A2(n1), .Y(G) );
  AND2X1_RVT U3 ( .A1(p[1]), .A2(p[0]), .Y(P) );
  INVX0_RVT U4 ( .A(g[0]), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(ci), .A2(p[0]), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n2), .Y(co[1]) );
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


module vbw_cla_nci ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   ci6_controlled_1_, ci_controlled, g7, p7, ci6_1_, n8, n9, n10, n11,
         n12, n13, n14, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7;
  wire   [63:0] ci1;
  wire   [63:0] p1;
  wire   [63:0] g1;
  wire   [31:0] ci2;
  wire   [31:0] g2;
  wire   [31:0] p2;
  wire   [15:0] ci3;
  wire   [15:0] g3;
  wire   [15:0] p3;
  wire   [7:1] ci4_controlled;
  wire   [7:0] g4;
  wire   [7:0] p4;
  wire   [3:1] ci5_controlled;
  wire   [3:0] g5;
  wire   [3:0] p5;
  wire   [7:1] ci4;
  wire   [1:0] g6;
  wire   [1:0] p6;
  wire   [3:1] ci5;

  MFA_0 mfa_inst_0_ ( .a(a[0]), .b(b[0]), .ci(ci1[0]), .p(p1[0]), .g(g1[0]), 
        .s(s[0]) );
  MFA_1 mfa_inst_1_ ( .a(a[1]), .b(b[1]), .ci(ci1[1]), .p(p1[1]), .g(g1[1]), 
        .s(s[1]) );
  MFA_2 mfa_inst_2_ ( .a(a[2]), .b(b[2]), .ci(ci1[2]), .p(p1[2]), .g(g1[2]), 
        .s(s[2]) );
  MFA_3 mfa_inst_3_ ( .a(a[3]), .b(b[3]), .ci(ci1[3]), .p(p1[3]), .g(g1[3]), 
        .s(s[3]) );
  MFA_4 mfa_inst_4_ ( .a(a[4]), .b(b[4]), .ci(ci1[4]), .p(p1[4]), .g(g1[4]), 
        .s(s[4]) );
  MFA_5 mfa_inst_5_ ( .a(a[5]), .b(b[5]), .ci(ci1[5]), .p(p1[5]), .g(g1[5]), 
        .s(s[5]) );
  MFA_6 mfa_inst_6_ ( .a(a[6]), .b(b[6]), .ci(ci1[6]), .p(p1[6]), .g(g1[6]), 
        .s(s[6]) );
  MFA_7 mfa_inst_7_ ( .a(a[7]), .b(b[7]), .ci(ci1[7]), .p(p1[7]), .g(g1[7]), 
        .s(s[7]) );
  MFA_8 mfa_inst_8_ ( .a(a[8]), .b(b[8]), .ci(ci1[8]), .p(p1[8]), .g(g1[8]), 
        .s(s[8]) );
  MFA_9 mfa_inst_9_ ( .a(a[9]), .b(b[9]), .ci(ci1[9]), .p(p1[9]), .g(g1[9]), 
        .s(s[9]) );
  MFA_10 mfa_inst_10_ ( .a(a[10]), .b(b[10]), .ci(ci1[10]), .p(p1[10]), .g(
        g1[10]), .s(s[10]) );
  MFA_11 mfa_inst_11_ ( .a(a[11]), .b(b[11]), .ci(ci1[11]), .p(p1[11]), .g(
        g1[11]), .s(s[11]) );
  MFA_12 mfa_inst_12_ ( .a(a[12]), .b(b[12]), .ci(ci1[12]), .p(p1[12]), .g(
        g1[12]), .s(s[12]) );
  MFA_13 mfa_inst_13_ ( .a(a[13]), .b(b[13]), .ci(ci1[13]), .p(p1[13]), .g(
        g1[13]), .s(s[13]) );
  MFA_14 mfa_inst_14_ ( .a(a[14]), .b(b[14]), .ci(ci1[14]), .p(p1[14]), .g(
        g1[14]), .s(s[14]) );
  MFA_15 mfa_inst_15_ ( .a(a[15]), .b(b[15]), .ci(ci1[15]), .p(p1[15]), .g(
        g1[15]), .s(s[15]) );
  MFA_16 mfa_inst_16_ ( .a(a[16]), .b(b[16]), .ci(ci1[16]), .p(p1[16]), .g(
        g1[16]), .s(s[16]) );
  MFA_17 mfa_inst_17_ ( .a(a[17]), .b(b[17]), .ci(ci1[17]), .p(p1[17]), .g(
        g1[17]), .s(s[17]) );
  MFA_18 mfa_inst_18_ ( .a(a[18]), .b(b[18]), .ci(ci1[18]), .p(p1[18]), .g(
        g1[18]), .s(s[18]) );
  MFA_19 mfa_inst_19_ ( .a(a[19]), .b(b[19]), .ci(ci1[19]), .p(p1[19]), .g(
        g1[19]), .s(s[19]) );
  MFA_20 mfa_inst_20_ ( .a(a[20]), .b(b[20]), .ci(ci1[20]), .p(p1[20]), .g(
        g1[20]), .s(s[20]) );
  MFA_21 mfa_inst_21_ ( .a(a[21]), .b(b[21]), .ci(ci1[21]), .p(p1[21]), .g(
        g1[21]), .s(s[21]) );
  MFA_22 mfa_inst_22_ ( .a(a[22]), .b(b[22]), .ci(ci1[22]), .p(p1[22]), .g(
        g1[22]), .s(s[22]) );
  MFA_23 mfa_inst_23_ ( .a(a[23]), .b(b[23]), .ci(ci1[23]), .p(p1[23]), .g(
        g1[23]), .s(s[23]) );
  MFA_24 mfa_inst_24_ ( .a(a[24]), .b(b[24]), .ci(ci1[24]), .p(p1[24]), .g(
        g1[24]), .s(s[24]) );
  MFA_25 mfa_inst_25_ ( .a(a[25]), .b(b[25]), .ci(ci1[25]), .p(p1[25]), .g(
        g1[25]), .s(s[25]) );
  MFA_26 mfa_inst_26_ ( .a(a[26]), .b(b[26]), .ci(ci1[26]), .p(p1[26]), .g(
        g1[26]), .s(s[26]) );
  MFA_27 mfa_inst_27_ ( .a(a[27]), .b(b[27]), .ci(ci1[27]), .p(p1[27]), .g(
        g1[27]), .s(s[27]) );
  MFA_28 mfa_inst_28_ ( .a(a[28]), .b(b[28]), .ci(ci1[28]), .p(p1[28]), .g(
        g1[28]), .s(s[28]) );
  MFA_29 mfa_inst_29_ ( .a(a[29]), .b(b[29]), .ci(ci1[29]), .p(p1[29]), .g(
        g1[29]), .s(s[29]) );
  MFA_30 mfa_inst_30_ ( .a(a[30]), .b(b[30]), .ci(ci1[30]), .p(p1[30]), .g(
        g1[30]), .s(s[30]) );
  MFA_31 mfa_inst_31_ ( .a(a[31]), .b(b[31]), .ci(ci1[31]), .p(p1[31]), .g(
        g1[31]), .s(s[31]) );
  MFA_32 mfa_inst_32_ ( .a(a[32]), .b(b[32]), .ci(ci1[32]), .p(p1[32]), .g(
        g1[32]), .s(s[32]) );
  MFA_33 mfa_inst_33_ ( .a(a[33]), .b(b[33]), .ci(ci1[33]), .p(p1[33]), .g(
        g1[33]), .s(s[33]) );
  MFA_34 mfa_inst_34_ ( .a(a[34]), .b(b[34]), .ci(ci1[34]), .p(p1[34]), .g(
        g1[34]), .s(s[34]) );
  MFA_35 mfa_inst_35_ ( .a(a[35]), .b(b[35]), .ci(ci1[35]), .p(p1[35]), .g(
        g1[35]), .s(s[35]) );
  MFA_36 mfa_inst_36_ ( .a(a[36]), .b(b[36]), .ci(ci1[36]), .p(p1[36]), .g(
        g1[36]), .s(s[36]) );
  MFA_37 mfa_inst_37_ ( .a(a[37]), .b(b[37]), .ci(ci1[37]), .p(p1[37]), .g(
        g1[37]), .s(s[37]) );
  MFA_38 mfa_inst_38_ ( .a(a[38]), .b(b[38]), .ci(ci1[38]), .p(p1[38]), .g(
        g1[38]), .s(s[38]) );
  MFA_39 mfa_inst_39_ ( .a(a[39]), .b(b[39]), .ci(ci1[39]), .p(p1[39]), .g(
        g1[39]), .s(s[39]) );
  MFA_40 mfa_inst_40_ ( .a(a[40]), .b(b[40]), .ci(ci1[40]), .p(p1[40]), .g(
        g1[40]), .s(s[40]) );
  MFA_41 mfa_inst_41_ ( .a(a[41]), .b(b[41]), .ci(ci1[41]), .p(p1[41]), .g(
        g1[41]), .s(s[41]) );
  MFA_42 mfa_inst_42_ ( .a(a[42]), .b(b[42]), .ci(ci1[42]), .p(p1[42]), .g(
        g1[42]), .s(s[42]) );
  MFA_43 mfa_inst_43_ ( .a(a[43]), .b(b[43]), .ci(ci1[43]), .p(p1[43]), .g(
        g1[43]), .s(s[43]) );
  MFA_44 mfa_inst_44_ ( .a(a[44]), .b(b[44]), .ci(ci1[44]), .p(p1[44]), .g(
        g1[44]), .s(s[44]) );
  MFA_45 mfa_inst_45_ ( .a(a[45]), .b(b[45]), .ci(ci1[45]), .p(p1[45]), .g(
        g1[45]), .s(s[45]) );
  MFA_46 mfa_inst_46_ ( .a(a[46]), .b(b[46]), .ci(ci1[46]), .p(p1[46]), .g(
        g1[46]), .s(s[46]) );
  MFA_47 mfa_inst_47_ ( .a(a[47]), .b(b[47]), .ci(ci1[47]), .p(p1[47]), .g(
        g1[47]), .s(s[47]) );
  MFA_48 mfa_inst_48_ ( .a(a[48]), .b(b[48]), .ci(ci1[48]), .p(p1[48]), .g(
        g1[48]), .s(s[48]) );
  MFA_49 mfa_inst_49_ ( .a(a[49]), .b(b[49]), .ci(ci1[49]), .p(p1[49]), .g(
        g1[49]), .s(s[49]) );
  MFA_50 mfa_inst_50_ ( .a(a[50]), .b(b[50]), .ci(ci1[50]), .p(p1[50]), .g(
        g1[50]), .s(s[50]) );
  MFA_51 mfa_inst_51_ ( .a(a[51]), .b(b[51]), .ci(ci1[51]), .p(p1[51]), .g(
        g1[51]), .s(s[51]) );
  MFA_52 mfa_inst_52_ ( .a(a[52]), .b(b[52]), .ci(ci1[52]), .p(p1[52]), .g(
        g1[52]), .s(s[52]) );
  MFA_53 mfa_inst_53_ ( .a(a[53]), .b(b[53]), .ci(ci1[53]), .p(p1[53]), .g(
        g1[53]), .s(s[53]) );
  MFA_54 mfa_inst_54_ ( .a(a[54]), .b(b[54]), .ci(ci1[54]), .p(p1[54]), .g(
        g1[54]), .s(s[54]) );
  MFA_55 mfa_inst_55_ ( .a(a[55]), .b(b[55]), .ci(ci1[55]), .p(p1[55]), .g(
        g1[55]), .s(s[55]) );
  MFA_56 mfa_inst_56_ ( .a(a[56]), .b(b[56]), .ci(ci1[56]), .p(p1[56]), .g(
        g1[56]), .s(s[56]) );
  MFA_57 mfa_inst_57_ ( .a(a[57]), .b(b[57]), .ci(ci1[57]), .p(p1[57]), .g(
        g1[57]), .s(s[57]) );
  MFA_58 mfa_inst_58_ ( .a(a[58]), .b(b[58]), .ci(ci1[58]), .p(p1[58]), .g(
        g1[58]), .s(s[58]) );
  MFA_59 mfa_inst_59_ ( .a(a[59]), .b(b[59]), .ci(ci1[59]), .p(p1[59]), .g(
        g1[59]), .s(s[59]) );
  MFA_60 mfa_inst_60_ ( .a(a[60]), .b(b[60]), .ci(ci1[60]), .p(p1[60]), .g(
        g1[60]), .s(s[60]) );
  MFA_61 mfa_inst_61_ ( .a(a[61]), .b(b[61]), .ci(ci1[61]), .p(p1[61]), .g(
        g1[61]), .s(s[61]) );
  MFA_62 mfa_inst_62_ ( .a(a[62]), .b(b[62]), .ci(ci1[62]), .p(p1[62]), .g(
        g1[62]), .s(s[62]) );
  MFA_63 mfa_inst_63_ ( .a(a[63]), .b(b[63]), .ci(ci1[63]), .p(p1[63]), .g(
        g1[63]), .s(s[63]) );
  LA2_30 layer1_0_ ( .g(g1[1:0]), .p(p1[1:0]), .ci(ci2[0]), .G(g2[0]), .P(
        p2[0]), .co(ci1[1:0]) );
  LA2_31 layer1_1_ ( .g(g1[3:2]), .p(p1[3:2]), .ci(ci2[1]), .G(g2[1]), .P(
        p2[1]), .co(ci1[3:2]) );
  LA2_32 layer1_2_ ( .g(g1[5:4]), .p(p1[5:4]), .ci(ci2[2]), .G(g2[2]), .P(
        p2[2]), .co(ci1[5:4]) );
  LA2_33 layer1_3_ ( .g(g1[7:6]), .p(p1[7:6]), .ci(ci2[3]), .G(g2[3]), .P(
        p2[3]), .co(ci1[7:6]) );
  LA2_34 layer1_4_ ( .g(g1[9:8]), .p(p1[9:8]), .ci(ci2[4]), .G(g2[4]), .P(
        p2[4]), .co(ci1[9:8]) );
  LA2_35 layer1_5_ ( .g(g1[11:10]), .p(p1[11:10]), .ci(ci2[5]), .G(g2[5]), .P(
        p2[5]), .co(ci1[11:10]) );
  LA2_36 layer1_6_ ( .g(g1[13:12]), .p(p1[13:12]), .ci(ci2[6]), .G(g2[6]), .P(
        p2[6]), .co(ci1[13:12]) );
  LA2_37 layer1_7_ ( .g(g1[15:14]), .p(p1[15:14]), .ci(ci2[7]), .G(g2[7]), .P(
        p2[7]), .co(ci1[15:14]) );
  LA2_38 layer1_8_ ( .g(g1[17:16]), .p(p1[17:16]), .ci(ci2[8]), .G(g2[8]), .P(
        p2[8]), .co(ci1[17:16]) );
  LA2_39 layer1_9_ ( .g(g1[19:18]), .p(p1[19:18]), .ci(ci2[9]), .G(g2[9]), .P(
        p2[9]), .co(ci1[19:18]) );
  LA2_40 layer1_10_ ( .g(g1[21:20]), .p(p1[21:20]), .ci(ci2[10]), .G(g2[10]), 
        .P(p2[10]), .co(ci1[21:20]) );
  LA2_41 layer1_11_ ( .g(g1[23:22]), .p(p1[23:22]), .ci(ci2[11]), .G(g2[11]), 
        .P(p2[11]), .co(ci1[23:22]) );
  LA2_42 layer1_12_ ( .g(g1[25:24]), .p(p1[25:24]), .ci(ci2[12]), .G(g2[12]), 
        .P(p2[12]), .co(ci1[25:24]) );
  LA2_43 layer1_13_ ( .g(g1[27:26]), .p(p1[27:26]), .ci(ci2[13]), .G(g2[13]), 
        .P(p2[13]), .co(ci1[27:26]) );
  LA2_44 layer1_14_ ( .g(g1[29:28]), .p(p1[29:28]), .ci(ci2[14]), .G(g2[14]), 
        .P(p2[14]), .co(ci1[29:28]) );
  LA2_45 layer1_15_ ( .g(g1[31:30]), .p(p1[31:30]), .ci(ci2[15]), .G(g2[15]), 
        .P(p2[15]), .co(ci1[31:30]) );
  LA2_46 layer1_16_ ( .g(g1[33:32]), .p(p1[33:32]), .ci(ci2[16]), .G(g2[16]), 
        .P(p2[16]), .co(ci1[33:32]) );
  LA2_47 layer1_17_ ( .g(g1[35:34]), .p(p1[35:34]), .ci(ci2[17]), .G(g2[17]), 
        .P(p2[17]), .co(ci1[35:34]) );
  LA2_48 layer1_18_ ( .g(g1[37:36]), .p(p1[37:36]), .ci(ci2[18]), .G(g2[18]), 
        .P(p2[18]), .co(ci1[37:36]) );
  LA2_49 layer1_19_ ( .g(g1[39:38]), .p(p1[39:38]), .ci(ci2[19]), .G(g2[19]), 
        .P(p2[19]), .co(ci1[39:38]) );
  LA2_50 layer1_20_ ( .g(g1[41:40]), .p(p1[41:40]), .ci(ci2[20]), .G(g2[20]), 
        .P(p2[20]), .co(ci1[41:40]) );
  LA2_51 layer1_21_ ( .g(g1[43:42]), .p(p1[43:42]), .ci(ci2[21]), .G(g2[21]), 
        .P(p2[21]), .co(ci1[43:42]) );
  LA2_52 layer1_22_ ( .g(g1[45:44]), .p(p1[45:44]), .ci(ci2[22]), .G(g2[22]), 
        .P(p2[22]), .co(ci1[45:44]) );
  LA2_53 layer1_23_ ( .g(g1[47:46]), .p(p1[47:46]), .ci(ci2[23]), .G(g2[23]), 
        .P(p2[23]), .co(ci1[47:46]) );
  LA2_54 layer1_24_ ( .g(g1[49:48]), .p(p1[49:48]), .ci(ci2[24]), .G(g2[24]), 
        .P(p2[24]), .co(ci1[49:48]) );
  LA2_55 layer1_25_ ( .g(g1[51:50]), .p(p1[51:50]), .ci(ci2[25]), .G(g2[25]), 
        .P(p2[25]), .co(ci1[51:50]) );
  LA2_56 layer1_26_ ( .g(g1[53:52]), .p(p1[53:52]), .ci(ci2[26]), .G(g2[26]), 
        .P(p2[26]), .co(ci1[53:52]) );
  LA2_57 layer1_27_ ( .g(g1[55:54]), .p(p1[55:54]), .ci(ci2[27]), .G(g2[27]), 
        .P(p2[27]), .co(ci1[55:54]) );
  LA2_58 layer1_28_ ( .g(g1[57:56]), .p(p1[57:56]), .ci(ci2[28]), .G(g2[28]), 
        .P(p2[28]), .co(ci1[57:56]) );
  LA2_59 layer1_29_ ( .g(g1[59:58]), .p(p1[59:58]), .ci(ci2[29]), .G(g2[29]), 
        .P(p2[29]), .co(ci1[59:58]) );
  LA2_60 layer1_30_ ( .g(g1[61:60]), .p(p1[61:60]), .ci(ci2[30]), .G(g2[30]), 
        .P(p2[30]), .co(ci1[61:60]) );
  LA2_61 layer1_31_ ( .g(g1[63:62]), .p(p1[63:62]), .ci(ci2[31]), .G(g2[31]), 
        .P(p2[31]), .co(ci1[63:62]) );
  LA2_14 layer2_0_ ( .g(g2[1:0]), .p(p2[1:0]), .ci(ci3[0]), .G(g3[0]), .P(
        p3[0]), .co(ci2[1:0]) );
  LA2_15 layer2_1_ ( .g(g2[3:2]), .p(p2[3:2]), .ci(ci3[1]), .G(g3[1]), .P(
        p3[1]), .co(ci2[3:2]) );
  LA2_16 layer2_2_ ( .g(g2[5:4]), .p(p2[5:4]), .ci(ci3[2]), .G(g3[2]), .P(
        p3[2]), .co(ci2[5:4]) );
  LA2_17 layer2_3_ ( .g(g2[7:6]), .p(p2[7:6]), .ci(ci3[3]), .G(g3[3]), .P(
        p3[3]), .co(ci2[7:6]) );
  LA2_18 layer2_4_ ( .g(g2[9:8]), .p(p2[9:8]), .ci(ci3[4]), .G(g3[4]), .P(
        p3[4]), .co(ci2[9:8]) );
  LA2_19 layer2_5_ ( .g(g2[11:10]), .p(p2[11:10]), .ci(ci3[5]), .G(g3[5]), .P(
        p3[5]), .co(ci2[11:10]) );
  LA2_20 layer2_6_ ( .g(g2[13:12]), .p(p2[13:12]), .ci(ci3[6]), .G(g3[6]), .P(
        p3[6]), .co(ci2[13:12]) );
  LA2_21 layer2_7_ ( .g(g2[15:14]), .p(p2[15:14]), .ci(ci3[7]), .G(g3[7]), .P(
        p3[7]), .co(ci2[15:14]) );
  LA2_22 layer2_8_ ( .g(g2[17:16]), .p(p2[17:16]), .ci(ci3[8]), .G(g3[8]), .P(
        p3[8]), .co(ci2[17:16]) );
  LA2_23 layer2_9_ ( .g(g2[19:18]), .p(p2[19:18]), .ci(ci3[9]), .G(g3[9]), .P(
        p3[9]), .co(ci2[19:18]) );
  LA2_24 layer2_10_ ( .g(g2[21:20]), .p(p2[21:20]), .ci(ci3[10]), .G(g3[10]), 
        .P(p3[10]), .co(ci2[21:20]) );
  LA2_25 layer2_11_ ( .g(g2[23:22]), .p(p2[23:22]), .ci(ci3[11]), .G(g3[11]), 
        .P(p3[11]), .co(ci2[23:22]) );
  LA2_26 layer2_12_ ( .g(g2[25:24]), .p(p2[25:24]), .ci(ci3[12]), .G(g3[12]), 
        .P(p3[12]), .co(ci2[25:24]) );
  LA2_27 layer2_13_ ( .g(g2[27:26]), .p(p2[27:26]), .ci(ci3[13]), .G(g3[13]), 
        .P(p3[13]), .co(ci2[27:26]) );
  LA2_28 layer2_14_ ( .g(g2[29:28]), .p(p2[29:28]), .ci(ci3[14]), .G(g3[14]), 
        .P(p3[14]), .co(ci2[29:28]) );
  LA2_29 layer2_15_ ( .g(g2[31:30]), .p(p2[31:30]), .ci(ci3[15]), .G(g3[15]), 
        .P(p3[15]), .co(ci2[31:30]) );
  LA2_6 layer3_0_ ( .g(g3[1:0]), .p(p3[1:0]), .ci(ci_controlled), .G(g4[0]), 
        .P(p4[0]), .co(ci3[1:0]) );
  LA2_7 layer3_1_ ( .g(g3[3:2]), .p(p3[3:2]), .ci(ci4_controlled[1]), .G(g4[1]), .P(p4[1]), .co(ci3[3:2]) );
  LA2_8 layer3_2_ ( .g(g3[5:4]), .p(p3[5:4]), .ci(ci4_controlled[2]), .G(g4[2]), .P(p4[2]), .co(ci3[5:4]) );
  LA2_9 layer3_3_ ( .g(g3[7:6]), .p(p3[7:6]), .ci(ci4_controlled[3]), .G(g4[3]), .P(p4[3]), .co(ci3[7:6]) );
  LA2_10 layer3_4_ ( .g(g3[9:8]), .p(p3[9:8]), .ci(ci4_controlled[4]), .G(
        g4[4]), .P(p4[4]), .co(ci3[9:8]) );
  LA2_11 layer3_5_ ( .g(g3[11:10]), .p(p3[11:10]), .ci(ci4_controlled[5]), .G(
        g4[5]), .P(p4[5]), .co(ci3[11:10]) );
  LA2_12 layer3_6_ ( .g(g3[13:12]), .p(p3[13:12]), .ci(ci4_controlled[6]), .G(
        g4[6]), .P(p4[6]), .co(ci3[13:12]) );
  LA2_13 layer3_7_ ( .g(g3[15:14]), .p(p3[15:14]), .ci(ci4_controlled[7]), .G(
        g4[7]), .P(p4[7]), .co(ci3[15:14]) );
  LA2_2 layer4_0_ ( .g(g4[1:0]), .p(p4[1:0]), .ci(ci_controlled), .G(g5[0]), 
        .P(p5[0]), .co({ci4[1], SYNOPSYS_UNCONNECTED_1}) );
  LA2_3 layer4_1_ ( .g(g4[3:2]), .p(p4[3:2]), .ci(ci5_controlled[1]), .G(g5[1]), .P(p5[1]), .co({ci4[3], SYNOPSYS_UNCONNECTED_2}) );
  LA2_4 layer4_2_ ( .g(g4[5:4]), .p(p4[5:4]), .ci(ci5_controlled[2]), .G(g5[2]), .P(p5[2]), .co({ci4[5], SYNOPSYS_UNCONNECTED_3}) );
  LA2_5 layer4_3_ ( .g(g4[7:6]), .p(p4[7:6]), .ci(ci5_controlled[3]), .G(g5[3]), .P(p5[3]), .co({ci4[7], SYNOPSYS_UNCONNECTED_4}) );
  LA2_0 layer5_0_ ( .g(g5[1:0]), .p(p5[1:0]), .ci(ci_controlled), .G(g6[0]), 
        .P(p6[0]), .co({ci5[1], SYNOPSYS_UNCONNECTED_5}) );
  LA2_1 layer5_1_ ( .g(g5[3:2]), .p(p5[3:2]), .ci(ci6_controlled_1_), .G(g6[1]), .P(p6[1]), .co({ci5[3], SYNOPSYS_UNCONNECTED_6}) );
  LA2_62 layer6 ( .g(g6), .p(p6), .ci(ci_controlled), .G(g7), .P(p7), .co({
        ci6_1_, SYNOPSYS_UNCONNECTED_7}) );
  INVX0_RVT U25 ( .A(control[1]), .Y(n11) );
  INVX0_RVT U26 ( .A(control[0]), .Y(n13) );
  AND3X1_RVT U27 ( .A1(ci), .A2(n11), .A3(n13), .Y(ci_controlled) );
  NAND3X0_RVT U28 ( .A1(n13), .A2(g7), .A3(n11), .Y(n9) );
  NAND2X0_RVT U29 ( .A1(ci_controlled), .A2(p7), .Y(n8) );
  NAND2X0_RVT U30 ( .A1(n9), .A2(n8), .Y(co) );
  NAND2X0_RVT U31 ( .A1(control[1]), .A2(control[0]), .Y(n12) );
  AND2X1_RVT U32 ( .A1(ci4[1]), .A2(n12), .Y(ci4_controlled[1]) );
  AND2X1_RVT U33 ( .A1(ci5[1]), .A2(n11), .Y(ci4_controlled[2]) );
  AND2X1_RVT U34 ( .A1(ci4[3]), .A2(n12), .Y(ci4_controlled[3]) );
  NAND2X0_RVT U35 ( .A1(n11), .A2(control[0]), .Y(n10) );
  AND2X1_RVT U36 ( .A1(n10), .A2(ci6_1_), .Y(ci6_controlled_1_) );
  AND2X1_RVT U37 ( .A1(ci6_controlled_1_), .A2(n11), .Y(ci4_controlled[4]) );
  AND2X1_RVT U38 ( .A1(ci4[5]), .A2(n12), .Y(ci4_controlled[5]) );
  AND2X1_RVT U39 ( .A1(ci5[3]), .A2(n11), .Y(ci4_controlled[6]) );
  AND2X1_RVT U40 ( .A1(ci4[7]), .A2(n12), .Y(ci4_controlled[7]) );
  NAND2X0_RVT U41 ( .A1(control[1]), .A2(n13), .Y(n14) );
  AND2X1_RVT U42 ( .A1(ci5[1]), .A2(n14), .Y(ci5_controlled[1]) );
  AND2X1_RVT U43 ( .A1(ci6_controlled_1_), .A2(n14), .Y(ci5_controlled[2]) );
  AND2X1_RVT U44 ( .A1(ci5[3]), .A2(n14), .Y(ci5_controlled[3]) );
endmodule

