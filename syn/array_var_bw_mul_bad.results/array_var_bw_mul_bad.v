/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Sun Apr 16 14:47:21 2017
/////////////////////////////////////////////////////////////


module array_fix_bw_mul ( a, b, p );
  input [15:0] a;
  input [15:0] b;
  output [31:0] p;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706;

  AND2X1_RVT U1 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
  AND2X1_RVT U2 ( .A1(b[0]), .A2(a[15]), .Y(n45) );
  AND2X1_RVT U3 ( .A1(a[13]), .A2(b[2]), .Y(n44) );
  AND2X1_RVT U4 ( .A1(b[1]), .A2(a[14]), .Y(n43) );
  AND2X1_RVT U5 ( .A1(b[1]), .A2(a[15]), .Y(n41) );
  AND2X1_RVT U6 ( .A1(a[14]), .A2(b[2]), .Y(n40) );
  AND2X1_RVT U7 ( .A1(a[15]), .A2(b[2]), .Y(n38) );
  AND2X1_RVT U8 ( .A1(a[14]), .A2(b[3]), .Y(n37) );
  AND2X1_RVT U9 ( .A1(a[15]), .A2(b[3]), .Y(n35) );
  AND2X1_RVT U10 ( .A1(a[14]), .A2(b[4]), .Y(n34) );
  AND2X1_RVT U11 ( .A1(a[15]), .A2(b[4]), .Y(n32) );
  AND2X1_RVT U12 ( .A1(a[14]), .A2(b[5]), .Y(n31) );
  AND2X1_RVT U13 ( .A1(a[15]), .A2(b[5]), .Y(n29) );
  AND2X1_RVT U14 ( .A1(a[14]), .A2(b[6]), .Y(n28) );
  AND2X1_RVT U15 ( .A1(a[15]), .A2(b[6]), .Y(n26) );
  AND2X1_RVT U16 ( .A1(a[14]), .A2(b[7]), .Y(n25) );
  AND2X1_RVT U17 ( .A1(a[15]), .A2(b[7]), .Y(n23) );
  AND2X1_RVT U18 ( .A1(a[14]), .A2(b[8]), .Y(n22) );
  AND2X1_RVT U19 ( .A1(a[15]), .A2(b[8]), .Y(n20) );
  AND2X1_RVT U20 ( .A1(a[14]), .A2(b[9]), .Y(n19) );
  AND2X1_RVT U21 ( .A1(a[15]), .A2(b[9]), .Y(n17) );
  AND2X1_RVT U22 ( .A1(a[14]), .A2(b[10]), .Y(n16) );
  AND2X1_RVT U23 ( .A1(a[15]), .A2(b[10]), .Y(n14) );
  AND2X1_RVT U24 ( .A1(a[14]), .A2(b[11]), .Y(n13) );
  AND2X1_RVT U25 ( .A1(a[15]), .A2(b[11]), .Y(n11) );
  AND2X1_RVT U26 ( .A1(a[14]), .A2(b[12]), .Y(n10) );
  AND2X1_RVT U27 ( .A1(a[15]), .A2(b[12]), .Y(n8) );
  AND2X1_RVT U28 ( .A1(a[14]), .A2(b[13]), .Y(n7) );
  AND2X1_RVT U29 ( .A1(a[15]), .A2(b[13]), .Y(n5) );
  AND2X1_RVT U30 ( .A1(a[14]), .A2(b[14]), .Y(n4) );
  AND2X1_RVT U31 ( .A1(a[15]), .A2(b[14]), .Y(n2) );
  AND2X1_RVT U32 ( .A1(b[15]), .A2(a[14]), .Y(n1) );
  FADDX1_RVT U33 ( .A(n3), .B(n2), .CI(n1), .CO(n633), .S(n637) );
  FADDX1_RVT U34 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n48) );
  AND2X1_RVT U35 ( .A1(b[15]), .A2(a[13]), .Y(n47) );
  FADDX1_RVT U36 ( .A(n9), .B(n8), .CI(n7), .CO(n6), .S(n51) );
  AND2X1_RVT U37 ( .A1(b[14]), .A2(a[13]), .Y(n50) );
  FADDX1_RVT U38 ( .A(n12), .B(n11), .CI(n10), .CO(n9), .S(n54) );
  AND2X1_RVT U39 ( .A1(a[13]), .A2(b[13]), .Y(n53) );
  FADDX1_RVT U40 ( .A(n15), .B(n14), .CI(n13), .CO(n12), .S(n57) );
  AND2X1_RVT U41 ( .A1(a[13]), .A2(b[12]), .Y(n56) );
  FADDX1_RVT U42 ( .A(n18), .B(n17), .CI(n16), .CO(n15), .S(n60) );
  AND2X1_RVT U43 ( .A1(a[13]), .A2(b[11]), .Y(n59) );
  FADDX1_RVT U44 ( .A(n21), .B(n20), .CI(n19), .CO(n18), .S(n63) );
  AND2X1_RVT U45 ( .A1(a[13]), .A2(b[10]), .Y(n62) );
  FADDX1_RVT U46 ( .A(n24), .B(n23), .CI(n22), .CO(n21), .S(n66) );
  AND2X1_RVT U47 ( .A1(a[13]), .A2(b[9]), .Y(n65) );
  FADDX1_RVT U48 ( .A(n27), .B(n26), .CI(n25), .CO(n24), .S(n69) );
  AND2X1_RVT U49 ( .A1(a[13]), .A2(b[8]), .Y(n68) );
  FADDX1_RVT U50 ( .A(n30), .B(n29), .CI(n28), .CO(n27), .S(n72) );
  AND2X1_RVT U51 ( .A1(a[13]), .A2(b[7]), .Y(n71) );
  FADDX1_RVT U52 ( .A(n33), .B(n32), .CI(n31), .CO(n30), .S(n75) );
  AND2X1_RVT U53 ( .A1(a[13]), .A2(b[6]), .Y(n74) );
  FADDX1_RVT U54 ( .A(n36), .B(n35), .CI(n34), .CO(n33), .S(n78) );
  AND2X1_RVT U55 ( .A1(a[13]), .A2(b[5]), .Y(n77) );
  FADDX1_RVT U56 ( .A(n39), .B(n38), .CI(n37), .CO(n36), .S(n81) );
  AND2X1_RVT U57 ( .A1(a[13]), .A2(b[4]), .Y(n80) );
  FADDX1_RVT U58 ( .A(n42), .B(n41), .CI(n40), .CO(n39), .S(n84) );
  AND2X1_RVT U59 ( .A1(a[13]), .A2(b[3]), .Y(n83) );
  FADDX1_RVT U60 ( .A(n45), .B(n44), .CI(n43), .CO(n42), .S(n87) );
  AND2X1_RVT U61 ( .A1(a[12]), .A2(b[3]), .Y(n86) );
  AND2X1_RVT U62 ( .A1(b[0]), .A2(a[14]), .Y(n90) );
  AND2X1_RVT U63 ( .A1(a[12]), .A2(b[2]), .Y(n89) );
  AND2X1_RVT U64 ( .A1(b[1]), .A2(a[13]), .Y(n88) );
  FADDX1_RVT U65 ( .A(n48), .B(n47), .CI(n46), .CO(n636), .S(n640) );
  FADDX1_RVT U66 ( .A(n51), .B(n50), .CI(n49), .CO(n46), .S(n93) );
  AND2X1_RVT U67 ( .A1(b[15]), .A2(a[12]), .Y(n92) );
  FADDX1_RVT U68 ( .A(n54), .B(n53), .CI(n52), .CO(n49), .S(n96) );
  AND2X1_RVT U69 ( .A1(b[14]), .A2(a[12]), .Y(n95) );
  FADDX1_RVT U70 ( .A(n57), .B(n56), .CI(n55), .CO(n52), .S(n99) );
  AND2X1_RVT U71 ( .A1(b[13]), .A2(a[12]), .Y(n98) );
  FADDX1_RVT U72 ( .A(n60), .B(n59), .CI(n58), .CO(n55), .S(n102) );
  AND2X1_RVT U73 ( .A1(a[12]), .A2(b[12]), .Y(n101) );
  FADDX1_RVT U74 ( .A(n63), .B(n62), .CI(n61), .CO(n58), .S(n105) );
  AND2X1_RVT U75 ( .A1(a[12]), .A2(b[11]), .Y(n104) );
  FADDX1_RVT U76 ( .A(n66), .B(n65), .CI(n64), .CO(n61), .S(n108) );
  AND2X1_RVT U77 ( .A1(a[12]), .A2(b[10]), .Y(n107) );
  FADDX1_RVT U78 ( .A(n69), .B(n68), .CI(n67), .CO(n64), .S(n111) );
  AND2X1_RVT U79 ( .A1(a[12]), .A2(b[9]), .Y(n110) );
  FADDX1_RVT U80 ( .A(n72), .B(n71), .CI(n70), .CO(n67), .S(n114) );
  AND2X1_RVT U81 ( .A1(a[12]), .A2(b[8]), .Y(n113) );
  FADDX1_RVT U82 ( .A(n75), .B(n74), .CI(n73), .CO(n70), .S(n117) );
  AND2X1_RVT U83 ( .A1(a[12]), .A2(b[7]), .Y(n116) );
  FADDX1_RVT U84 ( .A(n78), .B(n77), .CI(n76), .CO(n73), .S(n120) );
  AND2X1_RVT U85 ( .A1(a[12]), .A2(b[6]), .Y(n119) );
  FADDX1_RVT U86 ( .A(n81), .B(n80), .CI(n79), .CO(n76), .S(n123) );
  AND2X1_RVT U87 ( .A1(a[12]), .A2(b[5]), .Y(n122) );
  FADDX1_RVT U88 ( .A(n84), .B(n83), .CI(n82), .CO(n79), .S(n126) );
  AND2X1_RVT U89 ( .A1(a[12]), .A2(b[4]), .Y(n125) );
  FADDX1_RVT U90 ( .A(n87), .B(n86), .CI(n85), .CO(n82), .S(n129) );
  AND2X1_RVT U91 ( .A1(a[11]), .A2(b[4]), .Y(n128) );
  FADDX1_RVT U92 ( .A(n90), .B(n89), .CI(n88), .CO(n85), .S(n132) );
  AND2X1_RVT U93 ( .A1(a[11]), .A2(b[3]), .Y(n131) );
  AND2X1_RVT U94 ( .A1(b[0]), .A2(a[13]), .Y(n135) );
  AND2X1_RVT U95 ( .A1(a[11]), .A2(b[2]), .Y(n134) );
  AND2X1_RVT U96 ( .A1(b[1]), .A2(a[12]), .Y(n133) );
  FADDX1_RVT U97 ( .A(n93), .B(n92), .CI(n91), .CO(n639), .S(n643) );
  FADDX1_RVT U98 ( .A(n96), .B(n95), .CI(n94), .CO(n91), .S(n138) );
  AND2X1_RVT U99 ( .A1(b[15]), .A2(a[11]), .Y(n137) );
  FADDX1_RVT U100 ( .A(n99), .B(n98), .CI(n97), .CO(n94), .S(n141) );
  AND2X1_RVT U101 ( .A1(b[14]), .A2(a[11]), .Y(n140) );
  FADDX1_RVT U102 ( .A(n102), .B(n101), .CI(n100), .CO(n97), .S(n144) );
  AND2X1_RVT U103 ( .A1(b[13]), .A2(a[11]), .Y(n143) );
  FADDX1_RVT U104 ( .A(n105), .B(n104), .CI(n103), .CO(n100), .S(n147) );
  AND2X1_RVT U105 ( .A1(b[12]), .A2(a[11]), .Y(n146) );
  FADDX1_RVT U106 ( .A(n108), .B(n107), .CI(n106), .CO(n103), .S(n150) );
  AND2X1_RVT U107 ( .A1(a[11]), .A2(b[11]), .Y(n149) );
  FADDX1_RVT U108 ( .A(n111), .B(n110), .CI(n109), .CO(n106), .S(n153) );
  AND2X1_RVT U109 ( .A1(a[11]), .A2(b[10]), .Y(n152) );
  FADDX1_RVT U110 ( .A(n114), .B(n113), .CI(n112), .CO(n109), .S(n156) );
  AND2X1_RVT U111 ( .A1(a[11]), .A2(b[9]), .Y(n155) );
  FADDX1_RVT U112 ( .A(n117), .B(n116), .CI(n115), .CO(n112), .S(n159) );
  AND2X1_RVT U113 ( .A1(a[11]), .A2(b[8]), .Y(n158) );
  FADDX1_RVT U114 ( .A(n120), .B(n119), .CI(n118), .CO(n115), .S(n162) );
  AND2X1_RVT U115 ( .A1(a[11]), .A2(b[7]), .Y(n161) );
  FADDX1_RVT U116 ( .A(n123), .B(n122), .CI(n121), .CO(n118), .S(n165) );
  AND2X1_RVT U117 ( .A1(a[11]), .A2(b[6]), .Y(n164) );
  FADDX1_RVT U118 ( .A(n126), .B(n125), .CI(n124), .CO(n121), .S(n168) );
  AND2X1_RVT U119 ( .A1(a[11]), .A2(b[5]), .Y(n167) );
  FADDX1_RVT U120 ( .A(n129), .B(n128), .CI(n127), .CO(n124), .S(n171) );
  AND2X1_RVT U121 ( .A1(a[10]), .A2(b[5]), .Y(n170) );
  FADDX1_RVT U122 ( .A(n132), .B(n131), .CI(n130), .CO(n127), .S(n174) );
  AND2X1_RVT U123 ( .A1(a[10]), .A2(b[4]), .Y(n173) );
  FADDX1_RVT U124 ( .A(n135), .B(n134), .CI(n133), .CO(n130), .S(n177) );
  AND2X1_RVT U125 ( .A1(a[10]), .A2(b[3]), .Y(n176) );
  AND2X1_RVT U126 ( .A1(b[0]), .A2(a[12]), .Y(n180) );
  AND2X1_RVT U127 ( .A1(a[10]), .A2(b[2]), .Y(n179) );
  AND2X1_RVT U128 ( .A1(b[1]), .A2(a[11]), .Y(n178) );
  FADDX1_RVT U129 ( .A(n138), .B(n137), .CI(n136), .CO(n642), .S(n646) );
  FADDX1_RVT U130 ( .A(n141), .B(n140), .CI(n139), .CO(n136), .S(n183) );
  AND2X1_RVT U131 ( .A1(b[15]), .A2(a[10]), .Y(n182) );
  FADDX1_RVT U132 ( .A(n144), .B(n143), .CI(n142), .CO(n139), .S(n186) );
  AND2X1_RVT U133 ( .A1(b[14]), .A2(a[10]), .Y(n185) );
  FADDX1_RVT U134 ( .A(n147), .B(n146), .CI(n145), .CO(n142), .S(n189) );
  AND2X1_RVT U135 ( .A1(b[13]), .A2(a[10]), .Y(n188) );
  FADDX1_RVT U136 ( .A(n150), .B(n149), .CI(n148), .CO(n145), .S(n192) );
  AND2X1_RVT U137 ( .A1(b[12]), .A2(a[10]), .Y(n191) );
  FADDX1_RVT U138 ( .A(n153), .B(n152), .CI(n151), .CO(n148), .S(n195) );
  AND2X1_RVT U139 ( .A1(b[11]), .A2(a[10]), .Y(n194) );
  FADDX1_RVT U140 ( .A(n156), .B(n155), .CI(n154), .CO(n151), .S(n198) );
  AND2X1_RVT U141 ( .A1(a[10]), .A2(b[10]), .Y(n197) );
  FADDX1_RVT U142 ( .A(n159), .B(n158), .CI(n157), .CO(n154), .S(n201) );
  AND2X1_RVT U143 ( .A1(a[10]), .A2(b[9]), .Y(n200) );
  FADDX1_RVT U144 ( .A(n162), .B(n161), .CI(n160), .CO(n157), .S(n204) );
  AND2X1_RVT U145 ( .A1(a[10]), .A2(b[8]), .Y(n203) );
  FADDX1_RVT U146 ( .A(n165), .B(n164), .CI(n163), .CO(n160), .S(n207) );
  AND2X1_RVT U147 ( .A1(a[10]), .A2(b[7]), .Y(n206) );
  FADDX1_RVT U148 ( .A(n168), .B(n167), .CI(n166), .CO(n163), .S(n210) );
  AND2X1_RVT U149 ( .A1(a[10]), .A2(b[6]), .Y(n209) );
  FADDX1_RVT U150 ( .A(n171), .B(n170), .CI(n169), .CO(n166), .S(n213) );
  AND2X1_RVT U151 ( .A1(a[9]), .A2(b[6]), .Y(n212) );
  FADDX1_RVT U152 ( .A(n174), .B(n173), .CI(n172), .CO(n169), .S(n216) );
  AND2X1_RVT U153 ( .A1(a[9]), .A2(b[5]), .Y(n215) );
  FADDX1_RVT U154 ( .A(n177), .B(n176), .CI(n175), .CO(n172), .S(n219) );
  AND2X1_RVT U155 ( .A1(a[9]), .A2(b[4]), .Y(n218) );
  FADDX1_RVT U156 ( .A(n180), .B(n179), .CI(n178), .CO(n175), .S(n222) );
  AND2X1_RVT U157 ( .A1(a[9]), .A2(b[3]), .Y(n221) );
  AND2X1_RVT U158 ( .A1(b[0]), .A2(a[11]), .Y(n225) );
  AND2X1_RVT U159 ( .A1(a[9]), .A2(b[2]), .Y(n224) );
  AND2X1_RVT U160 ( .A1(b[1]), .A2(a[10]), .Y(n223) );
  FADDX1_RVT U161 ( .A(n183), .B(n182), .CI(n181), .CO(n645), .S(n649) );
  FADDX1_RVT U162 ( .A(n186), .B(n185), .CI(n184), .CO(n181), .S(n228) );
  AND2X1_RVT U163 ( .A1(b[15]), .A2(a[9]), .Y(n227) );
  FADDX1_RVT U164 ( .A(n189), .B(n188), .CI(n187), .CO(n184), .S(n231) );
  AND2X1_RVT U165 ( .A1(b[14]), .A2(a[9]), .Y(n230) );
  FADDX1_RVT U166 ( .A(n192), .B(n191), .CI(n190), .CO(n187), .S(n234) );
  AND2X1_RVT U167 ( .A1(b[13]), .A2(a[9]), .Y(n233) );
  FADDX1_RVT U168 ( .A(n195), .B(n194), .CI(n193), .CO(n190), .S(n237) );
  AND2X1_RVT U169 ( .A1(b[12]), .A2(a[9]), .Y(n236) );
  FADDX1_RVT U170 ( .A(n198), .B(n197), .CI(n196), .CO(n193), .S(n240) );
  AND2X1_RVT U171 ( .A1(b[11]), .A2(a[9]), .Y(n239) );
  FADDX1_RVT U172 ( .A(n201), .B(n200), .CI(n199), .CO(n196), .S(n243) );
  AND2X1_RVT U173 ( .A1(b[10]), .A2(a[9]), .Y(n242) );
  FADDX1_RVT U174 ( .A(n204), .B(n203), .CI(n202), .CO(n199), .S(n246) );
  AND2X1_RVT U175 ( .A1(a[9]), .A2(b[9]), .Y(n245) );
  FADDX1_RVT U176 ( .A(n207), .B(n206), .CI(n205), .CO(n202), .S(n249) );
  AND2X1_RVT U177 ( .A1(a[9]), .A2(b[8]), .Y(n248) );
  FADDX1_RVT U178 ( .A(n210), .B(n209), .CI(n208), .CO(n205), .S(n252) );
  AND2X1_RVT U179 ( .A1(a[9]), .A2(b[7]), .Y(n251) );
  FADDX1_RVT U180 ( .A(n213), .B(n212), .CI(n211), .CO(n208), .S(n255) );
  AND2X1_RVT U181 ( .A1(a[8]), .A2(b[7]), .Y(n254) );
  FADDX1_RVT U182 ( .A(n216), .B(n215), .CI(n214), .CO(n211), .S(n258) );
  AND2X1_RVT U183 ( .A1(a[8]), .A2(b[6]), .Y(n257) );
  FADDX1_RVT U184 ( .A(n219), .B(n218), .CI(n217), .CO(n214), .S(n261) );
  AND2X1_RVT U185 ( .A1(a[8]), .A2(b[5]), .Y(n260) );
  FADDX1_RVT U186 ( .A(n222), .B(n221), .CI(n220), .CO(n217), .S(n264) );
  AND2X1_RVT U187 ( .A1(a[8]), .A2(b[4]), .Y(n263) );
  FADDX1_RVT U188 ( .A(n225), .B(n224), .CI(n223), .CO(n220), .S(n267) );
  AND2X1_RVT U189 ( .A1(a[8]), .A2(b[3]), .Y(n266) );
  AND2X1_RVT U190 ( .A1(b[0]), .A2(a[10]), .Y(n270) );
  AND2X1_RVT U191 ( .A1(a[8]), .A2(b[2]), .Y(n269) );
  AND2X1_RVT U192 ( .A1(b[1]), .A2(a[9]), .Y(n268) );
  FADDX1_RVT U193 ( .A(n228), .B(n227), .CI(n226), .CO(n648), .S(n652) );
  FADDX1_RVT U194 ( .A(n231), .B(n230), .CI(n229), .CO(n226), .S(n273) );
  AND2X1_RVT U195 ( .A1(b[15]), .A2(a[8]), .Y(n272) );
  FADDX1_RVT U196 ( .A(n234), .B(n233), .CI(n232), .CO(n229), .S(n276) );
  AND2X1_RVT U197 ( .A1(b[14]), .A2(a[8]), .Y(n275) );
  FADDX1_RVT U198 ( .A(n237), .B(n236), .CI(n235), .CO(n232), .S(n279) );
  AND2X1_RVT U199 ( .A1(b[13]), .A2(a[8]), .Y(n278) );
  FADDX1_RVT U200 ( .A(n240), .B(n239), .CI(n238), .CO(n235), .S(n282) );
  AND2X1_RVT U201 ( .A1(b[12]), .A2(a[8]), .Y(n281) );
  FADDX1_RVT U202 ( .A(n243), .B(n242), .CI(n241), .CO(n238), .S(n285) );
  AND2X1_RVT U203 ( .A1(b[11]), .A2(a[8]), .Y(n284) );
  FADDX1_RVT U204 ( .A(n246), .B(n245), .CI(n244), .CO(n241), .S(n288) );
  AND2X1_RVT U205 ( .A1(b[10]), .A2(a[8]), .Y(n287) );
  FADDX1_RVT U206 ( .A(n249), .B(n248), .CI(n247), .CO(n244), .S(n291) );
  AND2X1_RVT U207 ( .A1(b[9]), .A2(a[8]), .Y(n290) );
  FADDX1_RVT U208 ( .A(n252), .B(n251), .CI(n250), .CO(n247), .S(n294) );
  AND2X1_RVT U209 ( .A1(a[8]), .A2(b[8]), .Y(n293) );
  FADDX1_RVT U210 ( .A(n255), .B(n254), .CI(n253), .CO(n250), .S(n297) );
  AND2X1_RVT U211 ( .A1(b[8]), .A2(a[7]), .Y(n296) );
  FADDX1_RVT U212 ( .A(n258), .B(n257), .CI(n256), .CO(n253), .S(n300) );
  AND2X1_RVT U213 ( .A1(a[7]), .A2(b[7]), .Y(n299) );
  FADDX1_RVT U214 ( .A(n261), .B(n260), .CI(n259), .CO(n256), .S(n303) );
  AND2X1_RVT U215 ( .A1(a[7]), .A2(b[6]), .Y(n302) );
  FADDX1_RVT U216 ( .A(n264), .B(n263), .CI(n262), .CO(n259), .S(n306) );
  AND2X1_RVT U217 ( .A1(a[7]), .A2(b[5]), .Y(n305) );
  FADDX1_RVT U218 ( .A(n267), .B(n266), .CI(n265), .CO(n262), .S(n309) );
  AND2X1_RVT U219 ( .A1(a[7]), .A2(b[4]), .Y(n308) );
  FADDX1_RVT U220 ( .A(n270), .B(n269), .CI(n268), .CO(n265), .S(n312) );
  AND2X1_RVT U221 ( .A1(a[7]), .A2(b[3]), .Y(n311) );
  AND2X1_RVT U222 ( .A1(b[0]), .A2(a[9]), .Y(n315) );
  AND2X1_RVT U223 ( .A1(a[7]), .A2(b[2]), .Y(n314) );
  AND2X1_RVT U224 ( .A1(b[1]), .A2(a[8]), .Y(n313) );
  FADDX1_RVT U225 ( .A(n273), .B(n272), .CI(n271), .CO(n651), .S(n655) );
  FADDX1_RVT U226 ( .A(n276), .B(n275), .CI(n274), .CO(n271), .S(n318) );
  AND2X1_RVT U227 ( .A1(b[15]), .A2(a[7]), .Y(n317) );
  FADDX1_RVT U228 ( .A(n279), .B(n278), .CI(n277), .CO(n274), .S(n321) );
  AND2X1_RVT U229 ( .A1(b[14]), .A2(a[7]), .Y(n320) );
  FADDX1_RVT U230 ( .A(n282), .B(n281), .CI(n280), .CO(n277), .S(n324) );
  AND2X1_RVT U231 ( .A1(b[13]), .A2(a[7]), .Y(n323) );
  FADDX1_RVT U232 ( .A(n285), .B(n284), .CI(n283), .CO(n280), .S(n327) );
  AND2X1_RVT U233 ( .A1(b[12]), .A2(a[7]), .Y(n326) );
  FADDX1_RVT U234 ( .A(n288), .B(n287), .CI(n286), .CO(n283), .S(n330) );
  AND2X1_RVT U235 ( .A1(b[11]), .A2(a[7]), .Y(n329) );
  FADDX1_RVT U236 ( .A(n291), .B(n290), .CI(n289), .CO(n286), .S(n333) );
  AND2X1_RVT U237 ( .A1(b[10]), .A2(a[7]), .Y(n332) );
  FADDX1_RVT U238 ( .A(n294), .B(n293), .CI(n292), .CO(n289), .S(n336) );
  AND2X1_RVT U239 ( .A1(b[9]), .A2(a[7]), .Y(n335) );
  FADDX1_RVT U240 ( .A(n297), .B(n296), .CI(n295), .CO(n292), .S(n339) );
  AND2X1_RVT U241 ( .A1(b[9]), .A2(a[6]), .Y(n338) );
  FADDX1_RVT U242 ( .A(n300), .B(n299), .CI(n298), .CO(n295), .S(n342) );
  AND2X1_RVT U243 ( .A1(b[8]), .A2(a[6]), .Y(n341) );
  FADDX1_RVT U244 ( .A(n303), .B(n302), .CI(n301), .CO(n298), .S(n345) );
  AND2X1_RVT U245 ( .A1(b[7]), .A2(a[6]), .Y(n344) );
  FADDX1_RVT U246 ( .A(n306), .B(n305), .CI(n304), .CO(n301), .S(n348) );
  AND2X1_RVT U247 ( .A1(a[6]), .A2(b[6]), .Y(n347) );
  FADDX1_RVT U248 ( .A(n309), .B(n308), .CI(n307), .CO(n304), .S(n351) );
  AND2X1_RVT U249 ( .A1(a[6]), .A2(b[5]), .Y(n350) );
  FADDX1_RVT U250 ( .A(n312), .B(n311), .CI(n310), .CO(n307), .S(n354) );
  AND2X1_RVT U251 ( .A1(a[6]), .A2(b[4]), .Y(n353) );
  FADDX1_RVT U252 ( .A(n315), .B(n314), .CI(n313), .CO(n310), .S(n357) );
  AND2X1_RVT U253 ( .A1(a[6]), .A2(b[3]), .Y(n356) );
  AND2X1_RVT U254 ( .A1(b[0]), .A2(a[8]), .Y(n360) );
  AND2X1_RVT U255 ( .A1(a[6]), .A2(b[2]), .Y(n359) );
  AND2X1_RVT U256 ( .A1(b[1]), .A2(a[7]), .Y(n358) );
  FADDX1_RVT U257 ( .A(n318), .B(n317), .CI(n316), .CO(n654), .S(n658) );
  FADDX1_RVT U258 ( .A(n321), .B(n320), .CI(n319), .CO(n316), .S(n363) );
  AND2X1_RVT U259 ( .A1(b[15]), .A2(a[6]), .Y(n362) );
  FADDX1_RVT U260 ( .A(n324), .B(n323), .CI(n322), .CO(n319), .S(n366) );
  AND2X1_RVT U261 ( .A1(b[14]), .A2(a[6]), .Y(n365) );
  FADDX1_RVT U262 ( .A(n327), .B(n326), .CI(n325), .CO(n322), .S(n369) );
  AND2X1_RVT U263 ( .A1(b[13]), .A2(a[6]), .Y(n368) );
  FADDX1_RVT U264 ( .A(n330), .B(n329), .CI(n328), .CO(n325), .S(n372) );
  AND2X1_RVT U265 ( .A1(b[12]), .A2(a[6]), .Y(n371) );
  FADDX1_RVT U266 ( .A(n333), .B(n332), .CI(n331), .CO(n328), .S(n375) );
  AND2X1_RVT U267 ( .A1(b[11]), .A2(a[6]), .Y(n374) );
  FADDX1_RVT U268 ( .A(n336), .B(n335), .CI(n334), .CO(n331), .S(n378) );
  AND2X1_RVT U269 ( .A1(b[10]), .A2(a[6]), .Y(n377) );
  FADDX1_RVT U270 ( .A(n339), .B(n338), .CI(n337), .CO(n334), .S(n381) );
  AND2X1_RVT U271 ( .A1(b[10]), .A2(a[5]), .Y(n380) );
  FADDX1_RVT U272 ( .A(n342), .B(n341), .CI(n340), .CO(n337), .S(n384) );
  AND2X1_RVT U273 ( .A1(b[9]), .A2(a[5]), .Y(n383) );
  FADDX1_RVT U274 ( .A(n345), .B(n344), .CI(n343), .CO(n340), .S(n387) );
  AND2X1_RVT U275 ( .A1(b[8]), .A2(a[5]), .Y(n386) );
  FADDX1_RVT U276 ( .A(n348), .B(n347), .CI(n346), .CO(n343), .S(n390) );
  AND2X1_RVT U277 ( .A1(b[7]), .A2(a[5]), .Y(n389) );
  FADDX1_RVT U278 ( .A(n351), .B(n350), .CI(n349), .CO(n346), .S(n393) );
  AND2X1_RVT U279 ( .A1(b[6]), .A2(a[5]), .Y(n392) );
  FADDX1_RVT U280 ( .A(n354), .B(n353), .CI(n352), .CO(n349), .S(n396) );
  AND2X1_RVT U281 ( .A1(a[5]), .A2(b[5]), .Y(n395) );
  FADDX1_RVT U282 ( .A(n357), .B(n356), .CI(n355), .CO(n352), .S(n399) );
  AND2X1_RVT U283 ( .A1(a[5]), .A2(b[4]), .Y(n398) );
  FADDX1_RVT U284 ( .A(n360), .B(n359), .CI(n358), .CO(n355), .S(n402) );
  AND2X1_RVT U285 ( .A1(a[5]), .A2(b[3]), .Y(n401) );
  AND2X1_RVT U286 ( .A1(b[0]), .A2(a[7]), .Y(n405) );
  AND2X1_RVT U287 ( .A1(a[5]), .A2(b[2]), .Y(n404) );
  AND2X1_RVT U288 ( .A1(b[1]), .A2(a[6]), .Y(n403) );
  FADDX1_RVT U289 ( .A(n363), .B(n362), .CI(n361), .CO(n657), .S(n661) );
  FADDX1_RVT U290 ( .A(n366), .B(n365), .CI(n364), .CO(n361), .S(n408) );
  AND2X1_RVT U291 ( .A1(b[15]), .A2(a[5]), .Y(n407) );
  FADDX1_RVT U292 ( .A(n369), .B(n368), .CI(n367), .CO(n364), .S(n411) );
  AND2X1_RVT U293 ( .A1(b[14]), .A2(a[5]), .Y(n410) );
  FADDX1_RVT U294 ( .A(n372), .B(n371), .CI(n370), .CO(n367), .S(n414) );
  AND2X1_RVT U295 ( .A1(b[13]), .A2(a[5]), .Y(n413) );
  FADDX1_RVT U296 ( .A(n375), .B(n374), .CI(n373), .CO(n370), .S(n417) );
  AND2X1_RVT U297 ( .A1(b[12]), .A2(a[5]), .Y(n416) );
  FADDX1_RVT U298 ( .A(n378), .B(n377), .CI(n376), .CO(n373), .S(n420) );
  AND2X1_RVT U299 ( .A1(b[11]), .A2(a[5]), .Y(n419) );
  FADDX1_RVT U300 ( .A(n381), .B(n380), .CI(n379), .CO(n376), .S(n423) );
  AND2X1_RVT U301 ( .A1(b[11]), .A2(a[4]), .Y(n422) );
  FADDX1_RVT U302 ( .A(n384), .B(n383), .CI(n382), .CO(n379), .S(n426) );
  AND2X1_RVT U303 ( .A1(b[10]), .A2(a[4]), .Y(n425) );
  FADDX1_RVT U304 ( .A(n387), .B(n386), .CI(n385), .CO(n382), .S(n429) );
  AND2X1_RVT U305 ( .A1(b[9]), .A2(a[4]), .Y(n428) );
  FADDX1_RVT U306 ( .A(n390), .B(n389), .CI(n388), .CO(n385), .S(n432) );
  AND2X1_RVT U307 ( .A1(b[8]), .A2(a[4]), .Y(n431) );
  FADDX1_RVT U308 ( .A(n393), .B(n392), .CI(n391), .CO(n388), .S(n435) );
  AND2X1_RVT U309 ( .A1(b[7]), .A2(a[4]), .Y(n434) );
  FADDX1_RVT U310 ( .A(n396), .B(n395), .CI(n394), .CO(n391), .S(n438) );
  AND2X1_RVT U311 ( .A1(b[6]), .A2(a[4]), .Y(n437) );
  FADDX1_RVT U312 ( .A(n399), .B(n398), .CI(n397), .CO(n394), .S(n441) );
  AND2X1_RVT U313 ( .A1(b[5]), .A2(a[4]), .Y(n440) );
  FADDX1_RVT U314 ( .A(n402), .B(n401), .CI(n400), .CO(n397), .S(n444) );
  AND2X1_RVT U315 ( .A1(a[4]), .A2(b[4]), .Y(n443) );
  FADDX1_RVT U316 ( .A(n405), .B(n404), .CI(n403), .CO(n400), .S(n447) );
  AND2X1_RVT U317 ( .A1(a[4]), .A2(b[3]), .Y(n446) );
  AND2X1_RVT U318 ( .A1(b[0]), .A2(a[6]), .Y(n450) );
  AND2X1_RVT U319 ( .A1(a[4]), .A2(b[2]), .Y(n449) );
  AND2X1_RVT U320 ( .A1(b[1]), .A2(a[5]), .Y(n448) );
  FADDX1_RVT U321 ( .A(n408), .B(n407), .CI(n406), .CO(n660), .S(n664) );
  FADDX1_RVT U322 ( .A(n411), .B(n410), .CI(n409), .CO(n406), .S(n453) );
  AND2X1_RVT U323 ( .A1(b[15]), .A2(a[4]), .Y(n452) );
  FADDX1_RVT U324 ( .A(n414), .B(n413), .CI(n412), .CO(n409), .S(n456) );
  AND2X1_RVT U325 ( .A1(b[14]), .A2(a[4]), .Y(n455) );
  FADDX1_RVT U326 ( .A(n417), .B(n416), .CI(n415), .CO(n412), .S(n459) );
  AND2X1_RVT U327 ( .A1(b[13]), .A2(a[4]), .Y(n458) );
  FADDX1_RVT U328 ( .A(n420), .B(n419), .CI(n418), .CO(n415), .S(n462) );
  AND2X1_RVT U329 ( .A1(b[12]), .A2(a[4]), .Y(n461) );
  FADDX1_RVT U330 ( .A(n423), .B(n422), .CI(n421), .CO(n418), .S(n465) );
  AND2X1_RVT U331 ( .A1(b[12]), .A2(a[3]), .Y(n464) );
  FADDX1_RVT U332 ( .A(n426), .B(n425), .CI(n424), .CO(n421), .S(n468) );
  AND2X1_RVT U333 ( .A1(b[11]), .A2(a[3]), .Y(n467) );
  FADDX1_RVT U334 ( .A(n429), .B(n428), .CI(n427), .CO(n424), .S(n471) );
  AND2X1_RVT U335 ( .A1(b[10]), .A2(a[3]), .Y(n470) );
  FADDX1_RVT U336 ( .A(n432), .B(n431), .CI(n430), .CO(n427), .S(n474) );
  AND2X1_RVT U337 ( .A1(b[9]), .A2(a[3]), .Y(n473) );
  FADDX1_RVT U338 ( .A(n435), .B(n434), .CI(n433), .CO(n430), .S(n477) );
  AND2X1_RVT U339 ( .A1(b[8]), .A2(a[3]), .Y(n476) );
  FADDX1_RVT U340 ( .A(n438), .B(n437), .CI(n436), .CO(n433), .S(n480) );
  AND2X1_RVT U341 ( .A1(b[7]), .A2(a[3]), .Y(n479) );
  FADDX1_RVT U342 ( .A(n441), .B(n440), .CI(n439), .CO(n436), .S(n483) );
  AND2X1_RVT U343 ( .A1(b[6]), .A2(a[3]), .Y(n482) );
  FADDX1_RVT U344 ( .A(n444), .B(n443), .CI(n442), .CO(n439), .S(n486) );
  AND2X1_RVT U345 ( .A1(b[5]), .A2(a[3]), .Y(n485) );
  FADDX1_RVT U346 ( .A(n447), .B(n446), .CI(n445), .CO(n442), .S(n489) );
  AND2X1_RVT U347 ( .A1(b[4]), .A2(a[3]), .Y(n488) );
  FADDX1_RVT U348 ( .A(n450), .B(n449), .CI(n448), .CO(n445), .S(n492) );
  AND2X1_RVT U349 ( .A1(a[3]), .A2(b[3]), .Y(n491) );
  AND2X1_RVT U350 ( .A1(b[0]), .A2(a[5]), .Y(n495) );
  AND2X1_RVT U351 ( .A1(a[3]), .A2(b[2]), .Y(n494) );
  AND2X1_RVT U352 ( .A1(b[1]), .A2(a[4]), .Y(n493) );
  FADDX1_RVT U353 ( .A(n453), .B(n452), .CI(n451), .CO(n663), .S(n667) );
  FADDX1_RVT U354 ( .A(n456), .B(n455), .CI(n454), .CO(n451), .S(n498) );
  AND2X1_RVT U355 ( .A1(b[15]), .A2(a[3]), .Y(n497) );
  FADDX1_RVT U356 ( .A(n459), .B(n458), .CI(n457), .CO(n454), .S(n501) );
  AND2X1_RVT U357 ( .A1(b[14]), .A2(a[3]), .Y(n500) );
  FADDX1_RVT U358 ( .A(n462), .B(n461), .CI(n460), .CO(n457), .S(n504) );
  AND2X1_RVT U359 ( .A1(b[13]), .A2(a[3]), .Y(n503) );
  FADDX1_RVT U360 ( .A(n465), .B(n464), .CI(n463), .CO(n460), .S(n507) );
  AND2X1_RVT U361 ( .A1(b[13]), .A2(a[2]), .Y(n506) );
  FADDX1_RVT U362 ( .A(n468), .B(n467), .CI(n466), .CO(n463), .S(n510) );
  AND2X1_RVT U363 ( .A1(b[12]), .A2(a[2]), .Y(n509) );
  FADDX1_RVT U364 ( .A(n471), .B(n470), .CI(n469), .CO(n466), .S(n513) );
  AND2X1_RVT U365 ( .A1(b[11]), .A2(a[2]), .Y(n512) );
  FADDX1_RVT U366 ( .A(n474), .B(n473), .CI(n472), .CO(n469), .S(n516) );
  AND2X1_RVT U367 ( .A1(b[10]), .A2(a[2]), .Y(n515) );
  FADDX1_RVT U368 ( .A(n477), .B(n476), .CI(n475), .CO(n472), .S(n519) );
  AND2X1_RVT U369 ( .A1(b[9]), .A2(a[2]), .Y(n518) );
  FADDX1_RVT U370 ( .A(n480), .B(n479), .CI(n478), .CO(n475), .S(n522) );
  AND2X1_RVT U371 ( .A1(b[8]), .A2(a[2]), .Y(n521) );
  FADDX1_RVT U372 ( .A(n483), .B(n482), .CI(n481), .CO(n478), .S(n525) );
  AND2X1_RVT U373 ( .A1(b[7]), .A2(a[2]), .Y(n524) );
  FADDX1_RVT U374 ( .A(n486), .B(n485), .CI(n484), .CO(n481), .S(n528) );
  AND2X1_RVT U375 ( .A1(b[6]), .A2(a[2]), .Y(n527) );
  FADDX1_RVT U376 ( .A(n489), .B(n488), .CI(n487), .CO(n484), .S(n531) );
  AND2X1_RVT U377 ( .A1(b[5]), .A2(a[2]), .Y(n530) );
  FADDX1_RVT U378 ( .A(n492), .B(n491), .CI(n490), .CO(n487), .S(n534) );
  AND2X1_RVT U379 ( .A1(b[4]), .A2(a[2]), .Y(n533) );
  FADDX1_RVT U380 ( .A(n495), .B(n494), .CI(n493), .CO(n490), .S(n537) );
  AND2X1_RVT U381 ( .A1(b[3]), .A2(a[2]), .Y(n536) );
  AND2X1_RVT U382 ( .A1(b[0]), .A2(a[4]), .Y(n540) );
  AND2X1_RVT U383 ( .A1(a[2]), .A2(b[2]), .Y(n539) );
  AND2X1_RVT U384 ( .A1(b[1]), .A2(a[3]), .Y(n538) );
  FADDX1_RVT U385 ( .A(n498), .B(n497), .CI(n496), .CO(n666), .S(n670) );
  FADDX1_RVT U386 ( .A(n501), .B(n500), .CI(n499), .CO(n496), .S(n543) );
  AND2X1_RVT U387 ( .A1(b[15]), .A2(a[2]), .Y(n542) );
  FADDX1_RVT U388 ( .A(n504), .B(n503), .CI(n502), .CO(n499), .S(n623) );
  AND2X1_RVT U389 ( .A1(b[14]), .A2(a[2]), .Y(n622) );
  FADDX1_RVT U390 ( .A(n507), .B(n506), .CI(n505), .CO(n502), .S(n617) );
  AND2X1_RVT U391 ( .A1(a[1]), .A2(b[14]), .Y(n616) );
  FADDX1_RVT U392 ( .A(n510), .B(n509), .CI(n508), .CO(n505), .S(n611) );
  AND2X1_RVT U393 ( .A1(a[1]), .A2(b[13]), .Y(n610) );
  FADDX1_RVT U394 ( .A(n513), .B(n512), .CI(n511), .CO(n508), .S(n605) );
  AND2X1_RVT U395 ( .A1(a[1]), .A2(b[12]), .Y(n604) );
  FADDX1_RVT U396 ( .A(n516), .B(n515), .CI(n514), .CO(n511), .S(n599) );
  AND2X1_RVT U397 ( .A1(a[1]), .A2(b[11]), .Y(n598) );
  FADDX1_RVT U398 ( .A(n519), .B(n518), .CI(n517), .CO(n514), .S(n593) );
  AND2X1_RVT U399 ( .A1(a[1]), .A2(b[10]), .Y(n592) );
  FADDX1_RVT U400 ( .A(n522), .B(n521), .CI(n520), .CO(n517), .S(n587) );
  AND2X1_RVT U401 ( .A1(a[1]), .A2(b[9]), .Y(n586) );
  FADDX1_RVT U402 ( .A(n525), .B(n524), .CI(n523), .CO(n520), .S(n581) );
  AND2X1_RVT U403 ( .A1(a[1]), .A2(b[8]), .Y(n580) );
  FADDX1_RVT U404 ( .A(n528), .B(n527), .CI(n526), .CO(n523), .S(n575) );
  AND2X1_RVT U405 ( .A1(a[1]), .A2(b[7]), .Y(n574) );
  FADDX1_RVT U406 ( .A(n531), .B(n530), .CI(n529), .CO(n526), .S(n569) );
  AND2X1_RVT U407 ( .A1(a[1]), .A2(b[6]), .Y(n568) );
  FADDX1_RVT U408 ( .A(n534), .B(n533), .CI(n532), .CO(n529), .S(n563) );
  AND2X1_RVT U409 ( .A1(a[1]), .A2(b[5]), .Y(n562) );
  FADDX1_RVT U410 ( .A(n537), .B(n536), .CI(n535), .CO(n532), .S(n557) );
  AND2X1_RVT U411 ( .A1(a[1]), .A2(b[4]), .Y(n556) );
  FADDX1_RVT U412 ( .A(n540), .B(n539), .CI(n538), .CO(n535), .S(n551) );
  AND2X1_RVT U413 ( .A1(a[1]), .A2(b[3]), .Y(n550) );
  AND2X1_RVT U414 ( .A1(b[0]), .A2(a[3]), .Y(n546) );
  AND2X1_RVT U415 ( .A1(a[1]), .A2(b[2]), .Y(n545) );
  AND2X1_RVT U416 ( .A1(b[1]), .A2(a[2]), .Y(n544) );
  FADDX1_RVT U417 ( .A(n543), .B(n542), .CI(n541), .CO(n669), .S(n671) );
  AND2X1_RVT U418 ( .A1(b[1]), .A2(a[1]), .Y(n702) );
  AND2X1_RVT U419 ( .A1(b[0]), .A2(a[2]), .Y(n548) );
  AND2X1_RVT U420 ( .A1(a[0]), .A2(b[2]), .Y(n547) );
  FADDX1_RVT U421 ( .A(n546), .B(n545), .CI(n544), .CO(n549), .S(n554) );
  AND2X1_RVT U422 ( .A1(a[0]), .A2(b[3]), .Y(n553) );
  FADDX1_RVT U423 ( .A(n702), .B(n548), .CI(n547), .CO(n552), .S(n704) );
  AND4X1_RVT U424 ( .A1(n704), .A2(n702), .A3(p[0]), .A4(n700), .Y(n699) );
  FADDX1_RVT U425 ( .A(n551), .B(n550), .CI(n549), .CO(n555), .S(n560) );
  AND2X1_RVT U426 ( .A1(a[0]), .A2(b[4]), .Y(n559) );
  FADDX1_RVT U427 ( .A(n554), .B(n553), .CI(n552), .CO(n558), .S(n700) );
  AND2X1_RVT U428 ( .A1(n699), .A2(n698), .Y(n697) );
  FADDX1_RVT U429 ( .A(n557), .B(n556), .CI(n555), .CO(n561), .S(n566) );
  AND2X1_RVT U430 ( .A1(a[0]), .A2(b[5]), .Y(n565) );
  FADDX1_RVT U431 ( .A(n560), .B(n559), .CI(n558), .CO(n564), .S(n698) );
  AND2X1_RVT U432 ( .A1(n697), .A2(n696), .Y(n695) );
  FADDX1_RVT U433 ( .A(n563), .B(n562), .CI(n561), .CO(n567), .S(n572) );
  AND2X1_RVT U434 ( .A1(a[0]), .A2(b[6]), .Y(n571) );
  FADDX1_RVT U435 ( .A(n566), .B(n565), .CI(n564), .CO(n570), .S(n696) );
  AND2X1_RVT U436 ( .A1(n695), .A2(n694), .Y(n693) );
  FADDX1_RVT U437 ( .A(n569), .B(n568), .CI(n567), .CO(n573), .S(n578) );
  AND2X1_RVT U438 ( .A1(a[0]), .A2(b[7]), .Y(n577) );
  FADDX1_RVT U439 ( .A(n572), .B(n571), .CI(n570), .CO(n576), .S(n694) );
  AND2X1_RVT U440 ( .A1(n693), .A2(n692), .Y(n691) );
  FADDX1_RVT U441 ( .A(n575), .B(n574), .CI(n573), .CO(n579), .S(n584) );
  AND2X1_RVT U442 ( .A1(a[0]), .A2(b[8]), .Y(n583) );
  FADDX1_RVT U443 ( .A(n578), .B(n577), .CI(n576), .CO(n582), .S(n692) );
  AND2X1_RVT U444 ( .A1(n691), .A2(n690), .Y(n689) );
  FADDX1_RVT U445 ( .A(n581), .B(n580), .CI(n579), .CO(n585), .S(n590) );
  AND2X1_RVT U446 ( .A1(a[0]), .A2(b[9]), .Y(n589) );
  FADDX1_RVT U447 ( .A(n584), .B(n583), .CI(n582), .CO(n588), .S(n690) );
  AND2X1_RVT U448 ( .A1(n689), .A2(n688), .Y(n687) );
  FADDX1_RVT U449 ( .A(n587), .B(n586), .CI(n585), .CO(n591), .S(n596) );
  AND2X1_RVT U450 ( .A1(a[0]), .A2(b[10]), .Y(n595) );
  FADDX1_RVT U451 ( .A(n590), .B(n589), .CI(n588), .CO(n594), .S(n688) );
  AND2X1_RVT U452 ( .A1(n687), .A2(n686), .Y(n685) );
  FADDX1_RVT U453 ( .A(n593), .B(n592), .CI(n591), .CO(n597), .S(n602) );
  AND2X1_RVT U454 ( .A1(a[0]), .A2(b[11]), .Y(n601) );
  FADDX1_RVT U455 ( .A(n596), .B(n595), .CI(n594), .CO(n600), .S(n686) );
  AND2X1_RVT U456 ( .A1(n685), .A2(n684), .Y(n683) );
  FADDX1_RVT U457 ( .A(n599), .B(n598), .CI(n597), .CO(n603), .S(n608) );
  AND2X1_RVT U458 ( .A1(a[0]), .A2(b[12]), .Y(n607) );
  FADDX1_RVT U459 ( .A(n602), .B(n601), .CI(n600), .CO(n606), .S(n684) );
  AND2X1_RVT U460 ( .A1(n683), .A2(n682), .Y(n681) );
  FADDX1_RVT U461 ( .A(n605), .B(n604), .CI(n603), .CO(n609), .S(n614) );
  AND2X1_RVT U462 ( .A1(a[0]), .A2(b[13]), .Y(n613) );
  FADDX1_RVT U463 ( .A(n608), .B(n607), .CI(n606), .CO(n612), .S(n682) );
  AND2X1_RVT U464 ( .A1(n681), .A2(n680), .Y(n679) );
  FADDX1_RVT U465 ( .A(n611), .B(n610), .CI(n609), .CO(n615), .S(n620) );
  AND2X1_RVT U466 ( .A1(a[0]), .A2(b[14]), .Y(n619) );
  FADDX1_RVT U467 ( .A(n614), .B(n613), .CI(n612), .CO(n618), .S(n680) );
  AND2X1_RVT U468 ( .A1(n679), .A2(n678), .Y(n677) );
  FADDX1_RVT U469 ( .A(n617), .B(n616), .CI(n615), .CO(n621), .S(n626) );
  AND2X1_RVT U470 ( .A1(a[0]), .A2(b[15]), .Y(n625) );
  FADDX1_RVT U471 ( .A(n620), .B(n619), .CI(n618), .CO(n624), .S(n678) );
  AND2X1_RVT U472 ( .A1(n677), .A2(n676), .Y(n675) );
  FADDX1_RVT U473 ( .A(n623), .B(n622), .CI(n621), .CO(n541), .S(n629) );
  AND2X1_RVT U474 ( .A1(a[1]), .A2(b[15]), .Y(n628) );
  FADDX1_RVT U475 ( .A(n626), .B(n625), .CI(n624), .CO(n627), .S(n676) );
  AND2X1_RVT U476 ( .A1(n675), .A2(n674), .Y(n673) );
  FADDX1_RVT U477 ( .A(n629), .B(n628), .CI(n627), .CO(n672), .S(n674) );
  OR2X1_RVT U478 ( .A1(n673), .A2(n672), .Y(n630) );
  AND2X1_RVT U479 ( .A1(n671), .A2(n630), .Y(n668) );
  OR2X1_RVT U480 ( .A1(n633), .A2(n632), .Y(n631) );
  AND3X1_RVT U481 ( .A1(b[15]), .A2(a[15]), .A3(n631), .Y(p[31]) );
  AND2X1_RVT U482 ( .A1(a[15]), .A2(b[15]), .Y(n634) );
  FADDX1_RVT U483 ( .A(n634), .B(n633), .CI(n632), .S(p[30]) );
  FADDX1_RVT U484 ( .A(n637), .B(n636), .CI(n635), .CO(n632), .S(p[29]) );
  FADDX1_RVT U485 ( .A(n640), .B(n639), .CI(n638), .CO(n635), .S(p[28]) );
  FADDX1_RVT U486 ( .A(n643), .B(n642), .CI(n641), .CO(n638), .S(p[27]) );
  FADDX1_RVT U487 ( .A(n646), .B(n645), .CI(n644), .CO(n641), .S(p[26]) );
  FADDX1_RVT U488 ( .A(n649), .B(n648), .CI(n647), .CO(n644), .S(p[25]) );
  FADDX1_RVT U489 ( .A(n652), .B(n651), .CI(n650), .CO(n647), .S(p[24]) );
  FADDX1_RVT U490 ( .A(n655), .B(n654), .CI(n653), .CO(n650), .S(p[23]) );
  FADDX1_RVT U491 ( .A(n658), .B(n657), .CI(n656), .CO(n653), .S(p[22]) );
  FADDX1_RVT U492 ( .A(n661), .B(n660), .CI(n659), .CO(n656), .S(p[21]) );
  FADDX1_RVT U493 ( .A(n664), .B(n663), .CI(n662), .CO(n659), .S(p[20]) );
  FADDX1_RVT U494 ( .A(n667), .B(n666), .CI(n665), .CO(n662), .S(p[19]) );
  FADDX1_RVT U495 ( .A(n670), .B(n669), .CI(n668), .CO(n665), .S(p[18]) );
  FADDX1_RVT U496 ( .A(n673), .B(n672), .CI(n671), .S(p[17]) );
  HADDX1_RVT U497 ( .A0(n675), .B0(n674), .SO(p[16]) );
  HADDX1_RVT U498 ( .A0(n677), .B0(n676), .SO(p[15]) );
  HADDX1_RVT U499 ( .A0(n679), .B0(n678), .SO(p[14]) );
  HADDX1_RVT U500 ( .A0(n681), .B0(n680), .SO(p[13]) );
  HADDX1_RVT U501 ( .A0(n683), .B0(n682), .SO(p[12]) );
  HADDX1_RVT U502 ( .A0(n685), .B0(n684), .SO(p[11]) );
  HADDX1_RVT U503 ( .A0(n687), .B0(n686), .SO(p[10]) );
  HADDX1_RVT U504 ( .A0(n689), .B0(n688), .SO(p[9]) );
  HADDX1_RVT U505 ( .A0(n691), .B0(n690), .SO(p[8]) );
  HADDX1_RVT U506 ( .A0(n693), .B0(n692), .SO(p[7]) );
  HADDX1_RVT U507 ( .A0(n695), .B0(n694), .SO(p[6]) );
  HADDX1_RVT U508 ( .A0(n697), .B0(n696), .SO(p[5]) );
  HADDX1_RVT U509 ( .A0(n699), .B0(n698), .SO(p[4]) );
  AND3X1_RVT U510 ( .A1(n704), .A2(n702), .A3(p[0]), .Y(n701) );
  HADDX1_RVT U511 ( .A0(n701), .B0(n700), .SO(p[3]) );
  AND2X1_RVT U512 ( .A1(n702), .A2(p[0]), .Y(n703) );
  HADDX1_RVT U513 ( .A0(n704), .B0(n703), .SO(p[2]) );
  AND2X1_RVT U514 ( .A1(a[0]), .A2(b[1]), .Y(n706) );
  AND2X1_RVT U515 ( .A1(a[1]), .A2(b[0]), .Y(n705) );
  HADDX1_RVT U516 ( .A0(n706), .B0(n705), .SO(p[1]) );
