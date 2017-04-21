/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Sun Apr 16 14:49:18 2017
/////////////////////////////////////////////////////////////


module dadda_fix_bw_mul ( a, b, p );
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
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788;

  AND2X1_RVT U2 ( .A1(a[14]), .A2(b[13]), .Y(n9) );
  AND2X1_RVT U3 ( .A1(b[15]), .A2(a[12]), .Y(n8) );
  AND2X1_RVT U4 ( .A1(b[14]), .A2(a[13]), .Y(n7) );
  AND2X1_RVT U5 ( .A1(b[15]), .A2(a[13]), .Y(n5) );
  AND2X1_RVT U6 ( .A1(a[15]), .A2(b[13]), .Y(n4) );
  AND2X1_RVT U7 ( .A1(b[15]), .A2(a[14]), .Y(n2) );
  AND2X1_RVT U8 ( .A1(a[15]), .A2(b[14]), .Y(n1) );
  FADDX1_RVT U9 ( .A(n3), .B(n2), .CI(n1), .CO(n717), .S(n721) );
  FADDX1_RVT U10 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n12) );
  AND2X1_RVT U11 ( .A1(b[14]), .A2(a[14]), .Y(n11) );
  FADDX1_RVT U12 ( .A(n9), .B(n8), .CI(n7), .CO(n6), .S(n15) );
  AND2X1_RVT U13 ( .A1(b[12]), .A2(a[15]), .Y(n14) );
  AND2X1_RVT U14 ( .A1(a[12]), .A2(b[13]), .Y(n21) );
  AND2X1_RVT U15 ( .A1(b[15]), .A2(a[10]), .Y(n20) );
  AND2X1_RVT U16 ( .A1(a[11]), .A2(b[14]), .Y(n19) );
  AND2X1_RVT U17 ( .A1(b[15]), .A2(a[11]), .Y(n23) );
  AND2X1_RVT U18 ( .A1(b[13]), .A2(a[13]), .Y(n22) );
  FADDX1_RVT U19 ( .A(n12), .B(n11), .CI(n10), .CO(n720), .S(n724) );
  FADDX1_RVT U20 ( .A(n15), .B(n14), .CI(n13), .CO(n10), .S(n27) );
  AND2X1_RVT U21 ( .A1(a[12]), .A2(b[14]), .Y(n18) );
  AND2X1_RVT U22 ( .A1(b[12]), .A2(a[14]), .Y(n17) );
  AND2X1_RVT U23 ( .A1(b[11]), .A2(a[15]), .Y(n16) );
  FADDX1_RVT U24 ( .A(n18), .B(n17), .CI(n16), .CO(n26), .S(n30) );
  FADDX1_RVT U25 ( .A(n21), .B(n20), .CI(n19), .CO(n24), .S(n42) );
  AND2X1_RVT U26 ( .A1(b[12]), .A2(a[13]), .Y(n41) );
  AND2X1_RVT U27 ( .A1(a[11]), .A2(b[13]), .Y(n39) );
  AND2X1_RVT U28 ( .A1(b[15]), .A2(a[9]), .Y(n38) );
  AND2X1_RVT U29 ( .A1(a[10]), .A2(b[14]), .Y(n37) );
  FADDX1_RVT U30 ( .A(n24), .B(n23), .CI(n22), .CO(n13), .S(n28) );
  FADDX1_RVT U31 ( .A(n27), .B(n26), .CI(n25), .CO(n723), .S(n727) );
  FADDX1_RVT U32 ( .A(n30), .B(n29), .CI(n28), .CO(n25), .S(n45) );
  AND2X1_RVT U33 ( .A1(b[10]), .A2(a[14]), .Y(n36) );
  AND2X1_RVT U34 ( .A1(b[12]), .A2(a[12]), .Y(n35) );
  AND2X1_RVT U35 ( .A1(b[11]), .A2(a[13]), .Y(n34) );
  AND2X1_RVT U36 ( .A1(b[11]), .A2(a[14]), .Y(n32) );
  AND2X1_RVT U37 ( .A1(b[10]), .A2(a[15]), .Y(n31) );
  FADDX1_RVT U38 ( .A(n33), .B(n32), .CI(n31), .CO(n44), .S(n48) );
  FADDX1_RVT U39 ( .A(n36), .B(n35), .CI(n34), .CO(n33), .S(n63) );
  AND2X1_RVT U40 ( .A1(a[9]), .A2(b[13]), .Y(n57) );
  AND2X1_RVT U41 ( .A1(b[15]), .A2(a[7]), .Y(n56) );
  AND2X1_RVT U42 ( .A1(a[8]), .A2(b[14]), .Y(n55) );
  AND2X1_RVT U43 ( .A1(b[15]), .A2(a[8]), .Y(n59) );
  AND2X1_RVT U44 ( .A1(a[10]), .A2(b[13]), .Y(n58) );
  FADDX1_RVT U45 ( .A(n39), .B(n38), .CI(n37), .CO(n40), .S(n61) );
  FADDX1_RVT U46 ( .A(n42), .B(n41), .CI(n40), .CO(n29), .S(n46) );
  FADDX1_RVT U47 ( .A(n45), .B(n44), .CI(n43), .CO(n726), .S(n730) );
  FADDX1_RVT U48 ( .A(n48), .B(n47), .CI(n46), .CO(n43), .S(n66) );
  AND2X1_RVT U49 ( .A1(a[9]), .A2(b[14]), .Y(n72) );
  AND2X1_RVT U50 ( .A1(b[9]), .A2(a[14]), .Y(n71) );
  AND2X1_RVT U51 ( .A1(a[15]), .A2(b[8]), .Y(n70) );
  AND2X1_RVT U52 ( .A1(a[15]), .A2(b[9]), .Y(n50) );
  AND2X1_RVT U53 ( .A1(b[10]), .A2(a[13]), .Y(n54) );
  AND2X1_RVT U54 ( .A1(b[12]), .A2(a[11]), .Y(n53) );
  AND2X1_RVT U55 ( .A1(b[11]), .A2(a[12]), .Y(n52) );
  FADDX1_RVT U56 ( .A(n51), .B(n50), .CI(n49), .CO(n65), .S(n69) );
  FADDX1_RVT U57 ( .A(n54), .B(n53), .CI(n52), .CO(n49), .S(n90) );
  FADDX1_RVT U58 ( .A(n57), .B(n56), .CI(n55), .CO(n60), .S(n87) );
  AND2X1_RVT U59 ( .A1(b[12]), .A2(a[10]), .Y(n86) );
  AND2X1_RVT U60 ( .A1(a[8]), .A2(b[13]), .Y(n84) );
  AND2X1_RVT U61 ( .A1(a[6]), .A2(b[15]), .Y(n83) );
  AND2X1_RVT U62 ( .A1(a[7]), .A2(b[14]), .Y(n82) );
  FADDX1_RVT U63 ( .A(n60), .B(n59), .CI(n58), .CO(n62), .S(n88) );
  FADDX1_RVT U64 ( .A(n63), .B(n62), .CI(n61), .CO(n47), .S(n67) );
  FADDX1_RVT U65 ( .A(n66), .B(n65), .CI(n64), .CO(n729), .S(n733) );
  FADDX1_RVT U66 ( .A(n69), .B(n68), .CI(n67), .CO(n64), .S(n93) );
  FADDX1_RVT U67 ( .A(n72), .B(n71), .CI(n70), .CO(n51), .S(n75) );
  AND2X1_RVT U68 ( .A1(b[10]), .A2(a[11]), .Y(n81) );
  AND2X1_RVT U69 ( .A1(b[12]), .A2(a[9]), .Y(n80) );
  AND2X1_RVT U70 ( .A1(b[11]), .A2(a[10]), .Y(n79) );
  AND2X1_RVT U71 ( .A1(b[11]), .A2(a[11]), .Y(n77) );
  AND2X1_RVT U72 ( .A1(b[10]), .A2(a[12]), .Y(n76) );
  AND2X1_RVT U73 ( .A1(a[15]), .A2(b[7]), .Y(n99) );
  AND2X1_RVT U74 ( .A1(b[9]), .A2(a[13]), .Y(n98) );
  AND2X1_RVT U75 ( .A1(a[14]), .A2(b[8]), .Y(n97) );
  FADDX1_RVT U76 ( .A(n75), .B(n74), .CI(n73), .CO(n92), .S(n96) );
  FADDX1_RVT U77 ( .A(n78), .B(n77), .CI(n76), .CO(n74), .S(n120) );
  FADDX1_RVT U78 ( .A(n81), .B(n80), .CI(n79), .CO(n78), .S(n117) );
  AND2X1_RVT U79 ( .A1(b[6]), .A2(a[13]), .Y(n111) );
  AND2X1_RVT U80 ( .A1(a[15]), .A2(b[4]), .Y(n110) );
  AND2X1_RVT U81 ( .A1(a[14]), .A2(b[5]), .Y(n109) );
  AND2X1_RVT U82 ( .A1(a[5]), .A2(b[15]), .Y(n113) );
  AND2X1_RVT U83 ( .A1(a[7]), .A2(b[13]), .Y(n112) );
  FADDX1_RVT U84 ( .A(n84), .B(n83), .CI(n82), .CO(n85), .S(n115) );
  FADDX1_RVT U85 ( .A(n87), .B(n86), .CI(n85), .CO(n89), .S(n118) );
  FADDX1_RVT U86 ( .A(n90), .B(n89), .CI(n88), .CO(n68), .S(n94) );
  FADDX1_RVT U87 ( .A(n93), .B(n92), .CI(n91), .CO(n732), .S(n736) );
  FADDX1_RVT U88 ( .A(n96), .B(n95), .CI(n94), .CO(n91), .S(n123) );
  FADDX1_RVT U89 ( .A(n99), .B(n98), .CI(n97), .CO(n73), .S(n102) );
  AND2X1_RVT U90 ( .A1(b[7]), .A2(a[13]), .Y(n132) );
  AND2X1_RVT U91 ( .A1(b[9]), .A2(a[11]), .Y(n131) );
  AND2X1_RVT U92 ( .A1(a[12]), .A2(b[8]), .Y(n130) );
  AND2X1_RVT U93 ( .A1(b[9]), .A2(a[12]), .Y(n104) );
  AND2X1_RVT U94 ( .A1(b[10]), .A2(a[10]), .Y(n108) );
  AND2X1_RVT U95 ( .A1(b[12]), .A2(a[8]), .Y(n107) );
  AND2X1_RVT U96 ( .A1(b[11]), .A2(a[9]), .Y(n106) );
  AND2X1_RVT U97 ( .A1(a[15]), .A2(b[6]), .Y(n129) );
  AND2X1_RVT U98 ( .A1(a[13]), .A2(b[8]), .Y(n128) );
  AND2X1_RVT U99 ( .A1(b[7]), .A2(a[14]), .Y(n127) );
  FADDX1_RVT U100 ( .A(n102), .B(n101), .CI(n100), .CO(n122), .S(n126) );
  FADDX1_RVT U101 ( .A(n105), .B(n104), .CI(n103), .CO(n101), .S(n156) );
  FADDX1_RVT U102 ( .A(n108), .B(n107), .CI(n106), .CO(n103), .S(n153) );
  FADDX1_RVT U103 ( .A(n111), .B(n110), .CI(n109), .CO(n114), .S(n150) );
  AND2X1_RVT U104 ( .A1(a[6]), .A2(b[13]), .Y(n149) );
  AND2X1_RVT U105 ( .A1(a[13]), .A2(b[5]), .Y(n147) );
  AND2X1_RVT U106 ( .A1(a[15]), .A2(b[3]), .Y(n146) );
  AND2X1_RVT U107 ( .A1(b[4]), .A2(a[14]), .Y(n145) );
  FADDX1_RVT U108 ( .A(n114), .B(n113), .CI(n112), .CO(n116), .S(n151) );
  FADDX1_RVT U109 ( .A(n117), .B(n116), .CI(n115), .CO(n119), .S(n154) );
  FADDX1_RVT U110 ( .A(n120), .B(n119), .CI(n118), .CO(n95), .S(n124) );
  FADDX1_RVT U111 ( .A(n123), .B(n122), .CI(n121), .CO(n735), .S(n739) );
  FADDX1_RVT U112 ( .A(n126), .B(n125), .CI(n124), .CO(n121), .S(n159) );
  FADDX1_RVT U113 ( .A(n129), .B(n128), .CI(n127), .CO(n100), .S(n135) );
  FADDX1_RVT U114 ( .A(n132), .B(n131), .CI(n130), .CO(n105), .S(n138) );
  AND2X1_RVT U115 ( .A1(a[10]), .A2(b[8]), .Y(n144) );
  AND2X1_RVT U116 ( .A1(b[6]), .A2(a[12]), .Y(n143) );
  AND2X1_RVT U117 ( .A1(b[7]), .A2(a[11]), .Y(n142) );
  AND2X1_RVT U118 ( .A1(b[11]), .A2(a[8]), .Y(n140) );
  AND2X1_RVT U119 ( .A1(b[10]), .A2(a[9]), .Y(n139) );
  AND2X1_RVT U120 ( .A1(b[7]), .A2(a[12]), .Y(n168) );
  AND2X1_RVT U121 ( .A1(b[9]), .A2(a[10]), .Y(n167) );
  AND2X1_RVT U122 ( .A1(a[11]), .A2(b[8]), .Y(n166) );
  AND2X1_RVT U123 ( .A1(a[6]), .A2(b[14]), .Y(n165) );
  AND2X1_RVT U124 ( .A1(b[6]), .A2(a[14]), .Y(n164) );
  AND2X1_RVT U125 ( .A1(a[15]), .A2(b[5]), .Y(n163) );
  FADDX1_RVT U126 ( .A(n135), .B(n134), .CI(n133), .CO(n158), .S(n162) );
  FADDX1_RVT U127 ( .A(n138), .B(n137), .CI(n136), .CO(n134), .S(n192) );
  FADDX1_RVT U128 ( .A(n141), .B(n140), .CI(n139), .CO(n137), .S(n189) );
  FADDX1_RVT U129 ( .A(n144), .B(n143), .CI(n142), .CO(n141), .S(n186) );
  AND2X1_RVT U130 ( .A1(b[4]), .A2(a[13]), .Y(n183) );
  AND2X1_RVT U131 ( .A1(a[15]), .A2(b[2]), .Y(n182) );
  AND2X1_RVT U132 ( .A1(b[3]), .A2(a[14]), .Y(n181) );
  FADDX1_RVT U133 ( .A(n147), .B(n146), .CI(n145), .CO(n148), .S(n184) );
  FADDX1_RVT U134 ( .A(n150), .B(n149), .CI(n148), .CO(n152), .S(n187) );
  FADDX1_RVT U135 ( .A(n153), .B(n152), .CI(n151), .CO(n155), .S(n190) );
  FADDX1_RVT U136 ( .A(n156), .B(n155), .CI(n154), .CO(n125), .S(n160) );
  FADDX1_RVT U137 ( .A(n159), .B(n158), .CI(n157), .CO(n738), .S(n742) );
  FADDX1_RVT U138 ( .A(n162), .B(n161), .CI(n160), .CO(n157), .S(n195) );
  FADDX1_RVT U139 ( .A(n165), .B(n164), .CI(n163), .CO(n133), .S(n171) );
  FADDX1_RVT U140 ( .A(n168), .B(n167), .CI(n166), .CO(n136), .S(n174) );
  AND2X1_RVT U141 ( .A1(b[10]), .A2(a[7]), .Y(n206) );
  AND2X1_RVT U142 ( .A1(a[9]), .A2(b[8]), .Y(n205) );
  AND2X1_RVT U143 ( .A1(b[9]), .A2(a[8]), .Y(n204) );
  AND2X1_RVT U144 ( .A1(b[11]), .A2(a[7]), .Y(n176) );
  AND2X1_RVT U145 ( .A1(b[7]), .A2(a[10]), .Y(n180) );
  AND2X1_RVT U146 ( .A1(a[12]), .A2(b[5]), .Y(n179) );
  AND2X1_RVT U147 ( .A1(b[6]), .A2(a[11]), .Y(n178) );
  AND2X1_RVT U148 ( .A1(a[6]), .A2(b[12]), .Y(n207) );
  AND2X1_RVT U149 ( .A1(b[9]), .A2(a[9]), .Y(n203) );
  AND2X1_RVT U150 ( .A1(b[10]), .A2(a[8]), .Y(n202) );
  AND2X1_RVT U151 ( .A1(b[15]), .A2(a[4]), .Y(n201) );
  AND2X1_RVT U152 ( .A1(b[12]), .A2(a[7]), .Y(n200) );
  AND2X1_RVT U153 ( .A1(a[5]), .A2(b[14]), .Y(n199) );
  FADDX1_RVT U154 ( .A(n171), .B(n170), .CI(n169), .CO(n194), .S(n198) );
  FADDX1_RVT U155 ( .A(n174), .B(n173), .CI(n172), .CO(n170), .S(n233) );
  FADDX1_RVT U156 ( .A(n177), .B(n176), .CI(n175), .CO(n173), .S(n230) );
  FADDX1_RVT U157 ( .A(n180), .B(n179), .CI(n178), .CO(n175), .S(n227) );
  AND2X1_RVT U158 ( .A1(b[3]), .A2(a[13]), .Y(n224) );
  AND2X1_RVT U159 ( .A1(a[15]), .A2(b[1]), .Y(n223) );
  AND2X1_RVT U160 ( .A1(a[14]), .A2(b[2]), .Y(n222) );
  FADDX1_RVT U161 ( .A(n183), .B(n182), .CI(n181), .CO(n185), .S(n225) );
  FADDX1_RVT U162 ( .A(n186), .B(n185), .CI(n184), .CO(n188), .S(n228) );
  FADDX1_RVT U163 ( .A(n189), .B(n188), .CI(n187), .CO(n191), .S(n231) );
  FADDX1_RVT U164 ( .A(n192), .B(n191), .CI(n190), .CO(n161), .S(n196) );
  FADDX1_RVT U165 ( .A(n195), .B(n194), .CI(n193), .CO(n741), .S(n745) );
  FADDX1_RVT U166 ( .A(n198), .B(n197), .CI(n196), .CO(n193), .S(n236) );
  FADDX1_RVT U167 ( .A(n201), .B(n200), .CI(n199), .CO(n169), .S(n212) );
  FADDX1_RVT U168 ( .A(n207), .B(n203), .CI(n202), .CO(n172), .S(n215) );
  FADDX1_RVT U169 ( .A(n206), .B(n205), .CI(n204), .CO(n177), .S(n218) );
  AND2X1_RVT U170 ( .A1(b[6]), .A2(a[10]), .Y(n221) );
  AND2X1_RVT U171 ( .A1(b[4]), .A2(a[12]), .Y(n220) );
  AND2X1_RVT U172 ( .A1(a[11]), .A2(b[5]), .Y(n219) );
  AND2X1_RVT U173 ( .A1(b[9]), .A2(a[7]), .Y(n247) );
  AND2X1_RVT U174 ( .A1(b[7]), .A2(a[9]), .Y(n246) );
  AND2X1_RVT U175 ( .A1(a[8]), .A2(b[8]), .Y(n245) );
  AND4X1_RVT U176 ( .A1(a[6]), .A2(b[11]), .A3(a[5]), .A4(b[10]), .Y(n209) );
  AND3X1_RVT U177 ( .A1(n207), .A2(a[5]), .A3(b[11]), .Y(n208) );
  OR2X1_RVT U178 ( .A1(n209), .A2(n208), .Y(n213) );
  AND2X1_RVT U179 ( .A1(b[15]), .A2(a[3]), .Y(n242) );
  AND2X1_RVT U180 ( .A1(a[5]), .A2(b[13]), .Y(n241) );
  AND2X1_RVT U181 ( .A1(a[4]), .A2(b[14]), .Y(n240) );
  FADDX1_RVT U182 ( .A(n212), .B(n211), .CI(n210), .CO(n235), .S(n239) );
  FADDX1_RVT U183 ( .A(n215), .B(n214), .CI(n213), .CO(n211), .S(n276) );
  FADDX1_RVT U184 ( .A(n218), .B(n217), .CI(n216), .CO(n214), .S(n273) );
  FADDX1_RVT U185 ( .A(n221), .B(n220), .CI(n219), .CO(n217), .S(n270) );
  AND2X1_RVT U186 ( .A1(a[13]), .A2(b[2]), .Y(n267) );
  AND2X1_RVT U187 ( .A1(a[15]), .A2(b[0]), .Y(n266) );
  AND2X1_RVT U188 ( .A1(b[1]), .A2(a[14]), .Y(n265) );
  FADDX1_RVT U189 ( .A(n224), .B(n223), .CI(n222), .CO(n226), .S(n268) );
  FADDX1_RVT U190 ( .A(n227), .B(n226), .CI(n225), .CO(n229), .S(n271) );
  FADDX1_RVT U191 ( .A(n230), .B(n229), .CI(n228), .CO(n232), .S(n274) );
  FADDX1_RVT U192 ( .A(n233), .B(n232), .CI(n231), .CO(n197), .S(n237) );
  FADDX1_RVT U193 ( .A(n236), .B(n235), .CI(n234), .CO(n744), .S(n748) );
  FADDX1_RVT U194 ( .A(n239), .B(n238), .CI(n237), .CO(n234), .S(n279) );
  FADDX1_RVT U195 ( .A(n242), .B(n241), .CI(n240), .CO(n210), .S(n255) );
  AND2X1_RVT U196 ( .A1(b[12]), .A2(a[5]), .Y(n244) );
  INVX0_RVT U197 ( .A(a[5]), .Y(n621) );
  INVX0_RVT U198 ( .A(b[10]), .Y(n248) );
  OR2X1_RVT U199 ( .A1(n621), .A2(n248), .Y(n293) );
  AND3X1_RVT U200 ( .A1(b[11]), .A2(a[6]), .A3(n293), .Y(n243) );
  HADDX1_RVT U201 ( .A0(n244), .B0(n243), .SO(n258) );
  FADDX1_RVT U202 ( .A(n247), .B(n246), .CI(n245), .CO(n216), .S(n261) );
  AND2X1_RVT U203 ( .A1(a[10]), .A2(b[5]), .Y(n264) );
  AND2X1_RVT U204 ( .A1(b[3]), .A2(a[12]), .Y(n263) );
  AND2X1_RVT U205 ( .A1(b[4]), .A2(a[11]), .Y(n262) );
  AND2X1_RVT U206 ( .A1(a[7]), .A2(b[8]), .Y(n291) );
  AND2X1_RVT U207 ( .A1(b[6]), .A2(a[9]), .Y(n290) );
  AND2X1_RVT U208 ( .A1(b[7]), .A2(a[8]), .Y(n292) );
  AND2X1_RVT U209 ( .A1(b[11]), .A2(a[5]), .Y(n249) );
  INVX0_RVT U210 ( .A(a[6]), .Y(n484) );
  OR2X1_RVT U211 ( .A1(n484), .A2(n248), .Y(n251) );
  HADDX1_RVT U212 ( .A0(n249), .B0(n251), .SO(n288) );
  INVX0_RVT U213 ( .A(b[12]), .Y(n296) );
  INVX0_RVT U214 ( .A(a[4]), .Y(n664) );
  OR2X1_RVT U215 ( .A1(n296), .A2(n664), .Y(n287) );
  INVX0_RVT U216 ( .A(b[9]), .Y(n250) );
  OR3X1_RVT U217 ( .A1(n621), .A2(n251), .A3(n250), .Y(n286) );
  INVX0_RVT U218 ( .A(n252), .Y(n256) );
  AND2X1_RVT U219 ( .A1(b[15]), .A2(a[2]), .Y(n285) );
  AND2X1_RVT U220 ( .A1(a[4]), .A2(b[13]), .Y(n284) );
  AND2X1_RVT U221 ( .A1(a[3]), .A2(b[14]), .Y(n283) );
  FADDX1_RVT U222 ( .A(n255), .B(n254), .CI(n253), .CO(n278), .S(n282) );
  FADDX1_RVT U223 ( .A(n258), .B(n257), .CI(n256), .CO(n254), .S(n321) );
  FADDX1_RVT U224 ( .A(n261), .B(n260), .CI(n259), .CO(n257), .S(n318) );
  FADDX1_RVT U225 ( .A(n264), .B(n263), .CI(n262), .CO(n260), .S(n315) );
  AND2X1_RVT U226 ( .A1(a[12]), .A2(b[2]), .Y(n312) );
  AND2X1_RVT U227 ( .A1(b[0]), .A2(a[14]), .Y(n311) );
  AND2X1_RVT U228 ( .A1(b[1]), .A2(a[13]), .Y(n310) );
  FADDX1_RVT U229 ( .A(n267), .B(n266), .CI(n265), .CO(n269), .S(n313) );
  FADDX1_RVT U230 ( .A(n270), .B(n269), .CI(n268), .CO(n272), .S(n316) );
  FADDX1_RVT U231 ( .A(n273), .B(n272), .CI(n271), .CO(n275), .S(n319) );
  FADDX1_RVT U232 ( .A(n276), .B(n275), .CI(n274), .CO(n238), .S(n280) );
  FADDX1_RVT U233 ( .A(n279), .B(n278), .CI(n277), .CO(n747), .S(n751) );
  FADDX1_RVT U234 ( .A(n282), .B(n281), .CI(n280), .CO(n277), .S(n324) );
  FADDX1_RVT U235 ( .A(n285), .B(n284), .CI(n283), .CO(n253), .S(n300) );
  FADDX1_RVT U236 ( .A(n288), .B(n287), .CI(n286), .CO(n252), .S(n289) );
  INVX0_RVT U237 ( .A(n289), .Y(n303) );
  FADDX1_RVT U238 ( .A(n291), .B(n290), .CI(n292), .CO(n259), .S(n306) );
  AND2X1_RVT U239 ( .A1(a[7]), .A2(b[6]), .Y(n391) );
  AND2X1_RVT U240 ( .A1(n391), .A2(n292), .Y(n305) );
  AND2X1_RVT U241 ( .A1(b[4]), .A2(a[10]), .Y(n309) );
  AND2X1_RVT U242 ( .A1(a[9]), .A2(b[5]), .Y(n308) );
  AND2X1_RVT U243 ( .A1(b[3]), .A2(a[11]), .Y(n307) );
  AND2X1_RVT U244 ( .A1(b[9]), .A2(a[6]), .Y(n294) );
  HADDX1_RVT U245 ( .A0(n294), .B0(n293), .SO(n333) );
  INVX0_RVT U246 ( .A(b[11]), .Y(n295) );
  OR2X1_RVT U247 ( .A1(n295), .A2(n664), .Y(n332) );
  INVX0_RVT U248 ( .A(a[3]), .Y(n674) );
  OR2X1_RVT U249 ( .A1(n296), .A2(n674), .Y(n331) );
  INVX0_RVT U250 ( .A(n297), .Y(n301) );
  AND2X1_RVT U251 ( .A1(b[15]), .A2(a[1]), .Y(n330) );
  AND2X1_RVT U252 ( .A1(a[3]), .A2(b[13]), .Y(n329) );
  AND2X1_RVT U253 ( .A1(a[2]), .A2(b[14]), .Y(n328) );
  FADDX1_RVT U254 ( .A(n300), .B(n299), .CI(n298), .CO(n323), .S(n327) );
  FADDX1_RVT U255 ( .A(n303), .B(n302), .CI(n301), .CO(n299), .S(n367) );
  FADDX1_RVT U256 ( .A(n306), .B(n305), .CI(n304), .CO(n302), .S(n363) );
  FADDX1_RVT U257 ( .A(n309), .B(n308), .CI(n307), .CO(n304), .S(n359) );
  AND2X1_RVT U258 ( .A1(b[1]), .A2(a[12]), .Y(n355) );
  AND2X1_RVT U259 ( .A1(a[11]), .A2(b[2]), .Y(n354) );
  AND2X1_RVT U260 ( .A1(b[0]), .A2(a[13]), .Y(n353) );
  FADDX1_RVT U261 ( .A(n312), .B(n311), .CI(n310), .CO(n314), .S(n357) );
  FADDX1_RVT U262 ( .A(n315), .B(n314), .CI(n313), .CO(n317), .S(n361) );
  FADDX1_RVT U263 ( .A(n318), .B(n317), .CI(n316), .CO(n320), .S(n365) );
  FADDX1_RVT U264 ( .A(n321), .B(n320), .CI(n319), .CO(n281), .S(n325) );
  FADDX1_RVT U265 ( .A(n324), .B(n323), .CI(n322), .CO(n750), .S(n754) );
  FADDX1_RVT U266 ( .A(n327), .B(n326), .CI(n325), .CO(n322), .S(n372) );
  FADDX1_RVT U267 ( .A(n330), .B(n329), .CI(n328), .CO(n298), .S(n341) );
  FADDX1_RVT U268 ( .A(n333), .B(n332), .CI(n331), .CO(n297), .S(n334) );
  INVX0_RVT U269 ( .A(n334), .Y(n345) );
  AND2X1_RVT U270 ( .A1(b[7]), .A2(a[7]), .Y(n336) );
  INVX0_RVT U271 ( .A(a[8]), .Y(n527) );
  INVX0_RVT U272 ( .A(b[6]), .Y(n590) );
  OR2X1_RVT U273 ( .A1(n527), .A2(n590), .Y(n335) );
  HADDX1_RVT U274 ( .A0(n336), .B0(n335), .SO(n349) );
  INVX0_RVT U275 ( .A(b[8]), .Y(n593) );
  OR2X1_RVT U276 ( .A1(n484), .A2(n593), .Y(n348) );
  INVX0_RVT U277 ( .A(b[4]), .Y(n673) );
  INVX0_RVT U278 ( .A(a[10]), .Y(n398) );
  AND2X1_RVT U279 ( .A1(a[9]), .A2(b[3]), .Y(n337) );
  INVX0_RVT U280 ( .A(n337), .Y(n431) );
  OR3X1_RVT U281 ( .A1(n673), .A2(n398), .A3(n431), .Y(n347) );
  INVX0_RVT U282 ( .A(n338), .Y(n344) );
  AND2X1_RVT U283 ( .A1(b[11]), .A2(a[3]), .Y(n382) );
  AND2X1_RVT U284 ( .A1(a[5]), .A2(b[9]), .Y(n381) );
  AND2X1_RVT U285 ( .A1(b[10]), .A2(a[4]), .Y(n380) );
  AND2X1_RVT U286 ( .A1(b[15]), .A2(a[0]), .Y(n379) );
  AND2X1_RVT U287 ( .A1(a[2]), .A2(b[13]), .Y(n378) );
  AND2X1_RVT U288 ( .A1(a[1]), .A2(b[14]), .Y(n377) );
  FADDX1_RVT U289 ( .A(n341), .B(n340), .CI(n339), .CO(n371), .S(n342) );
  INVX0_RVT U290 ( .A(n342), .Y(n375) );
  FADDX1_RVT U291 ( .A(n345), .B(n344), .CI(n343), .CO(n340), .S(n346) );
  INVX0_RVT U292 ( .A(n346), .Y(n407) );
  FADDX1_RVT U293 ( .A(n349), .B(n348), .CI(n347), .CO(n338), .S(n404) );
  AND2X1_RVT U294 ( .A1(a[9]), .A2(b[4]), .Y(n351) );
  INVX0_RVT U295 ( .A(b[3]), .Y(n680) );
  OR2X1_RVT U296 ( .A1(n398), .A2(n680), .Y(n350) );
  HADDX1_RVT U297 ( .A0(n351), .B0(n350), .SO(n401) );
  AND2X1_RVT U298 ( .A1(b[0]), .A2(a[11]), .Y(n465) );
  AND3X1_RVT U299 ( .A1(b[1]), .A2(a[12]), .A3(n465), .Y(n352) );
  INVX0_RVT U300 ( .A(n352), .Y(n400) );
  FADDX1_RVT U301 ( .A(n355), .B(n354), .CI(n353), .CO(n358), .S(n356) );
  INVX0_RVT U302 ( .A(n356), .Y(n399) );
  FADDX1_RVT U303 ( .A(n359), .B(n358), .CI(n357), .CO(n362), .S(n360) );
  INVX0_RVT U304 ( .A(n360), .Y(n402) );
  FADDX1_RVT U305 ( .A(n363), .B(n362), .CI(n361), .CO(n366), .S(n364) );
  INVX0_RVT U306 ( .A(n364), .Y(n405) );
  FADDX1_RVT U307 ( .A(n367), .B(n366), .CI(n365), .CO(n326), .S(n368) );
  INVX0_RVT U308 ( .A(n368), .Y(n373) );
  INVX0_RVT U309 ( .A(n369), .Y(n370) );
  FADDX1_RVT U310 ( .A(n372), .B(n371), .CI(n370), .CO(n753), .S(n757) );
  FADDX1_RVT U311 ( .A(n375), .B(n374), .CI(n373), .CO(n369), .S(n376) );
  INVX0_RVT U312 ( .A(n376), .Y(n411) );
  FADDX1_RVT U313 ( .A(n379), .B(n378), .CI(n377), .CO(n339), .S(n385) );
  FADDX1_RVT U314 ( .A(n382), .B(n381), .CI(n380), .CO(n343), .S(n389) );
  AND2X1_RVT U315 ( .A1(a[6]), .A2(b[7]), .Y(n393) );
  AND2X1_RVT U316 ( .A1(a[8]), .A2(b[5]), .Y(n392) );
  AND2X1_RVT U317 ( .A1(b[10]), .A2(a[3]), .Y(n421) );
  AND2X1_RVT U318 ( .A1(a[5]), .A2(b[8]), .Y(n420) );
  AND2X1_RVT U319 ( .A1(b[9]), .A2(a[4]), .Y(n419) );
  AND2X1_RVT U320 ( .A1(a[0]), .A2(b[14]), .Y(n418) );
  AND2X1_RVT U321 ( .A1(b[12]), .A2(a[2]), .Y(n417) );
  AND2X1_RVT U322 ( .A1(a[1]), .A2(b[13]), .Y(n416) );
  FADDX1_RVT U323 ( .A(n385), .B(n384), .CI(n383), .CO(n410), .S(n386) );
  INVX0_RVT U324 ( .A(n386), .Y(n414) );
  FADDX1_RVT U325 ( .A(n389), .B(n388), .CI(n387), .CO(n384), .S(n390) );
  INVX0_RVT U326 ( .A(n390), .Y(n441) );
  FADDX1_RVT U327 ( .A(n393), .B(n392), .CI(n391), .CO(n388), .S(n394) );
  INVX0_RVT U328 ( .A(n394), .Y(n437) );
  AND2X1_RVT U329 ( .A1(a[11]), .A2(b[1]), .Y(n397) );
  AND2X1_RVT U330 ( .A1(a[12]), .A2(b[0]), .Y(n395) );
  INVX0_RVT U331 ( .A(n395), .Y(n396) );
  HADDX1_RVT U332 ( .A0(n397), .B0(n396), .SO(n433) );
  INVX0_RVT U333 ( .A(b[2]), .Y(n689) );
  OR2X1_RVT U334 ( .A1(n398), .A2(n689), .Y(n432) );
  FADDX1_RVT U335 ( .A(n401), .B(n400), .CI(n399), .CO(n403), .S(n435) );
  FADDX1_RVT U336 ( .A(n404), .B(n403), .CI(n402), .CO(n406), .S(n439) );
  FADDX1_RVT U337 ( .A(n407), .B(n406), .CI(n405), .CO(n374), .S(n412) );
  INVX0_RVT U338 ( .A(n408), .Y(n409) );
  FADDX1_RVT U339 ( .A(n411), .B(n410), .CI(n409), .CO(n756), .S(n760) );
  FADDX1_RVT U340 ( .A(n414), .B(n413), .CI(n412), .CO(n408), .S(n415) );
  INVX0_RVT U341 ( .A(n415), .Y(n445) );
  FADDX1_RVT U342 ( .A(n418), .B(n417), .CI(n416), .CO(n383), .S(n424) );
  FADDX1_RVT U343 ( .A(n421), .B(n420), .CI(n419), .CO(n387), .S(n427) );
  AND2X1_RVT U344 ( .A1(a[6]), .A2(b[6]), .Y(n430) );
  AND2X1_RVT U345 ( .A1(a[8]), .A2(b[4]), .Y(n429) );
  AND2X1_RVT U346 ( .A1(a[7]), .A2(b[5]), .Y(n428) );
  AND2X1_RVT U347 ( .A1(b[9]), .A2(a[3]), .Y(n453) );
  AND2X1_RVT U348 ( .A1(a[5]), .A2(b[7]), .Y(n454) );
  AND2X1_RVT U349 ( .A1(a[4]), .A2(b[8]), .Y(n452) );
  AND2X1_RVT U350 ( .A1(a[0]), .A2(b[13]), .Y(n451) );
  AND2X1_RVT U351 ( .A1(b[11]), .A2(a[2]), .Y(n450) );
  AND2X1_RVT U352 ( .A1(b[12]), .A2(a[1]), .Y(n449) );
  FADDX1_RVT U353 ( .A(n424), .B(n423), .CI(n422), .CO(n444), .S(n448) );
  FADDX1_RVT U354 ( .A(n427), .B(n426), .CI(n425), .CO(n423), .S(n472) );
  FADDX1_RVT U355 ( .A(n430), .B(n429), .CI(n428), .CO(n426), .S(n469) );
  AND2X1_RVT U356 ( .A1(a[9]), .A2(b[2]), .Y(n466) );
  AND2X1_RVT U357 ( .A1(b[1]), .A2(a[10]), .Y(n464) );
  FADDX1_RVT U358 ( .A(n433), .B(n432), .CI(n431), .CO(n436), .S(n434) );
  INVX0_RVT U359 ( .A(n434), .Y(n467) );
  FADDX1_RVT U360 ( .A(n437), .B(n436), .CI(n435), .CO(n440), .S(n438) );
  INVX0_RVT U361 ( .A(n438), .Y(n470) );
  FADDX1_RVT U362 ( .A(n441), .B(n440), .CI(n439), .CO(n413), .S(n442) );
  INVX0_RVT U363 ( .A(n442), .Y(n446) );
  FADDX1_RVT U364 ( .A(n445), .B(n444), .CI(n443), .CO(n759), .S(n763) );
  FADDX1_RVT U365 ( .A(n448), .B(n447), .CI(n446), .CO(n443), .S(n475) );
  FADDX1_RVT U366 ( .A(n451), .B(n450), .CI(n449), .CO(n422), .S(n457) );
  FADDX1_RVT U367 ( .A(n453), .B(n454), .CI(n452), .CO(n425), .S(n460) );
  AND2X1_RVT U368 ( .A1(b[6]), .A2(a[4]), .Y(n523) );
  AND2X1_RVT U369 ( .A1(n523), .A2(n454), .Y(n459) );
  AND2X1_RVT U370 ( .A1(a[7]), .A2(b[4]), .Y(n463) );
  AND2X1_RVT U371 ( .A1(a[6]), .A2(b[5]), .Y(n462) );
  AND2X1_RVT U372 ( .A1(a[8]), .A2(b[3]), .Y(n461) );
  AND2X1_RVT U373 ( .A1(b[12]), .A2(a[0]), .Y(n481) );
  AND2X1_RVT U374 ( .A1(b[10]), .A2(a[2]), .Y(n480) );
  AND2X1_RVT U375 ( .A1(b[11]), .A2(a[1]), .Y(n479) );
  FADDX1_RVT U376 ( .A(n457), .B(n456), .CI(n455), .CO(n474), .S(n478) );
  FADDX1_RVT U377 ( .A(n460), .B(n459), .CI(n458), .CO(n456), .S(n506) );
  FADDX1_RVT U378 ( .A(n463), .B(n462), .CI(n461), .CO(n458), .S(n502) );
  AND2X1_RVT U379 ( .A1(b[1]), .A2(a[9]), .Y(n498) );
  AND2X1_RVT U380 ( .A1(a[8]), .A2(b[2]), .Y(n497) );
  AND2X1_RVT U381 ( .A1(b[0]), .A2(a[10]), .Y(n496) );
  FADDX1_RVT U382 ( .A(n466), .B(n465), .CI(n464), .CO(n468), .S(n500) );
  FADDX1_RVT U383 ( .A(n469), .B(n468), .CI(n467), .CO(n471), .S(n504) );
  FADDX1_RVT U384 ( .A(n472), .B(n471), .CI(n470), .CO(n447), .S(n476) );
  FADDX1_RVT U385 ( .A(n475), .B(n474), .CI(n473), .CO(n762), .S(n766) );
  FADDX1_RVT U386 ( .A(n478), .B(n477), .CI(n476), .CO(n473), .S(n511) );
  FADDX1_RVT U387 ( .A(n481), .B(n480), .CI(n479), .CO(n455), .S(n488) );
  OR2X1_RVT U388 ( .A1(n621), .A2(n590), .Y(n483) );
  AND2X1_RVT U389 ( .A1(b[7]), .A2(a[4]), .Y(n482) );
  HADDX1_RVT U390 ( .A0(n483), .B0(n482), .SO(n492) );
  OR2X1_RVT U391 ( .A1(n674), .A2(n593), .Y(n491) );
  INVX0_RVT U392 ( .A(a[7]), .Y(n530) );
  OR2X1_RVT U393 ( .A1(n484), .A2(n680), .Y(n554) );
  OR3X1_RVT U394 ( .A1(n530), .A2(n673), .A3(n554), .Y(n490) );
  INVX0_RVT U395 ( .A(n485), .Y(n487) );
  AND2X1_RVT U396 ( .A1(b[11]), .A2(a[0]), .Y(n518) );
  AND2X1_RVT U397 ( .A1(b[9]), .A2(a[2]), .Y(n517) );
  AND2X1_RVT U398 ( .A1(b[10]), .A2(a[1]), .Y(n516) );
  FADDX1_RVT U399 ( .A(n488), .B(n487), .CI(n486), .CO(n510), .S(n489) );
  INVX0_RVT U400 ( .A(n489), .Y(n514) );
  FADDX1_RVT U401 ( .A(n492), .B(n491), .CI(n490), .CO(n485), .S(n536) );
  AND2X1_RVT U402 ( .A1(b[4]), .A2(a[6]), .Y(n494) );
  OR2X1_RVT U403 ( .A1(n680), .A2(n530), .Y(n493) );
  HADDX1_RVT U404 ( .A0(n494), .B0(n493), .SO(n533) );
  AND2X1_RVT U405 ( .A1(b[0]), .A2(a[8]), .Y(n578) );
  AND3X1_RVT U406 ( .A1(b[1]), .A2(a[9]), .A3(n578), .Y(n495) );
  INVX0_RVT U407 ( .A(n495), .Y(n532) );
  FADDX1_RVT U408 ( .A(n498), .B(n497), .CI(n496), .CO(n501), .S(n499) );
  INVX0_RVT U409 ( .A(n499), .Y(n531) );
  FADDX1_RVT U410 ( .A(n502), .B(n501), .CI(n500), .CO(n505), .S(n503) );
  INVX0_RVT U411 ( .A(n503), .Y(n534) );
  FADDX1_RVT U412 ( .A(n506), .B(n505), .CI(n504), .CO(n477), .S(n507) );
  INVX0_RVT U413 ( .A(n507), .Y(n512) );
  INVX0_RVT U414 ( .A(n508), .Y(n509) );
  FADDX1_RVT U415 ( .A(n511), .B(n510), .CI(n509), .CO(n765), .S(n769) );
  FADDX1_RVT U416 ( .A(n514), .B(n513), .CI(n512), .CO(n508), .S(n515) );
  INVX0_RVT U417 ( .A(n515), .Y(n540) );
  FADDX1_RVT U418 ( .A(n518), .B(n517), .CI(n516), .CO(n486), .S(n521) );
  AND2X1_RVT U419 ( .A1(b[7]), .A2(a[3]), .Y(n525) );
  AND2X1_RVT U420 ( .A1(a[5]), .A2(b[5]), .Y(n524) );
  AND2X1_RVT U421 ( .A1(b[10]), .A2(a[0]), .Y(n547) );
  AND2X1_RVT U422 ( .A1(a[2]), .A2(b[8]), .Y(n546) );
  AND2X1_RVT U423 ( .A1(a[1]), .A2(b[9]), .Y(n545) );
  FADDX1_RVT U424 ( .A(n521), .B(n520), .CI(n519), .CO(n539), .S(n522) );
  INVX0_RVT U425 ( .A(n522), .Y(n543) );
  FADDX1_RVT U426 ( .A(n525), .B(n524), .CI(n523), .CO(n520), .S(n526) );
  INVX0_RVT U427 ( .A(n526), .Y(n560) );
  INVX0_RVT U428 ( .A(b[1]), .Y(n785) );
  OR2X1_RVT U429 ( .A1(n785), .A2(n527), .Y(n529) );
  AND2X1_RVT U430 ( .A1(b[0]), .A2(a[9]), .Y(n528) );
  HADDX1_RVT U431 ( .A0(n529), .B0(n528), .SO(n556) );
  OR2X1_RVT U432 ( .A1(n530), .A2(n689), .Y(n555) );
  FADDX1_RVT U433 ( .A(n533), .B(n532), .CI(n531), .CO(n535), .S(n558) );
  FADDX1_RVT U434 ( .A(n536), .B(n535), .CI(n534), .CO(n513), .S(n541) );
  INVX0_RVT U435 ( .A(n537), .Y(n538) );
  FADDX1_RVT U436 ( .A(n540), .B(n539), .CI(n538), .CO(n768), .S(n772) );
  FADDX1_RVT U437 ( .A(n543), .B(n542), .CI(n541), .CO(n537), .S(n544) );
  INVX0_RVT U438 ( .A(n544), .Y(n564) );
  FADDX1_RVT U439 ( .A(n547), .B(n546), .CI(n545), .CO(n519), .S(n550) );
  AND2X1_RVT U440 ( .A1(b[6]), .A2(a[3]), .Y(n553) );
  AND2X1_RVT U441 ( .A1(a[5]), .A2(b[4]), .Y(n552) );
  AND2X1_RVT U442 ( .A1(a[4]), .A2(b[5]), .Y(n551) );
  AND2X1_RVT U443 ( .A1(a[0]), .A2(b[9]), .Y(n569) );
  AND2X1_RVT U444 ( .A1(b[7]), .A2(a[2]), .Y(n570) );
  AND2X1_RVT U445 ( .A1(a[1]), .A2(b[8]), .Y(n568) );
  FADDX1_RVT U446 ( .A(n550), .B(n549), .CI(n548), .CO(n563), .S(n567) );
  FADDX1_RVT U447 ( .A(n553), .B(n552), .CI(n551), .CO(n549), .S(n582) );
  AND2X1_RVT U448 ( .A1(a[6]), .A2(b[2]), .Y(n579) );
  AND2X1_RVT U449 ( .A1(b[1]), .A2(a[7]), .Y(n577) );
  FADDX1_RVT U450 ( .A(n556), .B(n555), .CI(n554), .CO(n559), .S(n557) );
  INVX0_RVT U451 ( .A(n557), .Y(n580) );
  FADDX1_RVT U452 ( .A(n560), .B(n559), .CI(n558), .CO(n542), .S(n561) );
  INVX0_RVT U453 ( .A(n561), .Y(n565) );
  FADDX1_RVT U454 ( .A(n564), .B(n563), .CI(n562), .CO(n771), .S(n775) );
  FADDX1_RVT U455 ( .A(n567), .B(n566), .CI(n565), .CO(n562), .S(n585) );
  FADDX1_RVT U456 ( .A(n569), .B(n570), .CI(n568), .CO(n548), .S(n573) );
  AND2X1_RVT U457 ( .A1(a[1]), .A2(b[6]), .Y(n617) );
  AND2X1_RVT U458 ( .A1(n617), .A2(n570), .Y(n572) );
  AND2X1_RVT U459 ( .A1(b[4]), .A2(a[4]), .Y(n576) );
  AND2X1_RVT U460 ( .A1(a[3]), .A2(b[5]), .Y(n575) );
  AND2X1_RVT U461 ( .A1(a[5]), .A2(b[3]), .Y(n574) );
  FADDX1_RVT U462 ( .A(n573), .B(n572), .CI(n571), .CO(n584), .S(n588) );
  FADDX1_RVT U463 ( .A(n576), .B(n575), .CI(n574), .CO(n571), .S(n606) );
  AND2X1_RVT U464 ( .A1(a[6]), .A2(b[1]), .Y(n602) );
  AND2X1_RVT U465 ( .A1(a[5]), .A2(b[2]), .Y(n601) );
  AND2X1_RVT U466 ( .A1(b[0]), .A2(a[7]), .Y(n600) );
  FADDX1_RVT U467 ( .A(n579), .B(n578), .CI(n577), .CO(n581), .S(n604) );
  FADDX1_RVT U468 ( .A(n582), .B(n581), .CI(n580), .CO(n566), .S(n586) );
  FADDX1_RVT U469 ( .A(n585), .B(n584), .CI(n583), .CO(n774), .S(n778) );
  FADDX1_RVT U470 ( .A(n588), .B(n587), .CI(n586), .CO(n583), .S(n589) );
  INVX0_RVT U471 ( .A(n589), .Y(n611) );
  AND2X1_RVT U472 ( .A1(b[7]), .A2(a[1]), .Y(n592) );
  INVX0_RVT U473 ( .A(a[2]), .Y(n678) );
  OR2X1_RVT U474 ( .A1(n678), .A2(n590), .Y(n591) );
  HADDX1_RVT U475 ( .A0(n592), .B0(n591), .SO(n596) );
  INVX0_RVT U476 ( .A(a[0]), .Y(n786) );
  OR2X1_RVT U477 ( .A1(n786), .A2(n593), .Y(n595) );
  OR2X1_RVT U478 ( .A1(n680), .A2(n674), .Y(n638) );
  OR3X1_RVT U479 ( .A1(n673), .A2(n664), .A3(n638), .Y(n594) );
  FADDX1_RVT U480 ( .A(n596), .B(n595), .CI(n594), .CO(n610), .S(n615) );
  AND2X1_RVT U481 ( .A1(a[3]), .A2(b[4]), .Y(n598) );
  OR2X1_RVT U482 ( .A1(n680), .A2(n664), .Y(n597) );
  HADDX1_RVT U483 ( .A0(n598), .B0(n597), .SO(n626) );
  AND2X1_RVT U484 ( .A1(a[5]), .A2(b[0]), .Y(n653) );
  AND3X1_RVT U485 ( .A1(a[6]), .A2(b[1]), .A3(n653), .Y(n599) );
  INVX0_RVT U486 ( .A(n599), .Y(n625) );
  FADDX1_RVT U487 ( .A(n602), .B(n601), .CI(n600), .CO(n605), .S(n603) );
  INVX0_RVT U488 ( .A(n603), .Y(n624) );
  FADDX1_RVT U489 ( .A(n606), .B(n605), .CI(n604), .CO(n587), .S(n607) );
  INVX0_RVT U490 ( .A(n607), .Y(n613) );
  INVX0_RVT U491 ( .A(n608), .Y(n777) );
  FADDX1_RVT U492 ( .A(n611), .B(n610), .CI(n609), .CO(n608), .S(n612) );
  INVX0_RVT U493 ( .A(n612), .Y(n781) );
  FADDX1_RVT U494 ( .A(n615), .B(n614), .CI(n613), .CO(n609), .S(n616) );
  INVX0_RVT U495 ( .A(n616), .Y(n630) );
  AND2X1_RVT U496 ( .A1(a[0]), .A2(b[7]), .Y(n619) );
  AND2X1_RVT U497 ( .A1(a[2]), .A2(b[5]), .Y(n618) );
  FADDX1_RVT U498 ( .A(n619), .B(n618), .CI(n617), .CO(n629), .S(n620) );
  INVX0_RVT U499 ( .A(n620), .Y(n633) );
  AND2X1_RVT U500 ( .A1(b[0]), .A2(a[6]), .Y(n623) );
  OR2X1_RVT U501 ( .A1(n621), .A2(n785), .Y(n622) );
  HADDX1_RVT U502 ( .A0(n623), .B0(n622), .SO(n640) );
  OR2X1_RVT U503 ( .A1(n664), .A2(n689), .Y(n639) );
  FADDX1_RVT U504 ( .A(n626), .B(n625), .CI(n624), .CO(n614), .S(n631) );
  INVX0_RVT U505 ( .A(n627), .Y(n628) );
  FADDX1_RVT U506 ( .A(n630), .B(n629), .CI(n628), .CO(n780), .S(n784) );
  FADDX1_RVT U507 ( .A(n633), .B(n632), .CI(n631), .CO(n627), .S(n634) );
  INVX0_RVT U508 ( .A(n634), .Y(n644) );
  AND2X1_RVT U509 ( .A1(a[0]), .A2(b[6]), .Y(n637) );
  AND2X1_RVT U510 ( .A1(b[4]), .A2(a[2]), .Y(n636) );
  AND2X1_RVT U511 ( .A1(a[1]), .A2(b[5]), .Y(n635) );
  FADDX1_RVT U512 ( .A(n637), .B(n636), .CI(n635), .CO(n643), .S(n648) );
  AND2X1_RVT U513 ( .A1(b[1]), .A2(a[4]), .Y(n655) );
  AND2X1_RVT U514 ( .A1(a[3]), .A2(b[2]), .Y(n654) );
  FADDX1_RVT U515 ( .A(n640), .B(n639), .CI(n638), .CO(n632), .S(n641) );
  INVX0_RVT U516 ( .A(n641), .Y(n646) );
  FADDX1_RVT U517 ( .A(n644), .B(n643), .CI(n642), .CO(n783), .S(n645) );
  INVX0_RVT U518 ( .A(n645), .Y(n694) );
  FADDX1_RVT U519 ( .A(n648), .B(n647), .CI(n646), .CO(n642), .S(n649) );
  INVX0_RVT U520 ( .A(n649), .Y(n659) );
  INVX0_RVT U521 ( .A(a[1]), .Y(n684) );
  OR2X1_RVT U522 ( .A1(n684), .A2(n680), .Y(n670) );
  OR3X1_RVT U523 ( .A1(n673), .A2(n678), .A3(n670), .Y(n658) );
  AND2X1_RVT U524 ( .A1(b[4]), .A2(a[1]), .Y(n651) );
  OR2X1_RVT U525 ( .A1(n678), .A2(n680), .Y(n650) );
  HADDX1_RVT U526 ( .A0(n651), .B0(n650), .SO(n662) );
  AND2X1_RVT U527 ( .A1(b[0]), .A2(a[3]), .Y(n679) );
  AND3X1_RVT U528 ( .A1(b[1]), .A2(a[4]), .A3(n679), .Y(n652) );
  INVX0_RVT U529 ( .A(n652), .Y(n661) );
  FADDX1_RVT U530 ( .A(n655), .B(n654), .CI(n653), .CO(n647), .S(n656) );
  INVX0_RVT U531 ( .A(n656), .Y(n660) );
  FADDX1_RVT U532 ( .A(n659), .B(n658), .CI(n657), .CO(n693), .S(n698) );
  FADDX1_RVT U533 ( .A(n662), .B(n661), .CI(n660), .CO(n657), .S(n669) );
  INVX0_RVT U534 ( .A(b[5]), .Y(n663) );
  OR2X1_RVT U535 ( .A1(n786), .A2(n663), .Y(n668) );
  AND2X1_RVT U536 ( .A1(b[1]), .A2(a[3]), .Y(n666) );
  INVX0_RVT U537 ( .A(b[0]), .Y(n685) );
  OR2X1_RVT U538 ( .A1(n685), .A2(n664), .Y(n665) );
  HADDX1_RVT U539 ( .A0(n666), .B0(n665), .SO(n672) );
  OR2X1_RVT U540 ( .A1(n678), .A2(n689), .Y(n671) );
  FADDX1_RVT U541 ( .A(n669), .B(n668), .CI(n667), .CO(n697), .S(n702) );
  FADDX1_RVT U542 ( .A(n672), .B(n671), .CI(n670), .CO(n667), .S(n677) );
  OR2X1_RVT U543 ( .A1(n786), .A2(n673), .Y(n676) );
  OR2X1_RVT U544 ( .A1(n685), .A2(n678), .Y(n687) );
  OR3X1_RVT U545 ( .A1(n785), .A2(n674), .A3(n687), .Y(n675) );
  FADDX1_RVT U546 ( .A(n677), .B(n676), .CI(n675), .CO(n701), .S(n706) );
  OR2X1_RVT U547 ( .A1(n785), .A2(n678), .Y(n686) );
  HADDX1_RVT U548 ( .A0(n679), .B0(n686), .SO(n683) );
  OR2X1_RVT U549 ( .A1(n684), .A2(n689), .Y(n682) );
  OR2X1_RVT U550 ( .A1(n786), .A2(n680), .Y(n681) );
  FADDX1_RVT U551 ( .A(n683), .B(n682), .CI(n681), .CO(n705), .S(n710) );
  OR2X1_RVT U552 ( .A1(n685), .A2(n684), .Y(n787) );
  OR2X1_RVT U553 ( .A1(n787), .A2(n686), .Y(n709) );
  AND2X1_RVT U554 ( .A1(a[1]), .A2(b[1]), .Y(n688) );
  HADDX1_RVT U555 ( .A0(n688), .B0(n687), .SO(n714) );
  OR2X1_RVT U556 ( .A1(n786), .A2(n689), .Y(n713) );
  OR3X1_RVT U557 ( .A1(n786), .A2(n785), .A3(n787), .Y(n712) );
  INVX0_RVT U558 ( .A(n690), .Y(n782) );
  OR2X1_RVT U559 ( .A1(n717), .A2(n716), .Y(n691) );
  AND3X1_RVT U560 ( .A1(b[15]), .A2(a[15]), .A3(n691), .Y(p[31]) );
  FADDX1_RVT U561 ( .A(n694), .B(n693), .CI(n692), .CO(n690), .S(n695) );
  INVX0_RVT U562 ( .A(n695), .Y(p[7]) );
  FADDX1_RVT U563 ( .A(n698), .B(n697), .CI(n696), .CO(n692), .S(n699) );
  INVX0_RVT U564 ( .A(n699), .Y(p[6]) );
  FADDX1_RVT U565 ( .A(n702), .B(n701), .CI(n700), .CO(n696), .S(n703) );
  INVX0_RVT U566 ( .A(n703), .Y(p[5]) );
  FADDX1_RVT U567 ( .A(n706), .B(n705), .CI(n704), .CO(n700), .S(n707) );
  INVX0_RVT U568 ( .A(n707), .Y(p[4]) );
  FADDX1_RVT U569 ( .A(n710), .B(n709), .CI(n708), .CO(n704), .S(n711) );
  INVX0_RVT U570 ( .A(n711), .Y(p[3]) );
  FADDX1_RVT U571 ( .A(n714), .B(n713), .CI(n712), .CO(n708), .S(n715) );
  INVX0_RVT U572 ( .A(n715), .Y(p[2]) );
  AND2X1_RVT U573 ( .A1(a[15]), .A2(b[15]), .Y(n718) );
  FADDX1_RVT U574 ( .A(n718), .B(n717), .CI(n716), .S(p[30]) );
  FADDX1_RVT U575 ( .A(n721), .B(n720), .CI(n719), .CO(n716), .S(p[29]) );
  FADDX1_RVT U576 ( .A(n724), .B(n723), .CI(n722), .CO(n719), .S(p[28]) );
  FADDX1_RVT U577 ( .A(n727), .B(n726), .CI(n725), .CO(n722), .S(p[27]) );
  FADDX1_RVT U578 ( .A(n730), .B(n729), .CI(n728), .CO(n725), .S(p[26]) );
  FADDX1_RVT U579 ( .A(n733), .B(n732), .CI(n731), .CO(n728), .S(p[25]) );
  FADDX1_RVT U580 ( .A(n736), .B(n735), .CI(n734), .CO(n731), .S(p[24]) );
  FADDX1_RVT U581 ( .A(n739), .B(n738), .CI(n737), .CO(n734), .S(p[23]) );
  FADDX1_RVT U582 ( .A(n742), .B(n741), .CI(n740), .CO(n737), .S(p[22]) );
  FADDX1_RVT U583 ( .A(n745), .B(n744), .CI(n743), .CO(n740), .S(p[21]) );
  FADDX1_RVT U584 ( .A(n748), .B(n747), .CI(n746), .CO(n743), .S(p[20]) );
  FADDX1_RVT U585 ( .A(n751), .B(n750), .CI(n749), .CO(n746), .S(p[19]) );
  FADDX1_RVT U586 ( .A(n754), .B(n753), .CI(n752), .CO(n749), .S(p[18]) );
  FADDX1_RVT U587 ( .A(n757), .B(n756), .CI(n755), .CO(n752), .S(p[17]) );
  FADDX1_RVT U588 ( .A(n760), .B(n759), .CI(n758), .CO(n755), .S(p[16]) );
  FADDX1_RVT U589 ( .A(n763), .B(n762), .CI(n761), .CO(n758), .S(p[15]) );
  FADDX1_RVT U590 ( .A(n766), .B(n765), .CI(n764), .CO(n761), .S(p[14]) );
  FADDX1_RVT U591 ( .A(n769), .B(n768), .CI(n767), .CO(n764), .S(p[13]) );
  FADDX1_RVT U592 ( .A(n772), .B(n771), .CI(n770), .CO(n767), .S(p[12]) );
  FADDX1_RVT U593 ( .A(n775), .B(n774), .CI(n773), .CO(n770), .S(p[11]) );
  FADDX1_RVT U594 ( .A(n778), .B(n777), .CI(n776), .CO(n773), .S(p[10]) );
  FADDX1_RVT U595 ( .A(n781), .B(n780), .CI(n779), .CO(n776), .S(p[9]) );
  FADDX1_RVT U596 ( .A(n784), .B(n783), .CI(n782), .CO(n779), .S(p[8]) );
  OR2X1_RVT U597 ( .A1(n786), .A2(n785), .Y(n788) );
  HADDX1_RVT U598 ( .A0(n788), .B0(n787), .SO(p[1]) );
  AND2X1_RVT U599 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
