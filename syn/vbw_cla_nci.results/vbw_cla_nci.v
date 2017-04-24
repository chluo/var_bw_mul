/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Sun Apr 23 19:57:45 2017
/////////////////////////////////////////////////////////////


module vbw_cla_nci ( a, b, ci, control, s, co );
  input [63:0] a;
  input [63:0] b;
  input [1:0] control;
  output [63:0] s;
  input ci;
  output co;

  assign co = 1'b0;

endmodule