endmodule


module array_8_bit_mul_1 ( a, b, p );
  input [7:0] a;
  input [7:0] b;
  output [15:0] p;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162;

  AND2X1_RVT U1 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
  AND2X1_RVT U2 ( .A1(b[0]), .A2(a[7]), .Y(n21) );
  AND2X1_RVT U3 ( .A1(a[5]), .A2(b[2]), .Y(n20) );
  AND2X1_RVT U4 ( .A1(b[1]), .A2(a[6]), .Y(n19) );
  AND2X1_RVT U5 ( .A1(b[1]), .A2(a[7]), .Y(n17) );
  AND2X1_RVT U6 ( .A1(a[6]), .A2(b[2]), .Y(n16) );
  AND2X1_RVT U7 ( .A1(a[7]), .A2(b[2]), .Y(n14) );
  AND2X1_RVT U8 ( .A1(a[6]), .A2(b[3]), .Y(n13) );
  AND2X1_RVT U9 ( .A1(a[7]), .A2(b[3]), .Y(n11) );
  AND2X1_RVT U10 ( .A1(a[6]), .A2(b[4]), .Y(n10) );
  AND2X1_RVT U11 ( .A1(a[7]), .A2(b[4]), .Y(n8) );
  AND2X1_RVT U12 ( .A1(a[6]), .A2(b[5]), .Y(n7) );
  AND2X1_RVT U13 ( .A1(a[7]), .A2(b[5]), .Y(n5) );
  AND2X1_RVT U14 ( .A1(a[6]), .A2(b[6]), .Y(n4) );
  AND2X1_RVT U15 ( .A1(a[7]), .A2(b[6]), .Y(n2) );
  AND2X1_RVT U16 ( .A1(b[7]), .A2(a[6]), .Y(n1) );
  FADDX1_RVT U17 ( .A(n3), .B(n2), .CI(n1), .CO(n129), .S(n133) );
  FADDX1_RVT U18 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n24) );
  AND2X1_RVT U19 ( .A1(b[7]), .A2(a[5]), .Y(n23) );
  FADDX1_RVT U20 ( .A(n9), .B(n8), .CI(n7), .CO(n6), .S(n27) );
  AND2X1_RVT U21 ( .A1(b[6]), .A2(a[5]), .Y(n26) );
  FADDX1_RVT U22 ( .A(n12), .B(n11), .CI(n10), .CO(n9), .S(n30) );
  AND2X1_RVT U23 ( .A1(a[5]), .A2(b[5]), .Y(n29) );
  FADDX1_RVT U24 ( .A(n15), .B(n14), .CI(n13), .CO(n12), .S(n33) );
  AND2X1_RVT U25 ( .A1(a[5]), .A2(b[4]), .Y(n32) );
  FADDX1_RVT U26 ( .A(n18), .B(n17), .CI(n16), .CO(n15), .S(n36) );
  AND2X1_RVT U27 ( .A1(a[5]), .A2(b[3]), .Y(n35) );
  FADDX1_RVT U28 ( .A(n21), .B(n20), .CI(n19), .CO(n18), .S(n39) );
  AND2X1_RVT U29 ( .A1(a[4]), .A2(b[3]), .Y(n38) );
  AND2X1_RVT U30 ( .A1(b[0]), .A2(a[6]), .Y(n42) );
  AND2X1_RVT U31 ( .A1(a[4]), .A2(b[2]), .Y(n41) );
  AND2X1_RVT U32 ( .A1(b[1]), .A2(a[5]), .Y(n40) );
  FADDX1_RVT U33 ( .A(n24), .B(n23), .CI(n22), .CO(n132), .S(n136) );
  FADDX1_RVT U34 ( .A(n27), .B(n26), .CI(n25), .CO(n22), .S(n45) );
  AND2X1_RVT U35 ( .A1(b[7]), .A2(a[4]), .Y(n44) );
  FADDX1_RVT U36 ( .A(n30), .B(n29), .CI(n28), .CO(n25), .S(n48) );
  AND2X1_RVT U37 ( .A1(b[6]), .A2(a[4]), .Y(n47) );
  FADDX1_RVT U38 ( .A(n33), .B(n32), .CI(n31), .CO(n28), .S(n51) );
  AND2X1_RVT U39 ( .A1(b[5]), .A2(a[4]), .Y(n50) );
  FADDX1_RVT U40 ( .A(n36), .B(n35), .CI(n34), .CO(n31), .S(n54) );
  AND2X1_RVT U41 ( .A1(a[4]), .A2(b[4]), .Y(n53) );
  FADDX1_RVT U42 ( .A(n39), .B(n38), .CI(n37), .CO(n34), .S(n57) );
  AND2X1_RVT U43 ( .A1(b[4]), .A2(a[3]), .Y(n56) );
  FADDX1_RVT U44 ( .A(n42), .B(n41), .CI(n40), .CO(n37), .S(n60) );
  AND2X1_RVT U45 ( .A1(a[3]), .A2(b[3]), .Y(n59) );
  AND2X1_RVT U46 ( .A1(b[0]), .A2(a[5]), .Y(n63) );
  AND2X1_RVT U47 ( .A1(a[3]), .A2(b[2]), .Y(n62) );
  AND2X1_RVT U48 ( .A1(b[1]), .A2(a[4]), .Y(n61) );
  FADDX1_RVT U49 ( .A(n45), .B(n44), .CI(n43), .CO(n135), .S(n139) );
  FADDX1_RVT U50 ( .A(n48), .B(n47), .CI(n46), .CO(n43), .S(n66) );
  AND2X1_RVT U51 ( .A1(b[7]), .A2(a[3]), .Y(n65) );
  FADDX1_RVT U52 ( .A(n51), .B(n50), .CI(n49), .CO(n46), .S(n69) );
  AND2X1_RVT U53 ( .A1(b[6]), .A2(a[3]), .Y(n68) );
  FADDX1_RVT U54 ( .A(n54), .B(n53), .CI(n52), .CO(n49), .S(n72) );
  AND2X1_RVT U55 ( .A1(b[5]), .A2(a[3]), .Y(n71) );
  FADDX1_RVT U56 ( .A(n57), .B(n56), .CI(n55), .CO(n52), .S(n75) );
  AND2X1_RVT U57 ( .A1(b[5]), .A2(a[2]), .Y(n74) );
  FADDX1_RVT U58 ( .A(n60), .B(n59), .CI(n58), .CO(n55), .S(n78) );
  AND2X1_RVT U59 ( .A1(b[4]), .A2(a[2]), .Y(n77) );
  FADDX1_RVT U60 ( .A(n63), .B(n62), .CI(n61), .CO(n58), .S(n81) );
  AND2X1_RVT U61 ( .A1(b[3]), .A2(a[2]), .Y(n80) );
  AND2X1_RVT U62 ( .A1(b[0]), .A2(a[4]), .Y(n84) );
  AND2X1_RVT U63 ( .A1(a[2]), .A2(b[2]), .Y(n83) );
  AND2X1_RVT U64 ( .A1(b[1]), .A2(a[3]), .Y(n82) );
  FADDX1_RVT U65 ( .A(n66), .B(n65), .CI(n64), .CO(n138), .S(n142) );
  FADDX1_RVT U66 ( .A(n69), .B(n68), .CI(n67), .CO(n64), .S(n87) );
  AND2X1_RVT U67 ( .A1(b[7]), .A2(a[2]), .Y(n86) );
  FADDX1_RVT U68 ( .A(n72), .B(n71), .CI(n70), .CO(n67), .S(n119) );
  AND2X1_RVT U69 ( .A1(b[6]), .A2(a[2]), .Y(n118) );
  FADDX1_RVT U70 ( .A(n75), .B(n74), .CI(n73), .CO(n70), .S(n113) );
  AND2X1_RVT U71 ( .A1(a[1]), .A2(b[6]), .Y(n112) );
  FADDX1_RVT U72 ( .A(n78), .B(n77), .CI(n76), .CO(n73), .S(n107) );
  AND2X1_RVT U73 ( .A1(a[1]), .A2(b[5]), .Y(n106) );
  FADDX1_RVT U74 ( .A(n81), .B(n80), .CI(n79), .CO(n76), .S(n101) );
  AND2X1_RVT U75 ( .A1(a[1]), .A2(b[4]), .Y(n100) );
  FADDX1_RVT U76 ( .A(n84), .B(n83), .CI(n82), .CO(n79), .S(n95) );
  AND2X1_RVT U77 ( .A1(a[1]), .A2(b[3]), .Y(n94) );
  AND2X1_RVT U78 ( .A1(b[0]), .A2(a[3]), .Y(n90) );
  AND2X1_RVT U79 ( .A1(a[1]), .A2(b[2]), .Y(n89) );
  AND2X1_RVT U80 ( .A1(b[1]), .A2(a[2]), .Y(n88) );
  FADDX1_RVT U81 ( .A(n87), .B(n86), .CI(n85), .CO(n141), .S(n143) );
  AND2X1_RVT U82 ( .A1(b[1]), .A2(a[1]), .Y(n158) );
  AND2X1_RVT U83 ( .A1(b[0]), .A2(a[2]), .Y(n92) );
  AND2X1_RVT U84 ( .A1(a[0]), .A2(b[2]), .Y(n91) );
  FADDX1_RVT U85 ( .A(n90), .B(n89), .CI(n88), .CO(n93), .S(n98) );
  AND2X1_RVT U86 ( .A1(a[0]), .A2(b[3]), .Y(n97) );
  FADDX1_RVT U87 ( .A(n158), .B(n92), .CI(n91), .CO(n96), .S(n160) );
  AND4X1_RVT U88 ( .A1(n160), .A2(n158), .A3(p[0]), .A4(n156), .Y(n155) );
  FADDX1_RVT U89 ( .A(n95), .B(n94), .CI(n93), .CO(n99), .S(n104) );
  AND2X1_RVT U90 ( .A1(a[0]), .A2(b[4]), .Y(n103) );
  FADDX1_RVT U91 ( .A(n98), .B(n97), .CI(n96), .CO(n102), .S(n156) );
  AND2X1_RVT U92 ( .A1(n155), .A2(n154), .Y(n153) );
  FADDX1_RVT U93 ( .A(n101), .B(n100), .CI(n99), .CO(n105), .S(n110) );
  AND2X1_RVT U94 ( .A1(a[0]), .A2(b[5]), .Y(n109) );
  FADDX1_RVT U95 ( .A(n104), .B(n103), .CI(n102), .CO(n108), .S(n154) );
  AND2X1_RVT U96 ( .A1(n153), .A2(n152), .Y(n151) );
  FADDX1_RVT U97 ( .A(n107), .B(n106), .CI(n105), .CO(n111), .S(n116) );
  AND2X1_RVT U98 ( .A1(a[0]), .A2(b[6]), .Y(n115) );
  FADDX1_RVT U99 ( .A(n110), .B(n109), .CI(n108), .CO(n114), .S(n152) );
  AND2X1_RVT U100 ( .A1(n151), .A2(n150), .Y(n149) );
  FADDX1_RVT U101 ( .A(n113), .B(n112), .CI(n111), .CO(n117), .S(n122) );
  AND2X1_RVT U102 ( .A1(a[0]), .A2(b[7]), .Y(n121) );
  FADDX1_RVT U103 ( .A(n116), .B(n115), .CI(n114), .CO(n120), .S(n150) );
  AND2X1_RVT U104 ( .A1(n149), .A2(n148), .Y(n147) );
  FADDX1_RVT U105 ( .A(n119), .B(n118), .CI(n117), .CO(n85), .S(n125) );
  AND2X1_RVT U106 ( .A1(a[1]), .A2(b[7]), .Y(n124) );
  FADDX1_RVT U107 ( .A(n122), .B(n121), .CI(n120), .CO(n123), .S(n148) );
  AND2X1_RVT U108 ( .A1(n147), .A2(n146), .Y(n145) );
  FADDX1_RVT U109 ( .A(n125), .B(n124), .CI(n123), .CO(n144), .S(n146) );
  OR2X1_RVT U110 ( .A1(n145), .A2(n144), .Y(n126) );
  AND2X1_RVT U111 ( .A1(n143), .A2(n126), .Y(n140) );
  OR2X1_RVT U112 ( .A1(n129), .A2(n128), .Y(n127) );
  AND3X1_RVT U113 ( .A1(b[7]), .A2(a[7]), .A3(n127), .Y(p[15]) );
  AND2X1_RVT U114 ( .A1(a[7]), .A2(b[7]), .Y(n130) );
  FADDX1_RVT U115 ( .A(n130), .B(n129), .CI(n128), .S(p[14]) );
  FADDX1_RVT U116 ( .A(n133), .B(n132), .CI(n131), .CO(n128), .S(p[13]) );
  FADDX1_RVT U117 ( .A(n136), .B(n135), .CI(n134), .CO(n131), .S(p[12]) );
  FADDX1_RVT U118 ( .A(n139), .B(n138), .CI(n137), .CO(n134), .S(p[11]) );
  FADDX1_RVT U119 ( .A(n142), .B(n141), .CI(n140), .CO(n137), .S(p[10]) );
  FADDX1_RVT U120 ( .A(n145), .B(n144), .CI(n143), .S(p[9]) );
  HADDX1_RVT U121 ( .A0(n147), .B0(n146), .SO(p[8]) );
  HADDX1_RVT U122 ( .A0(n149), .B0(n148), .SO(p[7]) );
  HADDX1_RVT U123 ( .A0(n151), .B0(n150), .SO(p[6]) );
  HADDX1_RVT U124 ( .A0(n153), .B0(n152), .SO(p[5]) );
  HADDX1_RVT U125 ( .A0(n155), .B0(n154), .SO(p[4]) );
  AND3X1_RVT U126 ( .A1(n160), .A2(n158), .A3(p[0]), .Y(n157) );
  HADDX1_RVT U127 ( .A0(n157), .B0(n156), .SO(p[3]) );
  AND2X1_RVT U128 ( .A1(n158), .A2(p[0]), .Y(n159) );
  HADDX1_RVT U129 ( .A0(n160), .B0(n159), .SO(p[2]) );
  AND2X1_RVT U130 ( .A1(a[0]), .A2(b[1]), .Y(n162) );
  AND2X1_RVT U131 ( .A1(a[1]), .A2(b[0]), .Y(n161) );
  HADDX1_RVT U132 ( .A0(n162), .B0(n161), .SO(p[1]) );
