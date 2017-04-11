/* ======================================================================
 *
 * Golden Model of a Varaibale Bit-width Adder (golden_var_bw_add)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Chunheng Luo
 * ----------------------------------------------------------------------
 * Email Address    |  Chunheng.Luo@utexas.edu
 * ----------------------------------------------------------------------
 * Data of Creation |  04-10-2017
 * ----------------------------------------------------------------------
 * Description      |  Golden model of a variable bit-width adder, 
 *                  |  which can either do a 16-bit addition or do
 *                  |  two 8-bit additions in parallel. 
 * =================================================================== */

 module golden_var_bw_add 
 ( 
   input                 para_mode , // 1: 8-bit add's in parallel; 0: 16-bit add
   input    [ 15 : 0 ]   a         , // Operand A 
   input    [ 15 : 0 ]   b         , // Operand B 
   input                 ci_lo     , // Carry-in for the 16-bit adder or the lower 8-bit adder 
   input                 ci_hi     , // Carry-in for the higher 8-bit adder 
   output   [ 15 : 0 ]   p         , // Sum 
   output                co_lo     , // Carry-out for the lower 8-bit adder
   output                co_hi       // Carry-out for the 16-bit adder or the higher 8-bit adder 
 ) ; 

   // 
   // Internal signals 
   //
   wire     [ 16 : 0 ]   p_16      ; // Sum of 16-bit addition 
   wire     [  8 : 0 ]   p_08_lo   ; // Sum of a[ 7:0] and b[ 7:0]
   wire     [  8 : 0 ]   p_08_hi   ; // Sum of a[15:8] and b[15:8]

   //
   // 16-bit addition 
   //
   assign p_16    = a           + b           + ci_lo ;
   assign p_08_lo = a [ 7 : 0 ] + b [ 7 : 0 ] + ci_lo ;
   assign p_08_hi = a [15 : 8 ] + b [15 : 8 ] + ci_hi ;

   // 
   // Select output results by operation mode 
   //
   assign p     = para_mode ? { p_08_hi [ 7 : 0 ] , p_08_lo [ 7 : 0 ] } : { p_16 [ 15 : 0 ] } ; 

   assign co_lo = para_mode ? p_08_lo [ 8 ] : 1'b0        ; 
   assign co_hi = para_mode ? p_08_hi [ 8 ] : p_16 [ 16 ] ; 

 endmodule

