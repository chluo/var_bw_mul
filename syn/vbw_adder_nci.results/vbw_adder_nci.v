/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Wed Apr 26 19:40:50 2017
/////////////////////////////////////////////////////////////


module MFA_nci_7 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_WIDTH7_7 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module adder_nci_WIDTH8_7 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_7 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_7 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_0 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_0 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_0 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_0 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_0 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_1 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_1 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_1 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_1 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_1 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_2 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_2 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_2 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_2 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_2 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_3 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_3 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_3 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_3 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_3 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_4 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_4 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_4 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_4 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_4 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_5 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_5 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_5 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_5 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_5 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module adder_WIDTH7_6 ( a, b, ci, s, co );
  input [6:0] a;
  input [6:0] b;
  output [6:0] s;
  input ci;
  output co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  NAND2X0_RVT U1 ( .A1(b[0]), .A2(a[0]), .Y(n6) );
  OR2X1_RVT U2 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  AND2X1_RVT U3 ( .A1(n6), .A2(n1), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(ci), .Y(n5) );
  OR2X1_RVT U5 ( .A1(n2), .A2(ci), .Y(n3) );
  AND2X1_RVT U6 ( .A1(n5), .A2(n3), .Y(s[0]) );
  NAND2X0_RVT U7 ( .A1(b[1]), .A2(a[1]), .Y(n12) );
  OR2X1_RVT U8 ( .A1(b[1]), .A2(a[1]), .Y(n4) );
  AND2X1_RVT U9 ( .A1(n12), .A2(n4), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n6), .A2(n5), .Y(n7) );
  NAND2X0_RVT U11 ( .A1(n8), .A2(n7), .Y(n11) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n7), .Y(n9) );
  AND2X1_RVT U13 ( .A1(n11), .A2(n9), .Y(s[1]) );
  NAND2X0_RVT U14 ( .A1(b[2]), .A2(a[2]), .Y(n18) );
  OR2X1_RVT U15 ( .A1(b[2]), .A2(a[2]), .Y(n10) );
  AND2X1_RVT U16 ( .A1(n18), .A2(n10), .Y(n14) );
  NAND2X0_RVT U17 ( .A1(n12), .A2(n11), .Y(n13) );
  NAND2X0_RVT U18 ( .A1(n14), .A2(n13), .Y(n17) );
  OR2X1_RVT U19 ( .A1(n14), .A2(n13), .Y(n15) );
  AND2X1_RVT U20 ( .A1(n17), .A2(n15), .Y(s[2]) );
  NAND2X0_RVT U21 ( .A1(b[3]), .A2(a[3]), .Y(n24) );
  OR2X1_RVT U22 ( .A1(b[3]), .A2(a[3]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n16), .Y(n20) );
  NAND2X0_RVT U24 ( .A1(n18), .A2(n17), .Y(n19) );
  NAND2X0_RVT U25 ( .A1(n20), .A2(n19), .Y(n23) );
  OR2X1_RVT U26 ( .A1(n20), .A2(n19), .Y(n21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n21), .Y(s[3]) );
  NAND2X0_RVT U28 ( .A1(b[4]), .A2(a[4]), .Y(n30) );
  OR2X1_RVT U29 ( .A1(b[4]), .A2(a[4]), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n22), .Y(n26) );
  NAND2X0_RVT U31 ( .A1(n24), .A2(n23), .Y(n25) );
  NAND2X0_RVT U32 ( .A1(n26), .A2(n25), .Y(n29) );
  OR2X1_RVT U33 ( .A1(n26), .A2(n25), .Y(n27) );
  AND2X1_RVT U34 ( .A1(n29), .A2(n27), .Y(s[4]) );
  NAND2X0_RVT U35 ( .A1(b[5]), .A2(a[5]), .Y(n36) );
  OR2X1_RVT U36 ( .A1(b[5]), .A2(a[5]), .Y(n28) );
  AND2X1_RVT U37 ( .A1(n36), .A2(n28), .Y(n32) );
  NAND2X0_RVT U38 ( .A1(n30), .A2(n29), .Y(n31) );
  NAND2X0_RVT U39 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  AND2X1_RVT U41 ( .A1(n35), .A2(n33), .Y(s[5]) );
  NAND2X0_RVT U42 ( .A1(b[6]), .A2(a[6]), .Y(n37) );
  OR2X1_RVT U43 ( .A1(b[6]), .A2(a[6]), .Y(n34) );
  AND2X1_RVT U44 ( .A1(n37), .A2(n34), .Y(n39) );
  NAND2X0_RVT U45 ( .A1(n36), .A2(n35), .Y(n38) );
  NAND2X0_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  NAND2X0_RVT U47 ( .A1(n37), .A2(n41), .Y(co) );
  OR2X1_RVT U48 ( .A1(n39), .A2(n38), .Y(n40) );
  AND2X1_RVT U49 ( .A1(n41), .A2(n40), .Y(s[6]) );