endmodule


module dadda_8_bit_mul_1 ( a, b, p );
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197;

  AND2X1_RVT U2 ( .A1(b[7]), .A2(a[0]), .Y(n157) );
  AND2X1_RVT U3 ( .A1(b[5]), .A2(a[2]), .Y(n156) );
  AND2X1_RVT U4 ( .A1(a[1]), .A2(b[6]), .Y(n155) );
  INVX0_RVT U5 ( .A(n1), .Y(n160) );
  AND2X1_RVT U6 ( .A1(a[5]), .A2(b[1]), .Y(n4) );
  INVX0_RVT U7 ( .A(a[6]), .Y(n2) );
  INVX0_RVT U8 ( .A(b[0]), .Y(n58) );
  OR2X1_RVT U9 ( .A1(n2), .A2(n58), .Y(n3) );
  HADDX1_RVT U10 ( .A0(n4), .B0(n3), .SO(n16) );
  INVX0_RVT U11 ( .A(a[4]), .Y(n5) );
  INVX0_RVT U12 ( .A(b[2]), .Y(n64) );
  OR2X1_RVT U13 ( .A1(n5), .A2(n64), .Y(n15) );
  INVX0_RVT U14 ( .A(a[3]), .Y(n38) );
  INVX0_RVT U15 ( .A(b[3]), .Y(n54) );
  OR2X1_RVT U16 ( .A1(n38), .A2(n54), .Y(n14) );
  AND2X1_RVT U17 ( .A1(b[3]), .A2(a[4]), .Y(n7) );
  INVX0_RVT U18 ( .A(b[4]), .Y(n46) );
  OR2X1_RVT U19 ( .A1(n46), .A2(n38), .Y(n6) );
  HADDX1_RVT U20 ( .A0(n7), .B0(n6), .SO(n142) );
  AND2X1_RVT U21 ( .A1(b[0]), .A2(a[5]), .Y(n27) );
  AND3X1_RVT U22 ( .A1(b[1]), .A2(a[6]), .A3(n27), .Y(n8) );
  INVX0_RVT U23 ( .A(n8), .Y(n141) );
  AND2X1_RVT U24 ( .A1(b[1]), .A2(a[6]), .Y(n122) );
  AND2X1_RVT U25 ( .A1(a[5]), .A2(b[2]), .Y(n121) );
  AND2X1_RVT U26 ( .A1(a[7]), .A2(b[0]), .Y(n120) );
  INVX0_RVT U27 ( .A(n9), .Y(n140) );
  INVX0_RVT U28 ( .A(n10), .Y(n167) );
  AND2X1_RVT U29 ( .A1(a[0]), .A2(b[6]), .Y(n13) );
  INVX0_RVT U30 ( .A(a[2]), .Y(n51) );
  OR2X1_RVT U31 ( .A1(n46), .A2(n51), .Y(n23) );
  INVX0_RVT U32 ( .A(n23), .Y(n12) );
  AND2X1_RVT U33 ( .A1(a[1]), .A2(b[5]), .Y(n11) );
  FADDX1_RVT U34 ( .A(n13), .B(n12), .CI(n11), .CO(n166), .S(n21) );
  AND2X1_RVT U35 ( .A1(b[1]), .A2(a[4]), .Y(n29) );
  AND2X1_RVT U36 ( .A1(a[3]), .A2(b[2]), .Y(n28) );
  FADDX1_RVT U37 ( .A(n16), .B(n15), .CI(n14), .CO(n159), .S(n17) );
  INVX0_RVT U38 ( .A(n17), .Y(n19) );
  INVX0_RVT U39 ( .A(n18), .Y(n170) );
  FADDX1_RVT U40 ( .A(n21), .B(n20), .CI(n19), .CO(n165), .S(n22) );
  INVX0_RVT U41 ( .A(n22), .Y(n33) );
  INVX0_RVT U42 ( .A(a[1]), .Y(n61) );
  OR2X1_RVT U43 ( .A1(n61), .A2(n54), .Y(n43) );
  OR2X1_RVT U44 ( .A1(n43), .A2(n23), .Y(n32) );
  OR2X1_RVT U45 ( .A1(n61), .A2(n46), .Y(n25) );
  AND2X1_RVT U46 ( .A1(b[3]), .A2(a[2]), .Y(n24) );
  HADDX1_RVT U47 ( .A0(n25), .B0(n24), .SO(n36) );
  OR2X1_RVT U48 ( .A1(n58), .A2(n38), .Y(n52) );
  INVX0_RVT U49 ( .A(n29), .Y(n26) );
  OR2X1_RVT U50 ( .A1(n52), .A2(n26), .Y(n35) );
  FADDX1_RVT U51 ( .A(n29), .B(n28), .CI(n27), .CO(n20), .S(n30) );
  INVX0_RVT U52 ( .A(n30), .Y(n34) );
  FADDX1_RVT U53 ( .A(n33), .B(n32), .CI(n31), .CO(n169), .S(n68) );
  FADDX1_RVT U54 ( .A(n36), .B(n35), .CI(n34), .CO(n31), .S(n42) );
  AND2X1_RVT U55 ( .A1(a[0]), .A2(b[5]), .Y(n37) );
  INVX0_RVT U56 ( .A(n37), .Y(n41) );
  AND2X1_RVT U57 ( .A1(a[4]), .A2(b[0]), .Y(n39) );
  INVX0_RVT U58 ( .A(b[1]), .Y(n194) );
  OR2X1_RVT U59 ( .A1(n194), .A2(n38), .Y(n47) );
  HADDX1_RVT U60 ( .A0(n39), .B0(n47), .SO(n45) );
  OR2X1_RVT U61 ( .A1(n51), .A2(n64), .Y(n44) );
  FADDX1_RVT U62 ( .A(n42), .B(n41), .CI(n40), .CO(n67), .S(n72) );
  FADDX1_RVT U63 ( .A(n45), .B(n44), .CI(n43), .CO(n40), .S(n50) );
  INVX0_RVT U64 ( .A(a[0]), .Y(n195) );
  OR2X1_RVT U65 ( .A1(n195), .A2(n46), .Y(n49) );
  OR2X1_RVT U66 ( .A1(n58), .A2(n51), .Y(n60) );
  OR2X1_RVT U67 ( .A1(n47), .A2(n60), .Y(n48) );
  FADDX1_RVT U68 ( .A(n50), .B(n49), .CI(n48), .CO(n71), .S(n76) );
  OR2X1_RVT U69 ( .A1(n194), .A2(n51), .Y(n59) );
  INVX0_RVT U70 ( .A(n59), .Y(n53) );
  HADDX1_RVT U71 ( .A0(n53), .B0(n52), .SO(n57) );
  OR2X1_RVT U72 ( .A1(n61), .A2(n64), .Y(n56) );
  OR2X1_RVT U73 ( .A1(n195), .A2(n54), .Y(n55) );
  FADDX1_RVT U74 ( .A(n57), .B(n56), .CI(n55), .CO(n75), .S(n80) );
  OR2X1_RVT U75 ( .A1(n58), .A2(n61), .Y(n196) );
  OR2X1_RVT U76 ( .A1(n196), .A2(n59), .Y(n79) );
  INVX0_RVT U77 ( .A(n60), .Y(n63) );
  OR2X1_RVT U78 ( .A1(n194), .A2(n61), .Y(n62) );
  HADDX1_RVT U79 ( .A0(n63), .B0(n62), .SO(n84) );
  OR2X1_RVT U80 ( .A1(n195), .A2(n64), .Y(n83) );
  OR3X1_RVT U81 ( .A1(n195), .A2(n194), .A3(n196), .Y(n82) );
  INVX0_RVT U82 ( .A(n65), .Y(p[7]) );
  FADDX1_RVT U83 ( .A(n68), .B(n67), .CI(n66), .CO(n168), .S(n69) );
  INVX0_RVT U84 ( .A(n69), .Y(p[6]) );
  FADDX1_RVT U85 ( .A(n72), .B(n71), .CI(n70), .CO(n66), .S(n73) );
  INVX0_RVT U86 ( .A(n73), .Y(p[5]) );
  FADDX1_RVT U87 ( .A(n76), .B(n75), .CI(n74), .CO(n70), .S(n77) );
  INVX0_RVT U88 ( .A(n77), .Y(p[4]) );
  FADDX1_RVT U89 ( .A(n80), .B(n79), .CI(n78), .CO(n74), .S(n81) );
  INVX0_RVT U90 ( .A(n81), .Y(p[3]) );
  FADDX1_RVT U91 ( .A(n84), .B(n83), .CI(n82), .CO(n78), .S(n85) );
  INVX0_RVT U92 ( .A(n85), .Y(p[2]) );
  AND2X1_RVT U93 ( .A1(b[5]), .A2(a[6]), .Y(n94) );
  AND2X1_RVT U94 ( .A1(b[7]), .A2(a[4]), .Y(n93) );
  AND2X1_RVT U95 ( .A1(a[5]), .A2(b[6]), .Y(n92) );
  AND2X1_RVT U96 ( .A1(b[7]), .A2(a[5]), .Y(n90) );
  AND2X1_RVT U97 ( .A1(a[7]), .A2(b[5]), .Y(n89) );
  AND2X1_RVT U98 ( .A1(b[7]), .A2(a[6]), .Y(n87) );
  AND2X1_RVT U99 ( .A1(a[7]), .A2(b[6]), .Y(n86) );
  FADDX1_RVT U100 ( .A(n88), .B(n87), .CI(n86), .CO(n174), .S(n178) );
  FADDX1_RVT U101 ( .A(n91), .B(n90), .CI(n89), .CO(n88), .S(n97) );
  AND2X1_RVT U102 ( .A1(a[6]), .A2(b[6]), .Y(n96) );
  FADDX1_RVT U103 ( .A(n94), .B(n93), .CI(n92), .CO(n91), .S(n100) );
  AND2X1_RVT U104 ( .A1(a[7]), .A2(b[4]), .Y(n99) );
  AND2X1_RVT U105 ( .A1(b[4]), .A2(a[5]), .Y(n106) );
  AND2X1_RVT U106 ( .A1(a[7]), .A2(b[2]), .Y(n105) );
  AND2X1_RVT U107 ( .A1(b[3]), .A2(a[6]), .Y(n104) );
  AND2X1_RVT U108 ( .A1(b[7]), .A2(a[3]), .Y(n108) );
  AND2X1_RVT U109 ( .A1(b[5]), .A2(a[5]), .Y(n107) );
  FADDX1_RVT U110 ( .A(n97), .B(n96), .CI(n95), .CO(n177), .S(n181) );
  FADDX1_RVT U111 ( .A(n100), .B(n99), .CI(n98), .CO(n95), .S(n112) );
  AND2X1_RVT U112 ( .A1(a[4]), .A2(b[6]), .Y(n103) );
  AND2X1_RVT U113 ( .A1(b[4]), .A2(a[6]), .Y(n102) );
  AND2X1_RVT U114 ( .A1(a[7]), .A2(b[3]), .Y(n101) );
  FADDX1_RVT U115 ( .A(n103), .B(n102), .CI(n101), .CO(n111), .S(n115) );
  AND2X1_RVT U116 ( .A1(a[4]), .A2(b[5]), .Y(n128) );
  FADDX1_RVT U117 ( .A(n106), .B(n105), .CI(n104), .CO(n109), .S(n127) );
  AND2X1_RVT U118 ( .A1(b[3]), .A2(a[5]), .Y(n125) );
  AND2X1_RVT U119 ( .A1(a[7]), .A2(b[1]), .Y(n124) );
  AND2X1_RVT U120 ( .A1(a[6]), .A2(b[2]), .Y(n123) );
  FADDX1_RVT U121 ( .A(n109), .B(n108), .CI(n107), .CO(n98), .S(n113) );
  FADDX1_RVT U122 ( .A(n112), .B(n111), .CI(n110), .CO(n180), .S(n184) );
  FADDX1_RVT U123 ( .A(n115), .B(n114), .CI(n113), .CO(n110), .S(n131) );
  AND3X1_RVT U124 ( .A1(b[4]), .A2(a[3]), .A3(n128), .Y(n118) );
  AND2X1_RVT U125 ( .A1(a[3]), .A2(b[6]), .Y(n117) );
  AND2X1_RVT U126 ( .A1(b[7]), .A2(a[2]), .Y(n116) );
  FADDX1_RVT U127 ( .A(n118), .B(n117), .CI(n116), .CO(n130), .S(n134) );
  AND2X1_RVT U128 ( .A1(a[4]), .A2(b[4]), .Y(n135) );
  AND2X1_RVT U129 ( .A1(a[3]), .A2(b[5]), .Y(n119) );
  HADDX1_RVT U130 ( .A0(n135), .B0(n119), .SO(n145) );
  FADDX1_RVT U131 ( .A(n122), .B(n121), .CI(n120), .CO(n144), .S(n9) );
  FADDX1_RVT U132 ( .A(n125), .B(n124), .CI(n123), .CO(n126), .S(n143) );
  FADDX1_RVT U133 ( .A(n128), .B(n127), .CI(n126), .CO(n114), .S(n132) );
  FADDX1_RVT U134 ( .A(n131), .B(n130), .CI(n129), .CO(n183), .S(n187) );
  FADDX1_RVT U135 ( .A(n134), .B(n133), .CI(n132), .CO(n129), .S(n150) );
  AND3X1_RVT U136 ( .A1(n135), .A2(a[3]), .A3(b[3]), .Y(n138) );
  AND2X1_RVT U137 ( .A1(b[7]), .A2(a[1]), .Y(n137) );
  AND2X1_RVT U138 ( .A1(a[2]), .A2(b[6]), .Y(n136) );
  FADDX1_RVT U139 ( .A(n138), .B(n137), .CI(n136), .CO(n149), .S(n139) );
  INVX0_RVT U140 ( .A(n139), .Y(n153) );
  FADDX1_RVT U141 ( .A(n142), .B(n141), .CI(n140), .CO(n152), .S(n158) );
  FADDX1_RVT U142 ( .A(n145), .B(n144), .CI(n143), .CO(n133), .S(n146) );
  INVX0_RVT U143 ( .A(n146), .Y(n151) );
  INVX0_RVT U144 ( .A(n147), .Y(n148) );
  FADDX1_RVT U145 ( .A(n150), .B(n149), .CI(n148), .CO(n186), .S(n190) );
  FADDX1_RVT U146 ( .A(n153), .B(n152), .CI(n151), .CO(n147), .S(n154) );
  INVX0_RVT U147 ( .A(n154), .Y(n164) );
  FADDX1_RVT U148 ( .A(n157), .B(n156), .CI(n155), .CO(n163), .S(n1) );
  FADDX1_RVT U149 ( .A(n160), .B(n159), .CI(n158), .CO(n161), .S(n10) );
  INVX0_RVT U150 ( .A(n161), .Y(n162) );
  FADDX1_RVT U151 ( .A(n164), .B(n163), .CI(n162), .CO(n189), .S(n193) );
  FADDX1_RVT U152 ( .A(n167), .B(n166), .CI(n165), .CO(n192), .S(n18) );
  FADDX1_RVT U153 ( .A(n170), .B(n169), .CI(n168), .CO(n171), .S(n65) );
  INVX0_RVT U154 ( .A(n171), .Y(n191) );
  OR2X1_RVT U155 ( .A1(n174), .A2(n173), .Y(n172) );
  AND3X1_RVT U156 ( .A1(b[7]), .A2(a[7]), .A3(n172), .Y(p[15]) );
  AND2X1_RVT U157 ( .A1(a[7]), .A2(b[7]), .Y(n175) );
  FADDX1_RVT U158 ( .A(n175), .B(n174), .CI(n173), .S(p[14]) );
  FADDX1_RVT U159 ( .A(n178), .B(n177), .CI(n176), .CO(n173), .S(p[13]) );
  FADDX1_RVT U160 ( .A(n181), .B(n180), .CI(n179), .CO(n176), .S(p[12]) );
  FADDX1_RVT U161 ( .A(n184), .B(n183), .CI(n182), .CO(n179), .S(p[11]) );
  FADDX1_RVT U162 ( .A(n187), .B(n186), .CI(n185), .CO(n182), .S(p[10]) );
  FADDX1_RVT U163 ( .A(n190), .B(n189), .CI(n188), .CO(n185), .S(p[9]) );
  FADDX1_RVT U164 ( .A(n193), .B(n192), .CI(n191), .CO(n188), .S(p[8]) );
  OR2X1_RVT U165 ( .A1(n195), .A2(n194), .Y(n197) );
  HADDX1_RVT U166 ( .A0(n197), .B0(n196), .SO(p[1]) );
  AND2X1_RVT U167 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
