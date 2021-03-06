/* ======================================================================
 *
 * Fixed Bit-width 16-bit Array Multiplier (array_fix_bw_mul)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Wei Ye
 * ----------------------------------------------------------------------
 * Email Address    |  weiye@utexas.edu
 * ----------------------------------------------------------------------
 * Data of Creation |  04-13-2017
 * ----------------------------------------------------------------------
 * Description      |  16-bit array multiplier. 
 * =================================================================== */

 module array_8_bit_mul 
 (
   input    [  7 : 0 ]   a            , // Operand A 
   input    [  7 : 0 ]   b            , // Operand B 
   output   [ 15 : 0 ]   p              // Product 
 ) ;

   //
   // Internal signals 
   //
   // The stage outputs are aligned
   // The first matrix coming out from the AND gates (16 rows)
   wire     [ 7 : 0 ]   b_00_a  ; // Row  0
   wire     [ 7 : 0 ]   b_01_a  ; // Row  1
   wire     [ 7 : 0 ]   b_02_a  ; // Row  2
   wire     [ 7 : 0 ]   b_03_a  ; // Row  3
   wire     [ 7 : 0 ]   b_04_a  ; // Row  4
   wire     [ 7 : 0 ]   b_05_a  ; // Row  5
   wire     [ 7 : 0 ]   b_06_a  ; // Row  6
   wire     [ 7 : 0 ]   b_07_a  ; // Row  7

   //
   // AND's
   // 
    assign b_00_a =  a  & { 8 { b [  0 ] } } ;  
    assign b_01_a =  a  & { 8 { b [  1 ] } } ;  
    assign b_02_a =  a  & { 8 { b [  2 ] } } ;  
    assign b_03_a =  a  & { 8 { b [  3 ] } } ;  
    assign b_04_a =  a  & { 8 { b [  4 ] } } ;  
    assign b_05_a =  a  & { 8 { b [  5 ] } } ;  
    assign b_06_a =  a  & { 8 { b [  6 ] } } ;  
    assign b_07_a =  a  & { 8 { b [  7 ] } } ;  
 
    assign p [ 0 ] = b_00_a [ 0 ] ;

    //
    // Row 0
    //
    wire [ 1 : 0 ] fa_00_01 =                b_01_a [ 0 ] + b_00_a [  1 ] ;
    wire [ 1 : 0 ] fa_00_02 = b_02_a [ 0 ] + b_01_a [ 1 ] + b_00_a [  2 ] ;
    wire [ 1 : 0 ] fa_00_03 = b_02_a [ 1 ] + b_01_a [ 2 ] + b_00_a [  3 ] ;
    wire [ 1 : 0 ] fa_00_04 = b_02_a [ 2 ] + b_01_a [ 3 ] + b_00_a [  4 ] ;
    wire [ 1 : 0 ] fa_00_05 = b_02_a [ 3 ] + b_01_a [ 4 ] + b_00_a [  5 ] ;
    wire [ 1 : 0 ] fa_00_06 = b_02_a [ 4 ] + b_01_a [ 5 ] + b_00_a [  6 ] ;
    wire [ 1 : 0 ] fa_00_07 = b_02_a [ 5 ] + b_01_a [ 6 ] + b_00_a [  7 ] ;

    assign p [ 1 ] = fa_00_01 [ 0 ] ;


   //
   // Row 1
   //
   wire [ 1 : 0 ] fa_01_02 = fa_00_01 [ 1 ] + fa_00_02 [ 0 ]                ;
   wire [ 1 : 0 ] fa_01_03 = fa_00_02 [ 1 ] + fa_00_03 [ 0 ] + b_03_a [ 0 ] ;
   wire [ 1 : 0 ] fa_01_04 = fa_00_03 [ 1 ] + fa_00_04 [ 0 ] + b_03_a [ 1 ] ;
   wire [ 1 : 0 ] fa_01_05 = fa_00_04 [ 1 ] + fa_00_05 [ 0 ] + b_03_a [ 2 ] ;
   wire [ 1 : 0 ] fa_01_06 = fa_00_05 [ 1 ] + fa_00_06 [ 0 ] + b_03_a [ 3 ] ;
   wire [ 1 : 0 ] fa_01_07 = fa_00_06 [ 1 ] + fa_00_07 [ 0 ] + b_03_a [ 4 ] ;
   wire [ 1 : 0 ] fa_01_08 = fa_00_07 [ 1 ] +   b_01_a [ 7 ] + b_02_a [ 6 ] ;
   
   assign p [ 2 ] = fa_01_02 [ 0 ] ;


   //
   // Row 2
   //
   wire [ 1 : 0 ] fa_02_03 = fa_01_02 [ 1 ] + fa_01_03 [ 0 ]                ;
   wire [ 1 : 0 ] fa_02_04 = fa_01_03 [ 1 ] + fa_01_04 [ 0 ] + b_04_a [ 0 ] ;
   wire [ 1 : 0 ] fa_02_05 = fa_01_04 [ 1 ] + fa_01_05 [ 0 ] + b_04_a [ 1 ] ;
   wire [ 1 : 0 ] fa_02_06 = fa_01_05 [ 1 ] + fa_01_06 [ 0 ] + b_04_a [ 2 ] ;
   wire [ 1 : 0 ] fa_02_07 = fa_01_06 [ 1 ] + fa_01_07 [ 0 ] + b_04_a [ 3 ] ;
   wire [ 1 : 0 ] fa_02_08 = fa_01_07 [ 1 ] + fa_01_08 [ 0 ] + b_03_a [ 5 ] ;
   wire [ 1 : 0 ] fa_02_09 = fa_01_08 [ 1 ] +   b_02_a [ 7 ] + b_03_a [ 6 ] ;
   
   assign p [ 3 ] = fa_02_03 [ 0 ] ;

   //
   // Row 3
   //
   wire [ 1 : 0 ] fa_03_04 = fa_02_03 [ 1 ] + fa_02_04 [ 0 ]                ;
   wire [ 1 : 0 ] fa_03_05 = fa_02_04 [ 1 ] + fa_02_05 [ 0 ] + b_05_a [ 0 ] ;
   wire [ 1 : 0 ] fa_03_06 = fa_02_05 [ 1 ] + fa_02_06 [ 0 ] + b_05_a [ 1 ] ;
   wire [ 1 : 0 ] fa_03_07 = fa_02_06 [ 1 ] + fa_02_07 [ 0 ] + b_05_a [ 2 ] ;
   wire [ 1 : 0 ] fa_03_08 = fa_02_07 [ 1 ] + fa_02_08 [ 0 ] + b_04_a [ 4 ] ;
   wire [ 1 : 0 ] fa_03_09 = fa_02_08 [ 1 ] + fa_02_09 [ 0 ] + b_04_a [ 5 ] ;
   wire [ 1 : 0 ] fa_03_10 = fa_02_09 [ 1 ] +   b_03_a [ 7 ] + b_04_a [ 6 ] ;

   assign p [ 4 ] = fa_03_04 [ 0 ] ;

   //
   // Row 4
   //
   wire [ 1 : 0 ] fa_04_05 = fa_03_04 [ 1 ] + fa_03_05 [ 0 ]                ;
   wire [ 1 : 0 ] fa_04_06 = fa_03_05 [ 1 ] + fa_03_06 [ 0 ] + b_06_a [ 0 ] ;
   wire [ 1 : 0 ] fa_04_07 = fa_03_06 [ 1 ] + fa_03_07 [ 0 ] + b_06_a [ 1 ] ;
   wire [ 1 : 0 ] fa_04_08 = fa_03_07 [ 1 ] + fa_03_08 [ 0 ] + b_05_a [ 3 ] ;
   wire [ 1 : 0 ] fa_04_09 = fa_03_08 [ 1 ] + fa_03_09 [ 0 ] + b_05_a [ 4 ] ;
   wire [ 1 : 0 ] fa_04_10 = fa_03_09 [ 1 ] + fa_03_10 [ 0 ] + b_05_a [ 5 ] ;
   wire [ 1 : 0 ] fa_04_11 = fa_03_10 [ 1 ] +   b_04_a [ 7 ] + b_05_a [ 6 ] ;

    assign p [ 5 ] = fa_04_05 [ 0 ] ;


   //
   // Row 5
   //
   wire [ 1 : 0 ] fa_05_06 = fa_04_05 [ 1 ] + fa_04_06 [ 0 ]                ;
   wire [ 1 : 0 ] fa_05_07 = fa_04_06 [ 1 ] + fa_04_07 [ 0 ] + b_07_a [ 0 ] ;
   wire [ 1 : 0 ] fa_05_08 = fa_04_07 [ 1 ] + fa_04_08 [ 0 ] + b_06_a [ 2 ] ;
   wire [ 1 : 0 ] fa_05_09 = fa_04_08 [ 1 ] + fa_04_09 [ 0 ] + b_06_a [ 3 ] ;
   wire [ 1 : 0 ] fa_05_10 = fa_04_09 [ 1 ] + fa_04_10 [ 0 ] + b_06_a [ 4 ] ;
   wire [ 1 : 0 ] fa_05_11 = fa_04_10 [ 1 ] + fa_04_11 [ 0 ] + b_06_a [ 5 ] ;
   wire [ 1 : 0 ] fa_05_12 = fa_04_11 [ 1 ] +   b_05_a [ 7 ] + b_06_a [ 6 ] ;

   assign p [ 6 ] = fa_05_06 [ 0 ] ;


   //
   // Row 6
   //
   wire [ 1 : 0 ] fa_06_07 = fa_05_06 [ 1 ] + fa_05_07 [ 0 ]                ;
   wire [ 1 : 0 ] fa_06_08 = fa_05_07 [ 1 ] + fa_05_08 [ 0 ] + b_07_a [ 1 ] ;
   wire [ 1 : 0 ] fa_06_09 = fa_05_08 [ 1 ] + fa_05_09 [ 0 ] + b_07_a [ 2 ] ;
   wire [ 1 : 0 ] fa_06_10 = fa_05_09 [ 1 ] + fa_05_10 [ 0 ] + b_07_a [ 3 ] ;
   wire [ 1 : 0 ] fa_06_11 = fa_05_10 [ 1 ] + fa_05_11 [ 0 ] + b_07_a [ 4 ] ;
   wire [ 1 : 0 ] fa_06_12 = fa_05_11 [ 1 ] + fa_05_12 [ 0 ] + b_07_a [ 5 ] ;
   wire [ 1 : 0 ] fa_06_13 = fa_05_12 [ 1 ] +   b_06_a [ 7 ] + b_07_a [ 6 ] ;

   assign p [ 7 ] = fa_06_07 [ 0 ] ;


   //
   // Row 7
   //
   wire [ 1 : 0 ] fa_07_08 = fa_06_07 [ 1 ] + fa_06_08 [ 0 ]                  ;
   wire [ 1 : 0 ] fa_07_09 = fa_06_08 [ 1 ] + fa_06_09 [ 0 ] + fa_07_08 [ 1 ] ;
   wire [ 1 : 0 ] fa_07_10 = fa_06_09 [ 1 ] + fa_06_10 [ 0 ] + fa_07_09 [ 1 ] ;
   wire [ 1 : 0 ] fa_07_11 = fa_06_10 [ 1 ] + fa_06_11 [ 0 ] + fa_07_10 [ 1 ] ;
   wire [ 1 : 0 ] fa_07_12 = fa_06_11 [ 1 ] + fa_06_12 [ 0 ] + fa_07_11 [ 1 ] ;
   wire [ 1 : 0 ] fa_07_13 = fa_06_12 [ 1 ] + fa_06_13 [ 0 ] + fa_07_12 [ 1 ] ;
   wire [ 1 : 0 ] fa_07_14 = fa_06_13 [ 1 ] +   b_07_a [ 7 ] + fa_07_13 [ 1 ] ;

    assign p [  8 ] = fa_07_08 [ 0 ] ;
    assign p [  9 ] = fa_07_09 [ 0 ] ;
    assign p [ 10 ] = fa_07_10 [ 0 ] ;
    assign p [ 11 ] = fa_07_11 [ 0 ] ;
    assign p [ 12 ] = fa_07_12 [ 0 ] ;
    assign p [ 13 ] = fa_07_13 [ 0 ] ;
    assign p [ 14 ] = fa_07_14 [ 0 ] ;
    assign p [ 15 ] = fa_07_14 [ 1 ] ;


endmodule