endmodule


module MFA_nci_6 ( a, b, ci, control, s, co );
  input a, b, ci, control;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OR2X1_RVT U1 ( .A1(b), .A2(a), .Y(n7) );
  NAND2X0_RVT U2 ( .A1(b), .A2(a), .Y(n8) );
  NAND2X0_RVT U3 ( .A1(n7), .A2(n8), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(ci), .A2(control), .Y(n2) );
  MUX21X1_RVT U5 ( .A1(n7), .A2(n1), .S0(n2), .Y(n6) );
  INVX0_RVT U6 ( .A(n8), .Y(n4) );
  INVX0_RVT U7 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n3), .Y(n5) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n5), .Y(s) );
  NAND3X0_RVT U10 ( .A1(ci), .A2(control), .A3(n7), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n9), .A2(n8), .Y(co) );
endmodule


module adder_nci_WIDTH8_6 ( a, b, ci, control, s, co );
  input [7:0] a;
  input [7:0] b;
  output [7:0] s;
  input ci, control;
  output co;
  wire   internal_carry;

  MFA_nci_6 mfa_inst ( .a(a[0]), .b(b[0]), .ci(ci), .control(control), .s(s[0]), .co(internal_carry) );
  adder_WIDTH7_6 adder_inst ( .a(a[7:1]), .b(b[7:1]), .ci(internal_carry), .s(
        s[7:1]), .co(co) );
endmodule


module vbw_adder_nci ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;
  wire   internal_control_4_, n1, n2;
  wire   [8:0] internal_carry;

  adder_nci_WIDTH8_7 genblk1_0__adder_inst ( .a(a[7:0]), .b(b[7:0]), .ci(
        internal_carry[0]), .control(n2), .s(s[7:0]), .co(internal_carry[1])
         );
  adder_nci_WIDTH8_6 genblk1_1__adder_inst ( .a(a[15:8]), .b(b[15:8]), .ci(
        internal_carry[1]), .control(n1), .s(s[15:8]), .co(internal_carry[2])
         );
  adder_nci_WIDTH8_5 genblk1_2__adder_inst ( .a(a[23:16]), .b(b[23:16]), .ci(
        internal_carry[2]), .control(n2), .s(s[23:16]), .co(internal_carry[3])
         );
  adder_nci_WIDTH8_4 genblk1_3__adder_inst ( .a(a[31:24]), .b(b[31:24]), .ci(
        internal_carry[3]), .control(n1), .s(s[31:24]), .co(internal_carry[4])
         );
  adder_nci_WIDTH8_3 genblk1_4__adder_inst ( .a(a[39:32]), .b(b[39:32]), .ci(
        internal_carry[4]), .control(internal_control_4_), .s(s[39:32]), .co(
        internal_carry[5]) );
  adder_nci_WIDTH8_2 genblk1_5__adder_inst ( .a(a[47:40]), .b(b[47:40]), .ci(
        internal_carry[5]), .control(n1), .s(s[47:40]), .co(internal_carry[6])
         );
  adder_nci_WIDTH8_1 genblk1_6__adder_inst ( .a(a[55:48]), .b(b[55:48]), .ci(
        internal_carry[6]), .control(n2), .s(s[55:48]), .co(internal_carry[7])
         );
  adder_nci_WIDTH8_0 genblk1_7__adder_inst ( .a(a[63:56]), .b(b[63:56]), .ci(
        internal_carry[7]), .control(n1), .s(s[63:56]), .co(internal_carry[8])
         );
  INVX0_RVT U8 ( .A(control[1]), .Y(n2) );
  NOR2X0_RVT U9 ( .A1(control[1]), .A2(control[0]), .Y(internal_control_4_) );
  AND2X1_RVT U10 ( .A1(internal_control_4_), .A2(internal_carry[8]), .Y(co) );
  AND2X1_RVT U11 ( .A1(internal_control_4_), .A2(ci), .Y(internal_carry[0]) );
  NAND2X0_RVT U12 ( .A1(control[1]), .A2(control[0]), .Y(n1) );
endmodule

