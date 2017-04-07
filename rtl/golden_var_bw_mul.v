/* ======================================================================
 *
 * Golden Model of a Varaibale Bit-width Multiplier (golden_var_bw_mul)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Chunheng Luo
 * ----------------------------------------------------------------------
 * Email Address    |  Chunheng.Luo@utexas.edu
 * ----------------------------------------------------------------------
 * Data of Creation |  04-07-2017
 * ----------------------------------------------------------------------
 * Description      |  Golden model of a variable bit-width multiplier, 
 *                  |  which can either do a 16-bit multiplication or do
 *                  |  two 8-bit multiplications in parallel. 
 * =================================================================== */

 module golden_var_bw_mul 
 ( 
   input                 para_mode , // 1: 8-bit mul's in parallel; 0: 16-bit mul
   input    [ 15 : 0 ]   a         , // Operand A 
   input    [ 15 : 0 ]   b         , // Operand B 
   output   [ 31 : 0 ]   p           // Product 
 ) ; 

   // 
   // Internal signals 
   //
   wire     [ 31 : 0 ]   p_16      ; // Product of 16-bit multiplication 
   wire     [ 15 : 0 ]   p_08_lo   ; // Product of a[ 7:0] and b[ 7:0]
   wire     [ 15 : 0 ]   p_08_hi   ; // Product of a[15:8] and b[15:8]

   //
   // 16-bit multiplication 
   //
   assign p_16    = a           * b           ;
   assign p_08_lo = a [ 7 : 0 ] * b [ 7 : 0 ] ;
   assign p_08_hi = a [15 : 8 ] * b [15 : 8 ] ;

   // 
   // Select output product by operation mode 
   //
   assign p = para_mode ? { p_08_hi , p_08_lo } : p_16 ; 

 endmodule : golden_var_bw_mul 