endmodule


module dadda_8_bit_mul_0 ( a, b, p );
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197;

  AND2X1_RVT U2 ( .A1(b[5]), .A2(a[6]), .Y(n9) );
  AND2X1_RVT U3 ( .A1(b[7]), .A2(a[4]), .Y(n8) );
  AND2X1_RVT U4 ( .A1(a[5]), .A2(b[6]), .Y(n7) );
  AND2X1_RVT U5 ( .A1(b[7]), .A2(a[5]), .Y(n5) );
  AND2X1_RVT U6 ( .A1(a[7]), .A2(b[5]), .Y(n4) );
  AND2X1_RVT U7 ( .A1(b[7]), .A2(a[6]), .Y(n2) );
  AND2X1_RVT U8 ( .A1(a[7]), .A2(b[6]), .Y(n1) );
  FADDX1_RVT U9 ( .A(n3), .B(n2), .CI(n1), .CO(n174), .S(n178) );
  FADDX1_RVT U10 ( .A(n6), .B(n5), .CI(n4), .CO(n3), .S(n12) );
  AND2X1_RVT U11 ( .A1(a[6]), .A2(b[6]), .Y(n11) );
  FADDX1_RVT U12 ( .A(n9), .B(n8), .CI(n7), .CO(n6), .S(n15) );
  AND2X1_RVT U13 ( .A1(a[7]), .A2(b[4]), .Y(n14) );
  AND2X1_RVT U14 ( .A1(b[4]), .A2(a[5]), .Y(n21) );
  AND2X1_RVT U15 ( .A1(a[7]), .A2(b[2]), .Y(n20) );
  AND2X1_RVT U16 ( .A1(b[3]), .A2(a[6]), .Y(n19) );
  AND2X1_RVT U17 ( .A1(b[7]), .A2(a[3]), .Y(n23) );
  AND2X1_RVT U18 ( .A1(b[5]), .A2(a[5]), .Y(n22) );
  FADDX1_RVT U19 ( .A(n12), .B(n11), .CI(n10), .CO(n177), .S(n181) );
  FADDX1_RVT U20 ( .A(n15), .B(n14), .CI(n13), .CO(n10), .S(n27) );
  AND2X1_RVT U21 ( .A1(a[4]), .A2(b[6]), .Y(n18) );
  AND2X1_RVT U22 ( .A1(b[4]), .A2(a[6]), .Y(n17) );
  AND2X1_RVT U23 ( .A1(a[7]), .A2(b[3]), .Y(n16) );
  FADDX1_RVT U24 ( .A(n18), .B(n17), .CI(n16), .CO(n26), .S(n30) );
  AND2X1_RVT U25 ( .A1(a[4]), .A2(b[5]), .Y(n40) );
  FADDX1_RVT U26 ( .A(n21), .B(n20), .CI(n19), .CO(n24), .S(n39) );
  AND2X1_RVT U27 ( .A1(b[3]), .A2(a[5]), .Y(n37) );
  AND2X1_RVT U28 ( .A1(a[7]), .A2(b[1]), .Y(n36) );
  AND2X1_RVT U29 ( .A1(a[6]), .A2(b[2]), .Y(n35) );
  FADDX1_RVT U30 ( .A(n24), .B(n23), .CI(n22), .CO(n13), .S(n28) );
  FADDX1_RVT U31 ( .A(n27), .B(n26), .CI(n25), .CO(n180), .S(n184) );
  FADDX1_RVT U32 ( .A(n30), .B(n29), .CI(n28), .CO(n25), .S(n43) );
  AND3X1_RVT U33 ( .A1(b[4]), .A2(a[3]), .A3(n40), .Y(n33) );
  AND2X1_RVT U34 ( .A1(a[3]), .A2(b[6]), .Y(n32) );
  AND2X1_RVT U35 ( .A1(b[7]), .A2(a[2]), .Y(n31) );
  FADDX1_RVT U36 ( .A(n33), .B(n32), .CI(n31), .CO(n42), .S(n46) );
  AND2X1_RVT U37 ( .A1(a[4]), .A2(b[4]), .Y(n47) );
  AND2X1_RVT U38 ( .A1(a[3]), .A2(b[5]), .Y(n34) );
  HADDX1_RVT U39 ( .A0(n47), .B0(n34), .SO(n61) );
  AND2X1_RVT U40 ( .A1(b[1]), .A2(a[6]), .Y(n57) );
  AND2X1_RVT U41 ( .A1(a[5]), .A2(b[2]), .Y(n56) );
  AND2X1_RVT U42 ( .A1(a[7]), .A2(b[0]), .Y(n55) );
  FADDX1_RVT U43 ( .A(n37), .B(n36), .CI(n35), .CO(n38), .S(n59) );
  FADDX1_RVT U44 ( .A(n40), .B(n39), .CI(n38), .CO(n29), .S(n44) );
  FADDX1_RVT U45 ( .A(n43), .B(n42), .CI(n41), .CO(n183), .S(n187) );
  FADDX1_RVT U46 ( .A(n46), .B(n45), .CI(n44), .CO(n41), .S(n66) );
  AND3X1_RVT U47 ( .A1(n47), .A2(a[3]), .A3(b[3]), .Y(n50) );
  AND2X1_RVT U48 ( .A1(b[7]), .A2(a[1]), .Y(n49) );
  AND2X1_RVT U49 ( .A1(a[2]), .A2(b[6]), .Y(n48) );
  FADDX1_RVT U50 ( .A(n50), .B(n49), .CI(n48), .CO(n65), .S(n51) );
  INVX0_RVT U51 ( .A(n51), .Y(n69) );
  AND2X1_RVT U52 ( .A1(b[3]), .A2(a[4]), .Y(n53) );
  INVX0_RVT U53 ( .A(b[4]), .Y(n128) );
  INVX0_RVT U54 ( .A(a[3]), .Y(n120) );
  OR2X1_RVT U55 ( .A1(n128), .A2(n120), .Y(n52) );
  HADDX1_RVT U56 ( .A0(n53), .B0(n52), .SO(n81) );
  AND2X1_RVT U57 ( .A1(b[0]), .A2(a[5]), .Y(n109) );
  AND3X1_RVT U58 ( .A1(b[1]), .A2(a[6]), .A3(n109), .Y(n54) );
  INVX0_RVT U59 ( .A(n54), .Y(n80) );
  FADDX1_RVT U60 ( .A(n57), .B(n56), .CI(n55), .CO(n60), .S(n58) );
  INVX0_RVT U61 ( .A(n58), .Y(n79) );
  FADDX1_RVT U62 ( .A(n61), .B(n60), .CI(n59), .CO(n45), .S(n62) );
  INVX0_RVT U63 ( .A(n62), .Y(n67) );
  INVX0_RVT U64 ( .A(n63), .Y(n64) );
  FADDX1_RVT U65 ( .A(n66), .B(n65), .CI(n64), .CO(n186), .S(n190) );
  FADDX1_RVT U66 ( .A(n69), .B(n68), .CI(n67), .CO(n63), .S(n70) );
  INVX0_RVT U67 ( .A(n70), .Y(n85) );
  AND2X1_RVT U68 ( .A1(b[7]), .A2(a[0]), .Y(n73) );
  AND2X1_RVT U69 ( .A1(b[5]), .A2(a[2]), .Y(n72) );
  AND2X1_RVT U70 ( .A1(a[1]), .A2(b[6]), .Y(n71) );
  FADDX1_RVT U71 ( .A(n73), .B(n72), .CI(n71), .CO(n84), .S(n74) );
  INVX0_RVT U72 ( .A(n74), .Y(n88) );
  AND2X1_RVT U73 ( .A1(a[5]), .A2(b[1]), .Y(n77) );
  INVX0_RVT U74 ( .A(a[6]), .Y(n75) );
  INVX0_RVT U75 ( .A(b[0]), .Y(n140) );
  OR2X1_RVT U76 ( .A1(n75), .A2(n140), .Y(n76) );
  HADDX1_RVT U77 ( .A0(n77), .B0(n76), .SO(n95) );
  INVX0_RVT U78 ( .A(a[4]), .Y(n78) );
  INVX0_RVT U79 ( .A(b[2]), .Y(n146) );
  OR2X1_RVT U80 ( .A1(n78), .A2(n146), .Y(n94) );
  INVX0_RVT U81 ( .A(b[3]), .Y(n136) );
  OR2X1_RVT U82 ( .A1(n120), .A2(n136), .Y(n93) );
  FADDX1_RVT U83 ( .A(n81), .B(n80), .CI(n79), .CO(n68), .S(n86) );
  INVX0_RVT U84 ( .A(n82), .Y(n83) );
  FADDX1_RVT U85 ( .A(n85), .B(n84), .CI(n83), .CO(n189), .S(n193) );
  FADDX1_RVT U86 ( .A(n88), .B(n87), .CI(n86), .CO(n82), .S(n89) );
  INVX0_RVT U87 ( .A(n89), .Y(n99) );
  AND2X1_RVT U88 ( .A1(a[0]), .A2(b[6]), .Y(n92) );
  INVX0_RVT U89 ( .A(a[2]), .Y(n133) );
  OR2X1_RVT U90 ( .A1(n128), .A2(n133), .Y(n105) );
  INVX0_RVT U91 ( .A(n105), .Y(n91) );
  AND2X1_RVT U92 ( .A1(a[1]), .A2(b[5]), .Y(n90) );
  FADDX1_RVT U93 ( .A(n92), .B(n91), .CI(n90), .CO(n98), .S(n103) );
  AND2X1_RVT U94 ( .A1(b[1]), .A2(a[4]), .Y(n111) );
  AND2X1_RVT U95 ( .A1(a[3]), .A2(b[2]), .Y(n110) );
  FADDX1_RVT U96 ( .A(n95), .B(n94), .CI(n93), .CO(n87), .S(n96) );
  INVX0_RVT U97 ( .A(n96), .Y(n101) );
  FADDX1_RVT U98 ( .A(n99), .B(n98), .CI(n97), .CO(n192), .S(n100) );
  INVX0_RVT U99 ( .A(n100), .Y(n151) );
  FADDX1_RVT U100 ( .A(n103), .B(n102), .CI(n101), .CO(n97), .S(n104) );
  INVX0_RVT U101 ( .A(n104), .Y(n115) );
  INVX0_RVT U102 ( .A(a[1]), .Y(n143) );
  OR2X1_RVT U103 ( .A1(n143), .A2(n136), .Y(n125) );
  OR2X1_RVT U104 ( .A1(n125), .A2(n105), .Y(n114) );
  OR2X1_RVT U105 ( .A1(n143), .A2(n128), .Y(n107) );
  AND2X1_RVT U106 ( .A1(b[3]), .A2(a[2]), .Y(n106) );
  HADDX1_RVT U107 ( .A0(n107), .B0(n106), .SO(n118) );
  OR2X1_RVT U108 ( .A1(n140), .A2(n120), .Y(n134) );
  INVX0_RVT U109 ( .A(n111), .Y(n108) );
  OR2X1_RVT U110 ( .A1(n134), .A2(n108), .Y(n117) );
  FADDX1_RVT U111 ( .A(n111), .B(n110), .CI(n109), .CO(n102), .S(n112) );
  INVX0_RVT U112 ( .A(n112), .Y(n116) );
  FADDX1_RVT U113 ( .A(n115), .B(n114), .CI(n113), .CO(n150), .S(n155) );
  FADDX1_RVT U114 ( .A(n118), .B(n117), .CI(n116), .CO(n113), .S(n124) );
  AND2X1_RVT U115 ( .A1(a[0]), .A2(b[5]), .Y(n119) );
  INVX0_RVT U116 ( .A(n119), .Y(n123) );
  AND2X1_RVT U117 ( .A1(a[4]), .A2(b[0]), .Y(n121) );
  INVX0_RVT U118 ( .A(b[1]), .Y(n194) );
  OR2X1_RVT U119 ( .A1(n194), .A2(n120), .Y(n129) );
  HADDX1_RVT U120 ( .A0(n121), .B0(n129), .SO(n127) );
  OR2X1_RVT U121 ( .A1(n133), .A2(n146), .Y(n126) );
  FADDX1_RVT U122 ( .A(n124), .B(n123), .CI(n122), .CO(n154), .S(n159) );
  FADDX1_RVT U123 ( .A(n127), .B(n126), .CI(n125), .CO(n122), .S(n132) );
  INVX0_RVT U124 ( .A(a[0]), .Y(n195) );
  OR2X1_RVT U125 ( .A1(n195), .A2(n128), .Y(n131) );
  OR2X1_RVT U126 ( .A1(n140), .A2(n133), .Y(n142) );
  OR2X1_RVT U127 ( .A1(n129), .A2(n142), .Y(n130) );
  FADDX1_RVT U128 ( .A(n132), .B(n131), .CI(n130), .CO(n158), .S(n163) );
  OR2X1_RVT U129 ( .A1(n194), .A2(n133), .Y(n141) );
  INVX0_RVT U130 ( .A(n141), .Y(n135) );
  HADDX1_RVT U131 ( .A0(n135), .B0(n134), .SO(n139) );
  OR2X1_RVT U132 ( .A1(n143), .A2(n146), .Y(n138) );
  OR2X1_RVT U133 ( .A1(n195), .A2(n136), .Y(n137) );
  FADDX1_RVT U134 ( .A(n139), .B(n138), .CI(n137), .CO(n162), .S(n167) );
  OR2X1_RVT U135 ( .A1(n140), .A2(n143), .Y(n196) );
  OR2X1_RVT U136 ( .A1(n196), .A2(n141), .Y(n166) );
  INVX0_RVT U137 ( .A(n142), .Y(n145) );
  OR2X1_RVT U138 ( .A1(n194), .A2(n143), .Y(n144) );
  HADDX1_RVT U139 ( .A0(n145), .B0(n144), .SO(n171) );
  OR2X1_RVT U140 ( .A1(n195), .A2(n146), .Y(n170) );
  OR3X1_RVT U141 ( .A1(n195), .A2(n194), .A3(n196), .Y(n169) );
  INVX0_RVT U142 ( .A(n147), .Y(n191) );
  OR2X1_RVT U143 ( .A1(n174), .A2(n173), .Y(n148) );
  AND3X1_RVT U144 ( .A1(b[7]), .A2(a[7]), .A3(n148), .Y(p[15]) );
  FADDX1_RVT U145 ( .A(n151), .B(n150), .CI(n149), .CO(n147), .S(n152) );
  INVX0_RVT U146 ( .A(n152), .Y(p[7]) );
  FADDX1_RVT U147 ( .A(n155), .B(n154), .CI(n153), .CO(n149), .S(n156) );
  INVX0_RVT U148 ( .A(n156), .Y(p[6]) );
  FADDX1_RVT U149 ( .A(n159), .B(n158), .CI(n157), .CO(n153), .S(n160) );
  INVX0_RVT U150 ( .A(n160), .Y(p[5]) );
  FADDX1_RVT U151 ( .A(n163), .B(n162), .CI(n161), .CO(n157), .S(n164) );
  INVX0_RVT U152 ( .A(n164), .Y(p[4]) );
  FADDX1_RVT U153 ( .A(n167), .B(n166), .CI(n165), .CO(n161), .S(n168) );
  INVX0_RVT U154 ( .A(n168), .Y(p[3]) );
  FADDX1_RVT U155 ( .A(n171), .B(n170), .CI(n169), .CO(n165), .S(n172) );
  INVX0_RVT U156 ( .A(n172), .Y(p[2]) );
  AND2X1_RVT U157 ( .A1(a[7]), .A2(b[7]), .Y(n175) );
  FADDX1_RVT U158 ( .A(n175), .B(n174), .CI(n173), .S(p[14]) );
  FADDX1_RVT U159 ( .A(n178), .B(n177), .CI(n176), .CO(n173), .S(p[13]) );
  FADDX1_RVT U160 ( .A(n181), .B(n180), .CI(n179), .CO(n176), .S(p[12]) );
  FADDX1_RVT U161 ( .A(n184), .B(n183), .CI(n182), .CO(n179), .S(p[11]) );
  FADDX1_RVT U162 ( .A(n187), .B(n186), .CI(n185), .CO(n182), .S(p[10]) );
  FADDX1_RVT U163 ( .A(n190), .B(n189), .CI(n188), .CO(n185), .S(p[9]) );
  FADDX1_RVT U164 ( .A(n193), .B(n192), .CI(n191), .CO(n188), .S(p[8]) );
  OR2X1_RVT U165 ( .A1(n195), .A2(n194), .Y(n197) );
  HADDX1_RVT U166 ( .A0(n197), .B0(n196), .SO(p[1]) );
  AND2X1_RVT U167 ( .A1(a[0]), .A2(b[0]), .Y(p[0]) );
endmodule


module dadda_var_bw_mul_bad ( para_mode, a, b, p );
  input [15:0] a;
  input [15:0] b;
  output [31:0] p;
  input para_mode;

  wire   [31:0] p_16;
  wire   [15:0] p_08_hi;
  wire   [15:0] p_08_lo;

  dadda_fix_bw_mul mul_16_i ( .a(a), .b(b), .p(p_16) );
  dadda_8_bit_mul_1 mul_08_hi_i ( .a(a[15:8]), .b(b[15:8]), .p(p_08_hi) );
  dadda_8_bit_mul_0 mul_08_lo_i ( .a(a[7:0]), .b(b[7:0]), .p(p_08_lo) );
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