endmodule


module array_8_bit_mul_0 ( a, b, p );
  input [7:0] a;
  input [7:0] b;
  output [15:0] p;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162;

  AND2X1_RVT U1 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
  AND2X1_RVT U2 ( .A1(b[0]), .A2(a[7]), .Y(n21) );
  AND2X1_RVT U3 ( .A1(a[5]), .A2(b[2]), .Y(n20) );
  AND2X1_RVT U4 ( .A1(b[1]), .A2(a[6]), .Y(n19) );
  AND2X1_RVT U5 ( .A1(b[1]), .A2(a[7]), .Y(n17) );
  AND2X1_RVT U6 ( .A1(a[6]), .A2(b[2]), .Y(n16) );
  AND2X1_RVT U7 ( .A1(a[7]), .A2(b[2]), .Y(n14) );
  AND2X1_RVT U8 ( .A1(a[6]), .A2(b[3]), .Y(n13) );
  AND2X1_RVT U9 ( .A1(a[7]), .A2(b[3]), .Y(n11) );
  AND2X1_RVT U10 ( .A1(a[6]), .A2(b[4]), .Y(n10) );
  AND2X1_RVT U11 ( .A1(a[7]), .A2(b[4]), .Y(n8) );
  AND2X1_RVT U12 ( .A1(a[6]), .A2(b[5]), .Y(n7) );
  AND2X1_RVT U13 ( .A1(a[7]), .A2(b[5]), .Y(n5) );
  AND2X1_RVT U14 ( .A1(a[6]), .A2(b[6]), .Y(n4) );
  AND2X1_RVT U15 ( .A1(a[7]), .A2(b[6]), .Y(n2) );
  AND2X1_RVT U16 ( .A1(b[7]), .A2(a[6]), .Y(n1) );
  FADDX1_RVT U17 ( .A(n3), .B(n2), .CI(n1), .CO(n129), .S(n133) );
  FADDX1_RVT U18 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n24) );
  AND2X1_RVT U19 ( .A1(b[7]), .A2(a[5]), .Y(n23) );
  FADDX1_RVT U20 ( .A(n9), .B(n8), .CI(n7), .CO(n6), .S(n27) );
  AND2X1_RVT U21 ( .A1(b[6]), .A2(a[5]), .Y(n26) );
  FADDX1_RVT U22 ( .A(n12), .B(n11), .CI(n10), .CO(n9), .S(n30) );
  AND2X1_RVT U23 ( .A1(a[5]), .A2(b[5]), .Y(n29) );
  FADDX1_RVT U24 ( .A(n15), .B(n14), .CI(n13), .CO(n12), .S(n33) );
  AND2X1_RVT U25 ( .A1(a[5]), .A2(b[4]), .Y(n32) );
  FADDX1_RVT U26 ( .A(n18), .B(n17), .CI(n16), .CO(n15), .S(n36) );
  AND2X1_RVT U27 ( .A1(a[5]), .A2(b[3]), .Y(n35) );
  FADDX1_RVT U28 ( .A(n21), .B(n20), .CI(n19), .CO(n18), .S(n39) );
  AND2X1_RVT U29 ( .A1(a[4]), .A2(b[3]), .Y(n38) );
  AND2X1_RVT U30 ( .A1(b[0]), .A2(a[6]), .Y(n42) );
  AND2X1_RVT U31 ( .A1(a[4]), .A2(b[2]), .Y(n41) );
  AND2X1_RVT U32 ( .A1(b[1]), .A2(a[5]), .Y(n40) );
  FADDX1_RVT U33 ( .A(n24), .B(n23), .CI(n22), .CO(n132), .S(n136) );
  FADDX1_RVT U34 ( .A(n27), .B(n26), .CI(n25), .CO(n22), .S(n45) );
  AND2X1_RVT U35 ( .A1(b[7]), .A2(a[4]), .Y(n44) );
  FADDX1_RVT U36 ( .A(n30), .B(n29), .CI(n28), .CO(n25), .S(n48) );
  AND2X1_RVT U37 ( .A1(b[6]), .A2(a[4]), .Y(n47) );
  FADDX1_RVT U38 ( .A(n33), .B(n32), .CI(n31), .CO(n28), .S(n51) );
  AND2X1_RVT U39 ( .A1(b[5]), .A2(a[4]), .Y(n50) );
  FADDX1_RVT U40 ( .A(n36), .B(n35), .CI(n34), .CO(n31), .S(n54) );
  AND2X1_RVT U41 ( .A1(a[4]), .A2(b[4]), .Y(n53) );
  FADDX1_RVT U42 ( .A(n39), .B(n38), .CI(n37), .CO(n34), .S(n57) );
  AND2X1_RVT U43 ( .A1(b[4]), .A2(a[3]), .Y(n56) );
  FADDX1_RVT U44 ( .A(n42), .B(n41), .CI(n40), .CO(n37), .S(n60) );
  AND2X1_RVT U45 ( .A1(a[3]), .A2(b[3]), .Y(n59) );
  AND2X1_RVT U46 ( .A1(b[0]), .A2(a[5]), .Y(n63) );
  AND2X1_RVT U47 ( .A1(a[3]), .A2(b[2]), .Y(n62) );
  AND2X1_RVT U48 ( .A1(b[1]), .A2(a[4]), .Y(n61) );
  FADDX1_RVT U49 ( .A(n45), .B(n44), .CI(n43), .CO(n135), .S(n139) );
  FADDX1_RVT U50 ( .A(n48), .B(n47), .CI(n46), .CO(n43), .S(n66) );
  AND2X1_RVT U51 ( .A1(b[7]), .A2(a[3]), .Y(n65) );
  FADDX1_RVT U52 ( .A(n51), .B(n50), .CI(n49), .CO(n46), .S(n69) );
  AND2X1_RVT U53 ( .A1(b[6]), .A2(a[3]), .Y(n68) );
  FADDX1_RVT U54 ( .A(n54), .B(n53), .CI(n52), .CO(n49), .S(n72) );
  AND2X1_RVT U55 ( .A1(b[5]), .A2(a[3]), .Y(n71) );
  FADDX1_RVT U56 ( .A(n57), .B(n56), .CI(n55), .CO(n52), .S(n75) );
  AND2X1_RVT U57 ( .A1(b[5]), .A2(a[2]), .Y(n74) );
  FADDX1_RVT U58 ( .A(n60), .B(n59), .CI(n58), .CO(n55), .S(n78) );
  AND2X1_RVT U59 ( .A1(b[4]), .A2(a[2]), .Y(n77) );
  FADDX1_RVT U60 ( .A(n63), .B(n62), .CI(n61), .CO(n58), .S(n81) );
  AND2X1_RVT U61 ( .A1(b[3]), .A2(a[2]), .Y(n80) );
  AND2X1_RVT U62 ( .A1(b[0]), .A2(a[4]), .Y(n84) );
  AND2X1_RVT U63 ( .A1(a[2]), .A2(b[2]), .Y(n83) );
  AND2X1_RVT U64 ( .A1(b[1]), .A2(a[3]), .Y(n82) );
  FADDX1_RVT U65 ( .A(n66), .B(n65), .CI(n64), .CO(n138), .S(n142) );
  FADDX1_RVT U66 ( .A(n69), .B(n68), .CI(n67), .CO(n64), .S(n87) );
  AND2X1_RVT U67 ( .A1(b[7]), .A2(a[2]), .Y(n86) );
  FADDX1_RVT U68 ( .A(n72), .B(n71), .CI(n70), .CO(n67), .S(n119) );
  AND2X1_RVT U69 ( .A1(b[6]), .A2(a[2]), .Y(n118) );
  FADDX1_RVT U70 ( .A(n75), .B(n74), .CI(n73), .CO(n70), .S(n113) );
  AND2X1_RVT U71 ( .A1(a[1]), .A2(b[6]), .Y(n112) );
  FADDX1_RVT U72 ( .A(n78), .B(n77), .CI(n76), .CO(n73), .S(n107) );
  AND2X1_RVT U73 ( .A1(a[1]), .A2(b[5]), .Y(n106) );
  FADDX1_RVT U74 ( .A(n81), .B(n80), .CI(n79), .CO(n76), .S(n101) );
  AND2X1_RVT U75 ( .A1(a[1]), .A2(b[4]), .Y(n100) );
  FADDX1_RVT U76 ( .A(n84), .B(n83), .CI(n82), .CO(n79), .S(n95) );
  AND2X1_RVT U77 ( .A1(a[1]), .A2(b[3]), .Y(n94) );
  AND2X1_RVT U78 ( .A1(b[0]), .A2(a[3]), .Y(n90) );
  AND2X1_RVT U79 ( .A1(a[1]), .A2(b[2]), .Y(n89) );
  AND2X1_RVT U80 ( .A1(b[1]), .A2(a[2]), .Y(n88) );
  FADDX1_RVT U81 ( .A(n87), .B(n86), .CI(n85), .CO(n141), .S(n143) );
  AND2X1_RVT U82 ( .A1(b[1]), .A2(a[1]), .Y(n158) );
  AND2X1_RVT U83 ( .A1(b[0]), .A2(a[2]), .Y(n92) );
  AND2X1_RVT U84 ( .A1(a[0]), .A2(b[2]), .Y(n91) );
  FADDX1_RVT U85 ( .A(n90), .B(n89), .CI(n88), .CO(n93), .S(n98) );
  AND2X1_RVT U86 ( .A1(a[0]), .A2(b[3]), .Y(n97) );
  FADDX1_RVT U87 ( .A(n158), .B(n92), .CI(n91), .CO(n96), .S(n160) );
  AND4X1_RVT U88 ( .A1(n160), .A2(n158), .A3(p[0]), .A4(n156), .Y(n155) );
  FADDX1_RVT U89 ( .A(n95), .B(n94), .CI(n93), .CO(n99), .S(n104) );
  AND2X1_RVT U90 ( .A1(a[0]), .A2(b[4]), .Y(n103) );
  FADDX1_RVT U91 ( .A(n98), .B(n97), .CI(n96), .CO(n102), .S(n156) );
  AND2X1_RVT U92 ( .A1(n155), .A2(n154), .Y(n153) );
  FADDX1_RVT U93 ( .A(n101), .B(n100), .CI(n99), .CO(n105), .S(n110) );
  AND2X1_RVT U94 ( .A1(a[0]), .A2(b[5]), .Y(n109) );
  FADDX1_RVT U95 ( .A(n104), .B(n103), .CI(n102), .CO(n108), .S(n154) );
  AND2X1_RVT U96 ( .A1(n153), .A2(n152), .Y(n151) );
  FADDX1_RVT U97 ( .A(n107), .B(n106), .CI(n105), .CO(n111), .S(n116) );
  AND2X1_RVT U98 ( .A1(a[0]), .A2(b[6]), .Y(n115) );
  FADDX1_RVT U99 ( .A(n110), .B(n109), .CI(n108), .CO(n114), .S(n152) );
  AND2X1_RVT U100 ( .A1(n151), .A2(n150), .Y(n149) );
  FADDX1_RVT U101 ( .A(n113), .B(n112), .CI(n111), .CO(n117), .S(n122) );
  AND2X1_RVT U102 ( .A1(a[0]), .A2(b[7]), .Y(n121) );
  FADDX1_RVT U103 ( .A(n116), .B(n115), .CI(n114), .CO(n120), .S(n150) );
  AND2X1_RVT U104 ( .A1(n149), .A2(n148), .Y(n147) );
  FADDX1_RVT U105 ( .A(n119), .B(n118), .CI(n117), .CO(n85), .S(n125) );
  AND2X1_RVT U106 ( .A1(a[1]), .A2(b[7]), .Y(n124) );
  FADDX1_RVT U107 ( .A(n122), .B(n121), .CI(n120), .CO(n123), .S(n148) );
  AND2X1_RVT U108 ( .A1(n147), .A2(n146), .Y(n145) );
  FADDX1_RVT U109 ( .A(n125), .B(n124), .CI(n123), .CO(n144), .S(n146) );
  OR2X1_RVT U110 ( .A1(n145), .A2(n144), .Y(n126) );
  AND2X1_RVT U111 ( .A1(n143), .A2(n126), .Y(n140) );
  OR2X1_RVT U112 ( .A1(n129), .A2(n128), .Y(n127) );
  AND3X1_RVT U113 ( .A1(b[7]), .A2(a[7]), .A3(n127), .Y(p[15]) );
  AND2X1_RVT U114 ( .A1(a[7]), .A2(b[7]), .Y(n130) );
  FADDX1_RVT U115 ( .A(n130), .B(n129), .CI(n128), .S(p[14]) );
  FADDX1_RVT U116 ( .A(n133), .B(n132), .CI(n131), .CO(n128), .S(p[13]) );
  FADDX1_RVT U117 ( .A(n136), .B(n135), .CI(n134), .CO(n131), .S(p[12]) );
  FADDX1_RVT U118 ( .A(n139), .B(n138), .CI(n137), .CO(n134), .S(p[11]) );
  FADDX1_RVT U119 ( .A(n142), .B(n141), .CI(n140), .CO(n137), .S(p[10]) );
  FADDX1_RVT U120 ( .A(n145), .B(n144), .CI(n143), .S(p[9]) );
  HADDX1_RVT U121 ( .A0(n147), .B0(n146), .SO(p[8]) );
  HADDX1_RVT U122 ( .A0(n149), .B0(n148), .SO(p[7]) );
  HADDX1_RVT U123 ( .A0(n151), .B0(n150), .SO(p[6]) );
  HADDX1_RVT U124 ( .A0(n153), .B0(n152), .SO(p[5]) );
  HADDX1_RVT U125 ( .A0(n155), .B0(n154), .SO(p[4]) );
  AND3X1_RVT U126 ( .A1(n160), .A2(n158), .A3(p[0]), .Y(n157) );
  HADDX1_RVT U127 ( .A0(n157), .B0(n156), .SO(p[3]) );
  AND2X1_RVT U128 ( .A1(n158), .A2(p[0]), .Y(n159) );
  HADDX1_RVT U129 ( .A0(n160), .B0(n159), .SO(p[2]) );
  AND2X1_RVT U130 ( .A1(a[0]), .A2(b[1]), .Y(n162) );
  AND2X1_RVT U131 ( .A1(a[1]), .A2(b[0]), .Y(n161) );
  HADDX1_RVT U132 ( .A0(n162), .B0(n161), .SO(p[1]) );
