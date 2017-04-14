/* ======================================================================
 *
 * Fixed Bit-width 8-bit Dadda Multiplier (dadda_8_bit_mul)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Chunheng Luo
 * ----------------------------------------------------------------------
 * Email Address    |  Chunheng.Luo@utexas.edu
 * ----------------------------------------------------------------------
 * Data of Creation |  04-12-2017
 * ----------------------------------------------------------------------
 * Description      |  8-bit Dadda multiplier. 
 * =================================================================== */

 module dadda_8_bit_mul 
 (
   input    [  7 : 0 ]   a            , // Operand A 
   input    [  7 : 0 ]   b            , // Operand B 
   output   [ 15 : 0 ]   p              // Product 
 ) ;

   //
   // Internal signals 
   //
   // The stage outputs are aligned
   // The first matrix coming out from the AND gates (8 rows)
   wire     [ 14 : 0 ]   row_00_st_0  ; // Row  0 of stage 0
   wire     [ 14 : 0 ]   row_01_st_0  ; // Row  1 of stage 0
   wire     [ 14 : 0 ]   row_02_st_0  ; // Row  2 of stage 0
   wire     [ 14 : 0 ]   row_03_st_0  ; // Row  3 of stage 0
   wire     [ 14 : 0 ]   row_04_st_0  ; // Row  4 of stage 0
   wire     [ 14 : 0 ]   row_05_st_0  ; // Row  5 of stage 0
   wire     [ 14 : 0 ]   row_06_st_0  ; // Row  6 of stage 0
   wire     [ 14 : 0 ]   row_07_st_0  ; // Row  7 of stage 0
   // Output of reduction stage 1 (6 rows) 
   wire     [ 14 : 0 ]   row_00_st_1  ; // Row  0 of stage 1
   wire     [ 14 : 0 ]   row_01_st_1  ; // Row  1 of stage 1
   wire     [ 14 : 0 ]   row_02_st_1  ; // Row  2 of stage 1
   wire     [ 14 : 0 ]   row_03_st_1  ; // Row  3 of stage 1
   wire     [ 14 : 0 ]   row_04_st_1  ; // Row  4 of stage 1
   wire     [ 14 : 0 ]   row_05_st_1  ; // Row  5 of stage 1
   // Output of reduction stage 2 (4 rows) 
   wire     [ 14 : 0 ]   row_00_st_2  ; // Row  0 of stage 2
   wire     [ 14 : 0 ]   row_01_st_2  ; // Row  1 of stage 2
   wire     [ 14 : 0 ]   row_02_st_2  ; // Row  2 of stage 2
   wire     [ 14 : 0 ]   row_03_st_2  ; // Row  3 of stage 2
   // Output of reduction stage 3 (3 rows) 
   wire     [ 14 : 0 ]   row_00_st_3  ; // Row  0 of stage 3
   wire     [ 14 : 0 ]   row_01_st_3  ; // Row  1 of stage 3
   wire     [ 14 : 0 ]   row_02_st_3  ; // Row  2 of stage 3
   // Output of reduction stage 4 (2 rows) 
   wire     [ 14 : 0 ]   row_00_st_4  ; // Row  0 of stage 4
   wire     [ 14 : 0 ]   row_01_st_4  ; // Row  1 of stage 4

   //
   // AND's
   // 
   assign row_00_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  0 ] } } )       ;  
   assign row_01_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  1 ] } } ) <<  1 ;  
   assign row_02_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  2 ] } } ) <<  2 ;  
   assign row_03_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  3 ] } } ) <<  3 ;  
   assign row_04_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  4 ] } } ) <<  4 ;  
   assign row_05_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  5 ] } } ) <<  5 ;  
   assign row_06_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  6 ] } } ) <<  6 ;  
   assign row_07_st_0 = ( { {  8 { 1'b0 } } , a } & { 16 { b [  7 ] } } ) <<  7 ;  

   //
   // Stage 1
   //
   wire [ 1 : 0 ] fa_00_st_1 = row_02_st_0 [  9 ] + row_03_st_0 [  9 ] + row_04_st_0 [  9 ] ;
   wire [ 1 : 0 ] fa_01_st_1 = row_01_st_0 [  8 ] + row_02_st_0 [  8 ] + row_03_st_0 [  8 ] ;
   wire [ 1 : 0 ] fa_02_st_1 = row_00_st_0 [  7 ] + row_01_st_0 [  7 ] + row_02_st_0 [  7 ] ;

   wire [ 1 : 0 ] ha_00_st_1 = row_00_st_0 [  6 ] + row_01_st_0 [  6 ]                      ;
   wire [ 1 : 0 ] ha_01_st_1 = row_04_st_0 [  8 ] + row_05_st_0 [  8 ]                      ;
   wire [ 1 : 0 ] ha_02_st_1 = row_03_st_0 [  7 ] + row_04_st_0 [  7 ]                      ;

   assign row_00_st_1 = { row_07_st_0 [ 14 : 10 ] , 
                                 fa_00_st_1 [ 0 ] , 
                                 fa_01_st_1 [ 0 ] , 
                                 fa_02_st_1 [ 0 ] , 
                                 ha_00_st_1 [ 0 ] , 
                          row_00_st_0 [  5 :  0 ]   
                        } ;

   assign row_01_st_1 = { row_06_st_0 [ 14 : 11 ] , 
                                 fa_00_st_1 [ 1 ] , 
                                 fa_01_st_1 [ 1 ] , 
                                 fa_02_st_1 [ 1 ] , 
                                 ha_00_st_1 [ 1 ] , 
                          row_02_st_0 [  6      ] , 
                          row_01_st_0 [  5 :  0 ]   
                        } ;

   assign row_02_st_1 = { row_05_st_0 [ 14 :  9 ] , 
                                 ha_01_st_1 [ 0 ] , 
                                 ha_02_st_1 [ 0 ] , 
                          row_03_st_0 [  6      ] , 
                          row_02_st_0 [  5 :  0 ]   
                        } ;

   assign row_03_st_1 = { row_04_st_0 [ 14 : 10 ] , 
                                 ha_01_st_1 [ 1 ] , 
                                 ha_02_st_1 [ 1 ] , 
                          row_05_st_0 [  7      ] , 
                          row_04_st_0 [  6      ] , 
                          row_03_st_0 [  5 :  0 ]   
                        } ;

   assign row_04_st_1 = { row_03_st_0 [ 14 : 10 ] , 
                          row_06_st_0 [  9      ] , 
                          row_07_st_0 [  8      ] , 
                          row_06_st_0 [  7      ] , 
                          row_05_st_0 [  6      ] , 
                          row_04_st_0 [  5 :  0 ]   
                        } ;
   assign row_05_st_1 = { row_02_st_0 [ 14 : 11 ] , 
                          row_06_st_0 [ 10      ] , 
                          row_07_st_0 [  9      ] , 
                          row_06_st_0 [  8      ] , 
                          row_07_st_0 [  7      ] , 
                          row_06_st_0 [  6      ] , 
                          row_05_st_0 [  5 :  0 ]   
                        } ;

   //
   // Stage 2
   //
   wire [ 1 : 0 ] fa_00_st_2 = row_00_st_1 [ 11 ] + row_01_st_1 [ 11 ] + row_02_st_1 [ 11 ] ;
   wire [ 1 : 0 ] fa_01_st_2 = row_00_st_1 [ 10 ] + row_01_st_1 [ 10 ] + row_02_st_1 [ 10 ] ;
   wire [ 1 : 0 ] fa_02_st_2 = row_00_st_1 [  9 ] + row_01_st_1 [  9 ] + row_02_st_1 [  9 ] ;
   wire [ 1 : 0 ] fa_03_st_2 = row_00_st_1 [  8 ] + row_01_st_1 [  8 ] + row_02_st_1 [  8 ] ;
   wire [ 1 : 0 ] fa_04_st_2 = row_00_st_1 [  7 ] + row_01_st_1 [  7 ] + row_02_st_1 [  7 ] ;
   wire [ 1 : 0 ] fa_05_st_2 = row_00_st_1 [  6 ] + row_01_st_1 [  6 ] + row_02_st_1 [  6 ] ;
   wire [ 1 : 0 ] fa_06_st_2 = row_00_st_1 [  5 ] + row_01_st_1 [  5 ] + row_02_st_1 [  5 ] ;
   wire [ 1 : 0 ] fa_07_st_2 = row_03_st_1 [ 10 ] + row_04_st_1 [ 10 ] + row_05_st_1 [ 10 ] ;
   wire [ 1 : 0 ] fa_08_st_2 = row_03_st_1 [  9 ] + row_04_st_1 [  9 ] + row_05_st_1 [  9 ] ;
   wire [ 1 : 0 ] fa_09_st_2 = row_03_st_1 [  8 ] + row_04_st_1 [  8 ] + row_05_st_1 [  8 ] ;
   wire [ 1 : 0 ] fa_10_st_2 = row_03_st_1 [  7 ] + row_04_st_1 [  7 ] + row_05_st_1 [  7 ] ;
   wire [ 1 : 0 ] fa_11_st_2 = row_03_st_1 [  6 ] + row_04_st_1 [  6 ] + row_05_st_1 [  6 ] ;

   wire [ 1 : 0 ] ha_00_st_2 = row_00_st_1 [  4 ] + row_01_st_1 [  4 ]                      ;
   wire [ 1 : 0 ] ha_01_st_2 = row_03_st_1 [  5 ] + row_04_st_1 [  5 ]                      ;

   assign row_00_st_2 = { row_00_st_1 [ 14 : 12 ] , 
                                 fa_00_st_2 [ 0 ] , 
                                 fa_01_st_2 [ 0 ] , 
                                 fa_02_st_2 [ 0 ] , 
                                 fa_03_st_2 [ 0 ] , 
                                 fa_04_st_2 [ 0 ] , 
                                 fa_05_st_2 [ 0 ] , 
                                 fa_06_st_2 [ 0 ] , 
                                 ha_00_st_2 [ 0 ] , 
                          row_00_st_1 [  3 :  0 ]   
                        } ;

   assign row_01_st_2 = { row_01_st_1 [ 14 : 13 ] , 
                                 fa_00_st_2 [ 1 ] , 
                                 fa_01_st_2 [ 1 ] , 
                                 fa_02_st_2 [ 1 ] , 
                                 fa_03_st_2 [ 1 ] , 
                                 fa_04_st_2 [ 1 ] , 
                                 fa_05_st_2 [ 1 ] , 
                                 fa_06_st_2 [ 1 ] , 
                                 ha_00_st_2 [ 1 ] , 
                          row_02_st_1 [  4      ] , 
                          row_01_st_1 [  3 :  0 ]   
                        } ;

   assign row_02_st_2 = { row_02_st_1 [ 14 : 12 ] , 
                          row_03_st_1 [ 11      ] , 
                                 fa_07_st_2 [ 0 ] , 
                                 fa_08_st_2 [ 0 ] , 
                                 fa_09_st_2 [ 0 ] , 
                                 fa_10_st_2 [ 0 ] , 
                                 fa_11_st_2 [ 0 ] , 
                                 ha_01_st_2 [ 0 ] , 
                          row_03_st_1 [  4      ] , 
                          row_02_st_1 [  3 :  0 ]   
                        } ;

   assign row_03_st_2 = { row_04_st_1 [ 14 : 13 ] , 
                          row_01_st_1 [ 12      ] , 
                                 fa_07_st_2 [ 1 ] , 
                                 fa_08_st_2 [ 1 ] , 
                                 fa_09_st_2 [ 1 ] , 
                                 fa_10_st_2 [ 1 ] , 
                                 fa_11_st_2 [ 1 ] , 
                                 ha_01_st_2 [ 1 ] , 
                          row_05_st_1 [  5      ] , 
                          row_04_st_1 [  4      ] , 
                          row_03_st_1 [  3 :  0 ]   
                        } ;

   //
   // Stage 3
   //
   wire [ 1 : 0 ] fa_00_st_3 = row_00_st_2 [ 12 ] + row_01_st_2 [ 12 ] + row_02_st_2 [ 12 ] ;
   wire [ 1 : 0 ] fa_01_st_3 = row_00_st_2 [ 11 ] + row_01_st_2 [ 11 ] + row_02_st_2 [ 11 ] ;
   wire [ 1 : 0 ] fa_02_st_3 = row_00_st_2 [ 10 ] + row_01_st_2 [ 10 ] + row_02_st_2 [ 10 ] ;
   wire [ 1 : 0 ] fa_03_st_3 = row_00_st_2 [  9 ] + row_01_st_2 [  9 ] + row_02_st_2 [  9 ] ;
   wire [ 1 : 0 ] fa_04_st_3 = row_00_st_2 [  8 ] + row_01_st_2 [  8 ] + row_02_st_2 [  8 ] ;
   wire [ 1 : 0 ] fa_05_st_3 = row_00_st_2 [  7 ] + row_01_st_2 [  7 ] + row_02_st_2 [  7 ] ;
   wire [ 1 : 0 ] fa_06_st_3 = row_00_st_2 [  6 ] + row_01_st_2 [  6 ] + row_02_st_2 [  6 ] ;
   wire [ 1 : 0 ] fa_07_st_3 = row_00_st_2 [  5 ] + row_01_st_2 [  5 ] + row_02_st_2 [  5 ] ;
   wire [ 1 : 0 ] fa_08_st_3 = row_00_st_2 [  4 ] + row_01_st_2 [  4 ] + row_02_st_2 [  4 ] ;

   wire [ 1 : 0 ] ha_00_st_3 = row_00_st_2 [  3 ] + row_01_st_2 [  3 ]                      ;

   assign row_00_st_3 = { row_00_st_2 [ 14 : 13 ] , 
                                 fa_00_st_3 [ 0 ] , 
                                 fa_01_st_3 [ 0 ] , 
                                 fa_02_st_3 [ 0 ] , 
                                 fa_03_st_3 [ 0 ] , 
                                 fa_04_st_3 [ 0 ] , 
                                 fa_05_st_3 [ 0 ] , 
                                 fa_06_st_3 [ 0 ] , 
                                 fa_07_st_3 [ 0 ] , 
                                 fa_08_st_3 [ 0 ] , 
                                 ha_00_st_3 [ 0 ] , 
                          row_00_st_2 [  2 :  0 ]   
                        } ;

   assign row_01_st_3 = { row_01_st_2 [ 14      ] , 
                                 fa_00_st_3 [ 1 ] , 
                                 fa_01_st_3 [ 1 ] , 
                                 fa_02_st_3 [ 1 ] , 
                                 fa_03_st_3 [ 1 ] , 
                                 fa_04_st_3 [ 1 ] , 
                                 fa_05_st_3 [ 1 ] , 
                                 fa_06_st_3 [ 1 ] , 
                                 fa_07_st_3 [ 1 ] , 
                                 fa_08_st_3 [ 1 ] , 
                                 ha_00_st_3 [ 1 ] , 
                          row_02_st_2 [  3      ] , 
                          row_01_st_2 [  2 :  0 ]   
                        } ;

   assign row_02_st_3 = { row_02_st_2 [ 14      ] , 
                          row_01_st_2 [ 13      ] , 
                          row_03_st_2 [ 12 :  3 ] , 
                          row_02_st_2 [  2 :  0 ]   
                        } ;

   //
   // Stage 4
   //
   wire [ 1 : 0 ] fa_00_st_4 = row_00_st_3 [ 13 ] + row_01_st_3 [ 13 ] + row_02_st_3 [ 13 ] ;
   wire [ 1 : 0 ] fa_01_st_4 = row_00_st_3 [ 12 ] + row_01_st_3 [ 12 ] + row_02_st_3 [ 12 ] ;
   wire [ 1 : 0 ] fa_02_st_4 = row_00_st_3 [ 11 ] + row_01_st_3 [ 11 ] + row_02_st_3 [ 11 ] ;
   wire [ 1 : 0 ] fa_03_st_4 = row_00_st_3 [ 10 ] + row_01_st_3 [ 10 ] + row_02_st_3 [ 10 ] ;
   wire [ 1 : 0 ] fa_04_st_4 = row_00_st_3 [  9 ] + row_01_st_3 [  9 ] + row_02_st_3 [  9 ] ;
   wire [ 1 : 0 ] fa_05_st_4 = row_00_st_3 [  8 ] + row_01_st_3 [  8 ] + row_02_st_3 [  8 ] ;
   wire [ 1 : 0 ] fa_06_st_4 = row_00_st_3 [  7 ] + row_01_st_3 [  7 ] + row_02_st_3 [  7 ] ;
   wire [ 1 : 0 ] fa_07_st_4 = row_00_st_3 [  6 ] + row_01_st_3 [  6 ] + row_02_st_3 [  6 ] ;
   wire [ 1 : 0 ] fa_08_st_4 = row_00_st_3 [  5 ] + row_01_st_3 [  5 ] + row_02_st_3 [  5 ] ;
   wire [ 1 : 0 ] fa_09_st_4 = row_00_st_3 [  4 ] + row_01_st_3 [  4 ] + row_02_st_3 [  4 ] ;
   wire [ 1 : 0 ] fa_10_st_4 = row_00_st_3 [  3 ] + row_01_st_3 [  3 ] + row_02_st_3 [  3 ] ;

   wire [ 1 : 0 ] ha_00_st_4 = row_00_st_3 [  2 ] + row_01_st_3 [  2 ]                      ;

   assign row_00_st_4 = { row_00_st_3 [ 14      ] , 
                                 fa_00_st_4 [ 0 ] , 
                                 fa_01_st_4 [ 0 ] , 
                                 fa_02_st_4 [ 0 ] , 
                                 fa_03_st_4 [ 0 ] , 
                                 fa_04_st_4 [ 0 ] , 
                                 fa_05_st_4 [ 0 ] , 
                                 fa_06_st_4 [ 0 ] , 
                                 fa_07_st_4 [ 0 ] , 
                                 fa_08_st_4 [ 0 ] , 
                                 fa_09_st_4 [ 0 ] , 
                                 fa_10_st_4 [ 0 ] , 
                                 ha_00_st_4 [ 0 ] , 
                          row_00_st_3 [  1 :  0 ]   
                        } ;

   assign row_01_st_4 = {                           
                                 fa_00_st_4 [ 1 ] , 
                                 fa_01_st_4 [ 1 ] , 
                                 fa_02_st_4 [ 1 ] , 
                                 fa_03_st_4 [ 1 ] , 
                                 fa_04_st_4 [ 1 ] , 
                                 fa_05_st_4 [ 1 ] , 
                                 fa_06_st_4 [ 1 ] , 
                                 fa_07_st_4 [ 1 ] , 
                                 fa_08_st_4 [ 1 ] , 
                                 fa_09_st_4 [ 1 ] , 
                                 fa_10_st_4 [ 1 ] , 
                                 ha_00_st_4 [ 1 ] , 
                          row_02_st_3 [  2      ] , 
                          row_01_st_3 [  1 :  0 ]   
                        } ;

   //
   // CPA
   // 
   assign p = row_00_st_4 + row_01_st_4 ; 

endmodule 
