/* ======================================================================
 *
 * Bad Variable Bit-width Array Multiplier (array_var_bw_mul_bad)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Wei Ye
 * ----------------------------------------------------------------------
 * Email Address    |
 * ----------------------------------------------------------------------
 * Data of Creation |  04-12-2017
 * ----------------------------------------------------------------------
 * Description      |  16-bit multiplication or two 8-bit multiplications
 *                  |  in parallel. Implemented with a 16-bit array 
 *                  |  multiplier and two 8-bit multipliers.
 * =================================================================== */

 module array_var_bw_mul_bad 
 (
   input                 para_mode    , 
   input    [ 15 : 0 ]   a            , // Operand A 
   input    [ 15 : 0 ]   b            , // Operand B 
   output   [ 31 : 0 ]   p              // Product 
 ) ; 

   // 
   // Internal signals
   //
   wire     [ 31 : 0 ]   p_16         ; // 16-bit multiplier output
   wire     [ 15 : 0 ]   p_08_hi      ; //  8-bit multiplier (for higher half) output
   wire     [ 15 : 0 ]   p_08_lo      ; //  8-bit multiplier (for lower  half) output

   //
   // Module instances
   //
   array_fix_bw_mul    mul_16_i (
     .a          ( a            ) ,
     .b          ( b            ) ,
     .p          ( p_16         )  
   ) ; 

   array_8_bit_mul  mul_08_hi_i (
     .a          ( a [ 15 : 8 ] ) ,
     .b          ( b [ 15 : 8 ] ) ,
     .p          ( p_08_hi      )  
   ) ; 

   array_8_bit_mul  mul_08_lo_i (
     .a          ( a [  7 : 0 ] ) ,
     .b          ( b [  7 : 0 ] ) ,
     .p          ( p_08_lo      )  
   ) ; 

   //
   // Ouput mux
   //
   assign p = para_mode ? { p_08_hi , p_08_lo } : p_16 ; 

endmodule 
