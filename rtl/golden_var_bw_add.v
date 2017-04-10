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
   output   [ 17 : 0 ]   p           // Sum 
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
   assign p_16    = a           + b           ;
   assign p_08_lo = a [ 7 : 0 ] + b [ 7 : 0 ] ;
   assign p_08_hi = a [15 : 8 ] + b [15 : 8 ] ;

   // 
   // Select output product by operation mode 
   //
   assign p = para_mode ? { p_08_hi , p_08_lo } : { 1'b0 , p_16 } ; 

 endmodule