endmodule


module array_var_bw_mul_bad ( para_mode, a, b, p );
  input [15:0] a;
  input [15:0] b;
  output [31:0] p;
  input para_mode;

  wire   [31:0] p_16;
  wire   [15:0] p_08_hi;
  wire   [15:0] p_08_lo;

  array_fix_bw_mul mul_16_i ( .a(a), .b(b), .p(p_16) );
  array_8_bit_mul_1 mul_08_hi_i ( .a(a[15:8]), .b(b[15:8]), .p(p_08_hi) );
  array_8_bit_mul_0 mul_08_lo_i ( .a(a[7:0]), .b(b[7:0]), .p(p_08_lo) );
  MUX21X1_RVT U33 ( .A1(p_16[0]), .A2(p_08_lo[0]), .S0(para_mode), .Y(p[0]) );
  MUX21X1_RVT U34 ( .A1(p_16[1]), .A2(p_08_lo[1]), .S0(para_mode), .Y(p[1]) );
  MUX21X1_RVT U35 ( .A1(p_16[2]), .A2(p_08_lo[2]), .S0(para_mode), .Y(p[2]) );
  MUX21X1_RVT U36 ( .A1(p_16[3]), .A2(p_08_lo[3]), .S0(para_mode), .Y(p[3]) );
  MUX21X1_RVT U37 ( .A1(p_16[4]), .A2(p_08_lo[4]), .S0(para_mode), .Y(p[4]) );
  MUX21X1_RVT U38 ( .A1(p_16[5]), .A2(p_08_lo[5]), .S0(para_mode), .Y(p[5]) );
  MUX21X1_RVT U39 ( .A1(p_16[6]), .A2(p_08_lo[6]), .S0(para_mode), .Y(p[6]) );
  MUX21X1_RVT U40 ( .A1(p_16[7]), .A2(p_08_lo[7]), .S0(para_mode), .Y(p[7]) );
  MUX21X1_RVT U41 ( .A1(p_16[8]), .A2(p_08_lo[8]), .S0(para_mode), .Y(p[8]) );
  MUX21X1_RVT U42 ( .A1(p_16[9]), .A2(p_08_lo[9]), .S0(para_mode), .Y(p[9]) );
  MUX21X1_RVT U43 ( .A1(p_16[10]), .A2(p_08_lo[10]), .S0(para_mode), .Y(p[10])
         );
  MUX21X1_RVT U44 ( .A1(p_16[11]), .A2(p_08_lo[11]), .S0(para_mode), .Y(p[11])
         );
  MUX21X1_RVT U45 ( .A1(p_16[12]), .A2(p_08_lo[12]), .S0(para_mode), .Y(p[12])
         );
  MUX21X1_RVT U46 ( .A1(p_16[13]), .A2(p_08_lo[13]), .S0(para_mode), .Y(p[13])
         );
  MUX21X1_RVT U47 ( .A1(p_16[14]), .A2(p_08_lo[14]), .S0(para_mode), .Y(p[14])
         );
  MUX21X1_RVT U48 ( .A1(p_16[15]), .A2(p_08_lo[15]), .S0(para_mode), .Y(p[15])
         );
  MUX21X1_RVT U49 ( .A1(p_16[16]), .A2(p_08_hi[0]), .S0(para_mode), .Y(p[16])
         );
  MUX21X1_RVT U50 ( .A1(p_16[17]), .A2(p_08_hi[1]), .S0(para_mode), .Y(p[17])
         );
  MUX21X1_RVT U51 ( .A1(p_16[18]), .A2(p_08_hi[2]), .S0(para_mode), .Y(p[18])
         );
  MUX21X1_RVT U52 ( .A1(p_16[19]), .A2(p_08_hi[3]), .S0(para_mode), .Y(p[19])
         );
  MUX21X1_RVT U53 ( .A1(p_16[20]), .A2(p_08_hi[4]), .S0(para_mode), .Y(p[20])
         );
  MUX21X1_RVT U54 ( .A1(p_16[21]), .A2(p_08_hi[5]), .S0(para_mode), .Y(p[21])
         );
  MUX21X1_RVT U55 ( .A1(p_16[22]), .A2(p_08_hi[6]), .S0(para_mode), .Y(p[22])
         );
  MUX21X1_RVT U56 ( .A1(p_16[23]), .A2(p_08_hi[7]), .S0(para_mode), .Y(p[23])
         );
  MUX21X1_RVT U57 ( .A1(p_16[24]), .A2(p_08_hi[8]), .S0(para_mode), .Y(p[24])
         );
  MUX21X1_RVT U58 ( .A1(p_16[25]), .A2(p_08_hi[9]), .S0(para_mode), .Y(p[25])
         );
  MUX21X1_RVT U59 ( .A1(p_16[26]), .A2(p_08_hi[10]), .S0(para_mode), .Y(p[26])
         );
  MUX21X1_RVT U60 ( .A1(p_16[27]), .A2(p_08_hi[11]), .S0(para_mode), .Y(p[27])
         );
  MUX21X1_RVT U61 ( .A1(p_16[28]), .A2(p_08_hi[12]), .S0(para_mode), .Y(p[28])
         );
  MUX21X1_RVT U62 ( .A1(p_16[29]), .A2(p_08_hi[13]), .S0(para_mode), .Y(p[29])
         );
  MUX21X1_RVT U63 ( .A1(p_16[30]), .A2(p_08_hi[14]), .S0(para_mode), .Y(p[30])
         );
  MUX21X1_RVT U64 ( .A1(p_16[31]), .A2(p_08_hi[15]), .S0(para_mode), .Y(p[31])
         );
endmodule

