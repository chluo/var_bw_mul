/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Fri Apr 21 16:52:45 2017
/////////////////////////////////////////////////////////////


module adder_WIDTH7_7 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_7 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_7 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_7 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_7 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_0 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_0 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_0 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_0 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_0 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_1 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_1 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_1 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_1 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_1 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_2 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_2 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_2 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_2 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_2 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_3 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_3 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_3 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_3 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_3 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_4 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_4 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_4 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_4 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_4 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_5 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_5 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_5 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_5 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_5 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module adder_WIDTH7_6 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6;

  FADDX1_RVT U1 ( .A(b[6]), .B(a[6]), .CI(n1), .CO(co), .S(s[6]) );
  FADDX1_RVT U2 ( .A(b[5]), .B(a[5]), .CI(n2), .CO(n1), .S(s[5]) );
  FADDX1_RVT U3 ( .A(b[4]), .B(a[4]), .CI(n3), .CO(n2), .S(s[4]) );
  FADDX1_RVT U4 ( .A(b[3]), .B(a[3]), .CI(n4), .CO(n3), .S(s[3]) );
  FADDX1_RVT U5 ( .A(b[2]), .B(a[2]), .CI(n5), .CO(n4), .S(s[2]) );
  FADDX1_RVT U6 ( .A(b[1]), .B(a[1]), .CI(n6), .CO(n5), .S(s[1]) );
  FADDX1_RVT U7 ( .A(ci), .B(b[0]), .CI(a[0]), .CO(n6), .S(s[0]) );
endmodule


module MFA_nco_6 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1;

  AND2X1_RVT U2 ( .A1(n1), .A2(control), .Y(co) );
  FADDX1_RVT U3 ( .A(a), .B(b), .CI(ci), .CO(n1), .S(s) );
endmodule


module adder_nco_WIDTH8_6 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  adder_WIDTH7_6 adder_inst ( .a(a[6:0]), .b(b[6:0]), .ci(ci), .s(s[6:0]), 
        .co(internal_carry) );
  MFA_nco_6 mfa_inst ( .a(a[7]), .b(b[7]), .ci(internal_carry), .control(
        control), .s(s[7]), .co(co) );
endmodule


module vbw_adder_nco ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   internal_control_3_, n2, n3, n4;
  wire   [8:0] internal_carry;

  adder_nco_WIDTH8_7 genblk1_0__adder_inst ( .a(a[7:0]), .b(b[7:0]), .ci(
        internal_carry[0]), .control(n2), .s(s[7:0]), .co(internal_carry[1])
         );
  adder_nco_WIDTH8_6 genblk1_1__adder_inst ( .a(a[15:8]), .b(b[15:8]), .ci(
        internal_carry[1]), .control(n3), .s(s[15:8]), .co(internal_carry[2])
         );
  adder_nco_WIDTH8_5 genblk1_2__adder_inst ( .a(a[23:16]), .b(b[23:16]), .ci(
        internal_carry[2]), .control(n2), .s(s[23:16]), .co(internal_carry[3])
         );
  adder_nco_WIDTH8_4 genblk1_3__adder_inst ( .a(a[31:24]), .b(b[31:24]), .ci(
        internal_carry[3]), .control(internal_control_3_), .s(s[31:24]), .co(
        internal_carry[4]) );
  adder_nco_WIDTH8_3 genblk1_4__adder_inst ( .a(a[39:32]), .b(b[39:32]), .ci(
        internal_carry[4]), .control(n2), .s(s[39:32]), .co(internal_carry[5])
         );
  adder_nco_WIDTH8_2 genblk1_5__adder_inst ( .a(a[47:40]), .b(b[47:40]), .ci(
        internal_carry[5]), .control(n3), .s(s[47:40]), .co(internal_carry[6])
         );
  adder_nco_WIDTH8_1 genblk1_6__adder_inst ( .a(a[55:48]), .b(b[55:48]), .ci(
        internal_carry[6]), .control(n2), .s(s[55:48]), .co(internal_carry[7])
         );
  adder_nco_WIDTH8_0 genblk1_7__adder_inst ( .a(a[63:56]), .b(b[63:56]), .ci(
        internal_carry[7]), .control(n3), .s(s[63:56]), .co(internal_carry[8])
         );
  INVX0_RVT U9 ( .A(control[1]), .Y(n3) );
  INVX0_RVT U10 ( .A(control[0]), .Y(n4) );
  OR2X1_RVT U11 ( .A1(n3), .A2(n4), .Y(n2) );
  AND2X1_RVT U12 ( .A1(n3), .A2(n4), .Y(internal_control_3_) );
  AND2X1_RVT U13 ( .A1(internal_control_3_), .A2(internal_carry[8]), .Y(co) );
  AND2X1_RVT U14 ( .A1(internal_control_3_), .A2(ci), .Y(internal_carry[0]) );
endmodule

