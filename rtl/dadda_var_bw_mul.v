/* ======================================================================
 *
 * Variable Bit-width Dadda Multiplier (dadda_var_bw_mul)
 *
 * ======================================================================
 * Basic Inforation 
 * ----------------------------------------------------------------------
 * Author           |  Chunheng Luo
 * ----------------------------------------------------------------------
 * Email Address    |  Chunheng.Luo@utexas.edu
 * ----------------------------------------------------------------------
 * Data of Creation |  04-08-2017
 * ----------------------------------------------------------------------
 * Description      |  16-bit multiplication or two 8-bit multiplications
 *                  |  in parallel. 
 * =================================================================== */

 module dadda_var_bw_mul 
 (
   input                 para_mode    , 
   input    [ 15 : 0 ]   a            , // Operand A 
   input    [ 15 : 0 ]   b            , // Operand B 
   output   [ 31 : 0 ]   p              // Product 
 ) ; 

   //
   // Internal signals 
   //
   // The stage outputs are aligned
   // The first matrix coming out from the AND gates (16 rows)
   wire     [ 30 : 0 ]   row_00_st_0  ; // Row  0 of stage 0
   wire     [ 30 : 0 ]   row_01_st_0  ; // Row  1 of stage 0
   wire     [ 30 : 0 ]   row_02_st_0  ; // Row  2 of stage 0
   wire     [ 30 : 0 ]   row_03_st_0  ; // Row  3 of stage 0
   wire     [ 30 : 0 ]   row_04_st_0  ; // Row  4 of stage 0
   wire     [ 30 : 0 ]   row_05_st_0  ; // Row  5 of stage 0
   wire     [ 30 : 0 ]   row_06_st_0  ; // Row  6 of stage 0
   wire     [ 30 : 0 ]   row_07_st_0  ; // Row  7 of stage 0
   wire     [ 30 : 0 ]   row_08_st_0  ; // Row  8 of stage 0
   wire     [ 30 : 0 ]   row_09_st_0  ; // Row  9 of stage 0
   wire     [ 30 : 0 ]   row_10_st_0  ; // Row 10 of stage 0
   wire     [ 30 : 0 ]   row_11_st_0  ; // Row 11 of stage 0
   wire     [ 30 : 0 ]   row_12_st_0  ; // Row 12 of stage 0
   wire     [ 30 : 0 ]   row_13_st_0  ; // Row 13 of stage 0
   wire     [ 30 : 0 ]   row_14_st_0  ; // Row 14 of stage 0
   wire     [ 30 : 0 ]   row_15_st_0  ; // Row 15 of stage 0
   // Output of reduction stage 1 (12 rows) 
   wire     [ 30 : 0 ]   row_00_st_1  ; // Row  0 of stage 1
   wire     [ 30 : 0 ]   row_01_st_1  ; // Row  1 of stage 1
   wire     [ 30 : 0 ]   row_02_st_1  ; // Row  2 of stage 1
   wire     [ 30 : 0 ]   row_03_st_1  ; // Row  3 of stage 1
   wire     [ 30 : 0 ]   row_04_st_1  ; // Row  4 of stage 1
   wire     [ 30 : 0 ]   row_05_st_1  ; // Row  5 of stage 1
   wire     [ 30 : 0 ]   row_06_st_1  ; // Row  6 of stage 1
   wire     [ 30 : 0 ]   row_07_st_1  ; // Row  7 of stage 1
   wire     [ 30 : 0 ]   row_08_st_1  ; // Row  8 of stage 1
   wire     [ 30 : 0 ]   row_09_st_1  ; // Row  9 of stage 1
   wire     [ 30 : 0 ]   row_10_st_1  ; // Row 10 of stage 1
   wire     [ 30 : 0 ]   row_11_st_1  ; // Row 11 of stage 1
   // Output of reduction stage 2 (9 rows) 
   wire     [ 30 : 0 ]   row_00_st_2  ; // Row  0 of stage 2
   wire     [ 30 : 0 ]   row_01_st_2  ; // Row  1 of stage 2
   wire     [ 30 : 0 ]   row_02_st_2  ; // Row  2 of stage 2
   wire     [ 30 : 0 ]   row_03_st_2  ; // Row  3 of stage 2
   wire     [ 30 : 0 ]   row_04_st_2  ; // Row  4 of stage 2
   wire     [ 30 : 0 ]   row_05_st_2  ; // Row  5 of stage 2
   wire     [ 30 : 0 ]   row_06_st_2  ; // Row  6 of stage 2
   wire     [ 30 : 0 ]   row_07_st_2  ; // Row  7 of stage 2
   wire     [ 30 : 0 ]   row_08_st_2  ; // Row  8 of stage 2
   // Output of reduction stage 3 (6 rows) 
   wire     [ 30 : 0 ]   row_00_st_3  ; // Row  0 of stage 3
   wire     [ 30 : 0 ]   row_01_st_3  ; // Row  1 of stage 3
   wire     [ 30 : 0 ]   row_02_st_3  ; // Row  2 of stage 3
   wire     [ 30 : 0 ]   row_03_st_3  ; // Row  3 of stage 3
   wire     [ 30 : 0 ]   row_04_st_3  ; // Row  4 of stage 3
   wire     [ 30 : 0 ]   row_05_st_3  ; // Row  5 of stage 3
   // Output of reduction stage 4 (4 rows) 
   wire     [ 30 : 0 ]   row_00_st_4  ; // Row  0 of stage 4
   wire     [ 30 : 0 ]   row_01_st_4  ; // Row  1 of stage 4
   wire     [ 30 : 0 ]   row_02_st_4  ; // Row  2 of stage 4
   wire     [ 30 : 0 ]   row_03_st_4  ; // Row  3 of stage 4
   // Output of reduction stage 5 (3 rows) 
   wire     [ 30 : 0 ]   row_00_st_5  ; // Row  0 of stage 5
   wire     [ 30 : 0 ]   row_01_st_5  ; // Row  1 of stage 5
   wire     [ 30 : 0 ]   row_02_st_5  ; // Row  2 of stage 5
   // Output of reduction stage 6 (2 rows) 
   wire     [ 30 : 0 ]   row_00_st_6  ; // Row  0 of stage 6
   wire     [ 30 : 0 ]   row_01_st_6  ; // Row  1 of stage 6

   //
   // AND's
   // 
   assign row_00_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  0 ] } } )       ;  
   assign row_01_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  1 ] } } ) <<  1 ;  
   assign row_02_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  2 ] } } ) <<  2 ;  
   assign row_03_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  3 ] } } ) <<  3 ;  
   assign row_04_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  4 ] } } ) <<  4 ;  
   assign row_05_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  5 ] } } ) <<  5 ;  
   assign row_06_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  6 ] } } ) <<  6 ;  
   assign row_07_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , { 8 { 1'b0 } } , a [  7 : 0 ] } : a ) & { 32 { b [  7 ] } } ) <<  7 ;  
   assign row_08_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [  8 ] } } ) <<  8 ;  
   assign row_09_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [  9 ] } } ) <<  9 ;  
   assign row_10_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 10 ] } } ) << 10 ;  
   assign row_11_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 11 ] } } ) << 11 ;  
   assign row_12_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 12 ] } } ) << 12 ;  
   assign row_13_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 13 ] } } ) << 13 ;  
   assign row_14_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 14 ] } } ) << 14 ;  
   assign row_15_st_0 = ( ( para_mode ? { { 16 { 1'b0 } } , a [ 15 : 8 ] , { 8 { 1'b0 } } } : a ) & { 32 { b [ 15 ] } } ) << 15 ;  

   //
   // Stage 1
   //
   wire [ 1 : 0 ] fa_00_st_1 = row_04_st_0 [ 19 ] + row_05_st_0 [ 19 ] + row_06_st_0 [ 19 ] ;
   wire [ 1 : 0 ] fa_01_st_1 = row_03_st_0 [ 18 ] + row_04_st_0 [ 18 ] + row_05_st_0 [ 18 ] ;
   wire [ 1 : 0 ] fa_02_st_1 = row_02_st_0 [ 17 ] + row_03_st_0 [ 17 ] + row_04_st_0 [ 17 ] ;
   wire [ 1 : 0 ] fa_03_st_1 = row_01_st_0 [ 16 ] + row_02_st_0 [ 16 ] + row_03_st_0 [ 16 ] ;
   wire [ 1 : 0 ] fa_04_st_1 = row_00_st_0 [ 15 ] + row_01_st_0 [ 15 ] + row_02_st_0 [ 15 ] ;
   wire [ 1 : 0 ] fa_05_st_1 = row_00_st_0 [ 14 ] + row_01_st_0 [ 14 ] + row_02_st_0 [ 14 ] ;
   wire [ 1 : 0 ] fa_06_st_1 = row_00_st_0 [ 13 ] + row_01_st_0 [ 13 ] + row_02_st_0 [ 13 ] ;
   wire [ 1 : 0 ] fa_07_st_1 = row_06_st_0 [ 18 ] + row_07_st_0 [ 18 ] + row_08_st_0 [ 18 ] ;
   wire [ 1 : 0 ] fa_08_st_1 = row_05_st_0 [ 17 ] + row_06_st_0 [ 17 ] + row_07_st_0 [ 17 ] ;
   wire [ 1 : 0 ] fa_09_st_1 = row_04_st_0 [ 16 ] + row_05_st_0 [ 16 ] + row_06_st_0 [ 16 ] ;
   wire [ 1 : 0 ] fa_10_st_1 = row_03_st_0 [ 15 ] + row_04_st_0 [ 15 ] + row_05_st_0 [ 15 ] ;
   wire [ 1 : 0 ] fa_11_st_1 = row_03_st_0 [ 14 ] + row_04_st_0 [ 14 ] + row_05_st_0 [ 14 ] ;
   wire [ 1 : 0 ] fa_12_st_1 = row_08_st_0 [ 17 ] + row_09_st_0 [ 17 ] + row_10_st_0 [ 17 ] ;
   wire [ 1 : 0 ] fa_13_st_1 = row_07_st_0 [ 16 ] + row_08_st_0 [ 16 ] + row_09_st_0 [ 16 ] ;
   wire [ 1 : 0 ] fa_14_st_1 = row_06_st_0 [ 15 ] + row_07_st_0 [ 15 ] + row_08_st_0 [ 15 ] ;
   wire [ 1 : 0 ] ha_00_st_1 = row_00_st_0 [ 12 ] + row_01_st_0 [ 12 ]                      ;
   wire [ 1 : 0 ] ha_01_st_1 = row_03_st_0 [ 13 ] + row_04_st_0 [ 13 ]                      ;
   wire [ 1 : 0 ] ha_02_st_1 = row_06_st_0 [ 14 ] + row_07_st_0 [ 14 ]                      ;
   wire [ 1 : 0 ] ha_03_st_1 = row_10_st_0 [ 16 ] + row_11_st_0 [ 16 ]                      ;
   wire [ 1 : 0 ] ha_04_st_1 = row_09_st_0 [ 15 ] + row_10_st_0 [ 15 ]                      ;

   assign row_00_st_1 = { row_15_st_0 [ 30 : 20 ] , 
                                 fa_00_st_1 [ 0 ] , 
                                 fa_01_st_1 [ 0 ] , 
                                 fa_02_st_1 [ 0 ] , 
                                 fa_03_st_1 [ 0 ] , 
                                 fa_04_st_1 [ 0 ] , 
                                 fa_05_st_1 [ 0 ] , 
                                 fa_06_st_1 [ 0 ] , 
                                 ha_00_st_1 [ 0 ] , 
                          row_00_st_0 [ 11 :  0 ]   
                        } ;
   assign row_01_st_1 = { row_14_st_0 [ 30 : 21 ] , 
                                 fa_00_st_1 [ 1 ] , 
                                 fa_01_st_1 [ 1 ] , 
                                 fa_02_st_1 [ 1 ] , 
                                 fa_03_st_1 [ 1 ] , 
                                 fa_04_st_1 [ 1 ] , 
                                 fa_05_st_1 [ 1 ] , 
                                 fa_06_st_1 [ 1 ] , 
                                 ha_00_st_1 [ 1 ] , 
                          row_02_st_0 [ 12      ] ,
                          row_01_st_0 [ 11 :  0 ]   
                        } ;
   assign row_02_st_1 = { row_13_st_0 [ 30 : 19 ] , 
                                 fa_07_st_1 [ 0 ] , 
                                 fa_08_st_1 [ 0 ] , 
                                 fa_09_st_1 [ 0 ] , 
                                 fa_10_st_1 [ 0 ] , 
                                 fa_11_st_1 [ 0 ] , 
                                 ha_01_st_1 [ 0 ] , 
                          row_03_st_0 [ 12      ] ,
                          row_02_st_0 [ 11 :  0 ]   
                        } ;
   assign row_03_st_1 = { row_12_st_0 [ 30 : 20 ] , 
                                 fa_07_st_1 [ 1 ] , 
                                 fa_08_st_1 [ 1 ] , 
                                 fa_09_st_1 [ 1 ] , 
                                 fa_10_st_1 [ 1 ] , 
                                 fa_11_st_1 [ 1 ] , 
                                 ha_01_st_1 [ 1 ] , 
                          row_05_st_0 [ 13      ] ,
                          row_04_st_0 [ 12      ] ,
                          row_03_st_0 [ 11 :  0 ]   
                        } ;
   assign row_04_st_1 = { row_11_st_0 [ 30 : 18 ] , 
                                 fa_12_st_1 [ 0 ] , 
                                 fa_13_st_1 [ 0 ] , 
                                 fa_14_st_1 [ 0 ] , 
                                 ha_02_st_1 [ 0 ] , 
                          row_06_st_0 [ 13      ] ,
                          row_05_st_0 [ 12      ] ,
                          row_04_st_0 [ 11 :  0 ]   
                        } ;
   assign row_05_st_1 = { row_10_st_0 [ 30 : 19 ] , 
                                 fa_12_st_1 [ 1 ] , 
                                 fa_13_st_1 [ 1 ] , 
                                 fa_14_st_1 [ 1 ] , 
                                 ha_02_st_1 [ 1 ] , 
                          row_08_st_0 [ 14      ] ,
                          row_07_st_0 [ 13      ] ,
                          row_06_st_0 [ 12      ] ,
                          row_05_st_0 [ 11 :  0 ]   
                        } ;
   assign row_06_st_1 = { row_09_st_0 [ 30 : 18 ] , 
                          row_11_st_0 [ 17      ] ,
                                 ha_03_st_1 [ 0 ] , 
                                 ha_04_st_1 [ 0 ] , 
                          row_09_st_0 [ 14      ] ,
                          row_08_st_0 [ 13      ] ,
                          row_07_st_0 [ 12      ] ,
                          row_06_st_0 [ 11 :  0 ]   
                        } ;
   assign row_07_st_1 = { row_08_st_0 [ 30 : 19 ] , 
                          row_10_st_0 [ 18      ] ,
                                 ha_03_st_1 [ 1 ] , 
                                 ha_04_st_1 [ 1 ] , 
                          row_11_st_0 [ 15      ] ,
                          row_10_st_0 [ 14      ] ,
                          row_09_st_0 [ 13      ] ,
                          row_08_st_0 [ 12      ] ,
                          row_07_st_0 [ 11 :  0 ]   
                        } ;
   assign row_08_st_1 = { row_07_st_0 [ 30 : 19 ] , 
                          row_12_st_0 [ 18 : 15 ] , 
                          row_11_st_0 [ 14      ] ,
                          row_10_st_0 [ 13      ] ,
                          row_09_st_0 [ 12      ] ,
                          row_08_st_0 [ 11 :  0 ]  
                        } ;
   assign row_09_st_1 = { row_06_st_0 [ 30 : 20 ] , 
                          row_12_st_0 [ 19      ] ,
                          row_13_st_0 [ 18 : 15 ] , 
                          row_12_st_0 [ 14      ] ,
                          row_11_st_0 [ 13      ] ,
                          row_10_st_0 [ 12      ] ,
                          row_09_st_0 [ 11 :  0 ]   
                        } ;
   assign row_10_st_1 = { row_05_st_0 [ 30 : 20 ] , 
                          row_14_st_0 [ 19 : 15 ] , 
                          row_13_st_0 [ 14      ] ,
                          row_12_st_0 [ 13      ] ,
                          row_11_st_0 [ 12      ] ,
                          row_10_st_0 [ 11 :  0 ]   
                        } ;
   assign row_11_st_1 = { row_04_st_0 [ 30 : 21 ] , 
                          row_14_st_0 [ 20      ] ,
                          row_15_st_0 [ 19 : 15 ] , 
                          row_14_st_0 [ 14      ] ,
                          row_13_st_0 [ 13      ] ,
                          row_12_st_0 [ 12      ] ,
                          row_11_st_0 [ 11 :  0 ]   
                        } ;

   //
   // Stage 2
   //
   wire [ 1 : 0 ] fa_00_st_2 = row_00_st_1 [ 22 ] + row_01_st_1 [ 22 ] + row_02_st_1 [ 22 ] ;
   wire [ 1 : 0 ] fa_01_st_2 = row_00_st_1 [ 21 ] + row_01_st_1 [ 21 ] + row_02_st_1 [ 21 ] ;
   wire [ 1 : 0 ] fa_02_st_2 = row_00_st_1 [ 20 ] + row_01_st_1 [ 20 ] + row_02_st_1 [ 20 ] ;
   wire [ 1 : 0 ] fa_03_st_2 = row_00_st_1 [ 19 ] + row_01_st_1 [ 19 ] + row_02_st_1 [ 19 ] ;
   wire [ 1 : 0 ] fa_04_st_2 = row_00_st_1 [ 18 ] + row_01_st_1 [ 18 ] + row_02_st_1 [ 18 ] ;
   wire [ 1 : 0 ] fa_05_st_2 = row_00_st_1 [ 17 ] + row_01_st_1 [ 17 ] + row_02_st_1 [ 17 ] ;
   wire [ 1 : 0 ] fa_06_st_2 = row_00_st_1 [ 16 ] + row_01_st_1 [ 16 ] + row_02_st_1 [ 16 ] ;
   wire [ 1 : 0 ] fa_07_st_2 = row_00_st_1 [ 15 ] + row_01_st_1 [ 15 ] + row_02_st_1 [ 15 ] ;
   wire [ 1 : 0 ] fa_08_st_2 = row_00_st_1 [ 14 ] + row_01_st_1 [ 14 ] + row_02_st_1 [ 14 ] ;
   wire [ 1 : 0 ] fa_09_st_2 = row_00_st_1 [ 13 ] + row_01_st_1 [ 13 ] + row_02_st_1 [ 13 ] ;
   wire [ 1 : 0 ] fa_10_st_2 = row_00_st_1 [ 12 ] + row_01_st_1 [ 12 ] + row_02_st_1 [ 12 ] ;
   wire [ 1 : 0 ] fa_11_st_2 = row_00_st_1 [ 11 ] + row_01_st_1 [ 11 ] + row_02_st_1 [ 11 ] ;
   wire [ 1 : 0 ] fa_12_st_2 = row_00_st_1 [ 10 ] + row_01_st_1 [ 10 ] + row_02_st_1 [ 10 ] ;
   wire [ 1 : 0 ] fa_13_st_2 = row_03_st_1 [ 21 ] + row_04_st_1 [ 21 ] + row_05_st_1 [ 21 ] ;
   wire [ 1 : 0 ] fa_14_st_2 = row_03_st_1 [ 20 ] + row_04_st_1 [ 20 ] + row_05_st_1 [ 20 ] ;
   wire [ 1 : 0 ] fa_15_st_2 = row_03_st_1 [ 19 ] + row_04_st_1 [ 19 ] + row_05_st_1 [ 19 ] ;
   wire [ 1 : 0 ] fa_16_st_2 = row_03_st_1 [ 18 ] + row_04_st_1 [ 18 ] + row_05_st_1 [ 18 ] ;
   wire [ 1 : 0 ] fa_17_st_2 = row_03_st_1 [ 17 ] + row_04_st_1 [ 17 ] + row_05_st_1 [ 17 ] ;
   wire [ 1 : 0 ] fa_18_st_2 = row_03_st_1 [ 16 ] + row_04_st_1 [ 16 ] + row_05_st_1 [ 16 ] ;
   wire [ 1 : 0 ] fa_19_st_2 = row_03_st_1 [ 15 ] + row_04_st_1 [ 15 ] + row_05_st_1 [ 15 ] ;
   wire [ 1 : 0 ] fa_20_st_2 = row_03_st_1 [ 14 ] + row_04_st_1 [ 14 ] + row_05_st_1 [ 14 ] ;
   wire [ 1 : 0 ] fa_21_st_2 = row_03_st_1 [ 13 ] + row_04_st_1 [ 13 ] + row_05_st_1 [ 13 ] ;
   wire [ 1 : 0 ] fa_22_st_2 = row_03_st_1 [ 12 ] + row_04_st_1 [ 12 ] + row_05_st_1 [ 12 ] ;
   wire [ 1 : 0 ] fa_23_st_2 = row_03_st_1 [ 11 ] + row_04_st_1 [ 11 ] + row_05_st_1 [ 11 ] ;
   wire [ 1 : 0 ] fa_24_st_2 = row_06_st_1 [ 20 ] + row_07_st_1 [ 20 ] + row_08_st_1 [ 20 ] ;
   wire [ 1 : 0 ] fa_25_st_2 = row_06_st_1 [ 19 ] + row_07_st_1 [ 19 ] + row_08_st_1 [ 19 ] ;
   wire [ 1 : 0 ] fa_26_st_2 = row_06_st_1 [ 18 ] + row_07_st_1 [ 18 ] + row_08_st_1 [ 18 ] ;
   wire [ 1 : 0 ] fa_27_st_2 = row_06_st_1 [ 17 ] + row_07_st_1 [ 17 ] + row_08_st_1 [ 17 ] ;
   wire [ 1 : 0 ] fa_28_st_2 = row_06_st_1 [ 16 ] + row_07_st_1 [ 16 ] + row_08_st_1 [ 16 ] ;
   wire [ 1 : 0 ] fa_29_st_2 = row_06_st_1 [ 15 ] + row_07_st_1 [ 15 ] + row_08_st_1 [ 15 ] ;
   wire [ 1 : 0 ] fa_30_st_2 = row_06_st_1 [ 14 ] + row_07_st_1 [ 14 ] + row_08_st_1 [ 14 ] ;
   wire [ 1 : 0 ] fa_31_st_2 = row_06_st_1 [ 13 ] + row_07_st_1 [ 13 ] + row_08_st_1 [ 13 ] ;
   wire [ 1 : 0 ] fa_32_st_2 = row_06_st_1 [ 12 ] + row_07_st_1 [ 12 ] + row_08_st_1 [ 12 ] ;
   wire [ 1 : 0 ] ha_00_st_2 = row_00_st_1 [  9 ] + row_01_st_1 [  9 ]                      ;
   wire [ 1 : 0 ] ha_01_st_2 = row_03_st_1 [ 10 ] + row_04_st_1 [ 10 ]                      ;
   wire [ 1 : 0 ] ha_02_st_2 = row_06_st_1 [ 11 ] + row_07_st_1 [ 11 ]                      ;

   assign row_00_st_2 = { row_00_st_1 [ 30 : 23 ] , 
                                 fa_00_st_2 [ 0 ] , 
                                 fa_01_st_2 [ 0 ] , 
                                 fa_02_st_2 [ 0 ] , 
                                 fa_03_st_2 [ 0 ] , 
                                 fa_04_st_2 [ 0 ] , 
                                 fa_05_st_2 [ 0 ] , 
                                 fa_06_st_2 [ 0 ] , 
                                 fa_07_st_2 [ 0 ] , 
                                 fa_08_st_2 [ 0 ] , 
                                 fa_09_st_2 [ 0 ] , 
                                 fa_10_st_2 [ 0 ] , 
                                 fa_11_st_2 [ 0 ] , 
                                 fa_12_st_2 [ 0 ] , 
                                 ha_00_st_2 [ 0 ] , 
                          row_00_st_1 [  8 :  0 ]   
                        } ;
   assign row_01_st_2 = { row_01_st_1 [ 30 : 24 ] , 
                                 fa_00_st_2 [ 1 ] , 
                                 fa_01_st_2 [ 1 ] , 
                                 fa_02_st_2 [ 1 ] , 
                                 fa_03_st_2 [ 1 ] , 
                                 fa_04_st_2 [ 1 ] , 
                                 fa_05_st_2 [ 1 ] , 
                                 fa_06_st_2 [ 1 ] , 
                                 fa_07_st_2 [ 1 ] , 
                                 fa_08_st_2 [ 1 ] , 
                                 fa_09_st_2 [ 1 ] , 
                                 fa_10_st_2 [ 1 ] , 
                                 fa_11_st_2 [ 1 ] , 
                                 fa_12_st_2 [ 1 ] , 
                                 ha_00_st_2 [ 1 ] , 
                          row_02_st_1 [  9      ] , 
                          row_01_st_1 [  8 :  0 ]   
                        } ;
   assign row_02_st_2 = { row_02_st_1 [ 30 : 23 ] , 
                          row_03_st_1 [ 22      ] , 
                                 fa_13_st_2 [ 0 ] , 
                                 fa_14_st_2 [ 0 ] , 
                                 fa_15_st_2 [ 0 ] , 
                                 fa_16_st_2 [ 0 ] , 
                                 fa_17_st_2 [ 0 ] , 
                                 fa_18_st_2 [ 0 ] , 
                                 fa_19_st_2 [ 0 ] , 
                                 fa_20_st_2 [ 0 ] , 
                                 fa_21_st_2 [ 0 ] , 
                                 fa_22_st_2 [ 0 ] , 
                                 fa_23_st_2 [ 0 ] , 
                                 ha_01_st_2 [ 0 ] , 
                          row_03_st_1 [  9      ] , 
                          row_02_st_1 [  8 :  0 ]   
                        } ;
   assign row_03_st_2 = { row_03_st_1 [ 30 : 23 ] , 
                                 fa_13_st_2 [ 1 ] , 
                                 fa_14_st_2 [ 1 ] , 
                                 fa_15_st_2 [ 1 ] , 
                                 fa_16_st_2 [ 1 ] , 
                                 fa_17_st_2 [ 1 ] , 
                                 fa_18_st_2 [ 1 ] , 
                                 fa_19_st_2 [ 1 ] , 
                                 fa_20_st_2 [ 1 ] , 
                                 fa_21_st_2 [ 1 ] , 
                                 fa_22_st_2 [ 1 ] , 
                                 fa_23_st_2 [ 1 ] , 
                                 ha_01_st_2 [ 1 ] , 
                          row_05_st_1 [ 10      ] , 
                          row_04_st_1 [  9      ] , 
                          row_03_st_1 [  8 :  0 ]   
                        } ;
   assign row_04_st_2 = { row_04_st_1 [ 30 : 22 ] , 
                          row_06_st_1 [ 21      ] , 
                                 fa_24_st_2 [ 0 ] , 
                                 fa_25_st_2 [ 0 ] , 
                                 fa_26_st_2 [ 0 ] , 
                                 fa_27_st_2 [ 0 ] , 
                                 fa_28_st_2 [ 0 ] , 
                                 fa_29_st_2 [ 0 ] , 
                                 fa_30_st_2 [ 0 ] , 
                                 fa_31_st_2 [ 0 ] , 
                                 fa_32_st_2 [ 0 ] , 
                                 ha_02_st_2 [ 0 ] , 
                          row_06_st_1 [ 10      ] , 
                          row_05_st_1 [  9      ] , 
                          row_04_st_1 [  8 :  0 ]   
                        } ;
   assign row_05_st_2 = { row_05_st_1 [ 30 : 22 ] , 
                                 fa_24_st_2 [ 1 ] , 
                                 fa_25_st_2 [ 1 ] , 
                                 fa_26_st_2 [ 1 ] , 
                                 fa_27_st_2 [ 1 ] , 
                                 fa_28_st_2 [ 1 ] , 
                                 fa_29_st_2 [ 1 ] , 
                                 fa_30_st_2 [ 1 ] , 
                                 fa_31_st_2 [ 1 ] , 
                                 fa_32_st_2 [ 1 ] , 
                                 ha_02_st_2 [ 1 ] , 
                          row_08_st_1 [ 11      ] , 
                          row_07_st_1 [ 10      ] , 
                          row_06_st_1 [  9      ] , 
                          row_05_st_1 [  8 :  0 ]   
                        } ;
   assign row_06_st_2 = { row_06_st_1 [ 30 : 22 ] , 
                          row_07_st_1 [ 21      ] , 
                          row_09_st_1 [ 20 : 11 ] , 
                          row_08_st_1 [ 10      ] , 
                          row_07_st_1 [  9      ] , 
                          row_06_st_1 [  8 :  0 ]   
                        } ;
   assign row_07_st_2 = { row_07_st_1 [ 30 : 22 ] , 
                          row_08_st_1 [ 21      ] , 
                          row_10_st_1 [ 20 : 11 ] , 
                          row_09_st_1 [ 10      ] , 
                          row_08_st_1 [  9      ] , 
                          row_07_st_1 [  8 :  0 ]   
                        } ;
   assign row_08_st_2 = { row_08_st_1 [ 30 : 24 ] , 
                          row_01_st_1 [ 23      ] , 
                          row_08_st_1 [ 22      ] , 
                          row_09_st_1 [ 21      ] , 
                          row_11_st_1 [ 20 : 11 ] , 
                          row_10_st_1 [ 10      ] , 
                          row_09_st_1 [  9      ] , 
                          row_08_st_1 [  8 :  0 ]   
                        } ;

   //
   // Stage 3
   //
   wire [ 1 : 0 ] fa_00_st_3 = row_00_st_2 [ 25 ] + row_01_st_2 [ 25 ] + row_02_st_2 [ 25 ] ;
   wire [ 1 : 0 ] fa_01_st_3 = row_00_st_2 [ 24 ] + row_01_st_2 [ 24 ] + row_02_st_2 [ 24 ] ;
   wire [ 1 : 0 ] fa_02_st_3 = row_00_st_2 [ 23 ] + row_01_st_2 [ 23 ] + row_02_st_2 [ 23 ] ;
   wire [ 1 : 0 ] fa_03_st_3 = row_00_st_2 [ 22 ] + row_01_st_2 [ 22 ] + row_02_st_2 [ 22 ] ;
   wire [ 1 : 0 ] fa_04_st_3 = row_00_st_2 [ 21 ] + row_01_st_2 [ 21 ] + row_02_st_2 [ 21 ] ;
   wire [ 1 : 0 ] fa_05_st_3 = row_00_st_2 [ 20 ] + row_01_st_2 [ 20 ] + row_02_st_2 [ 20 ] ;
   wire [ 1 : 0 ] fa_06_st_3 = row_00_st_2 [ 19 ] + row_01_st_2 [ 19 ] + row_02_st_2 [ 19 ] ;
   wire [ 1 : 0 ] fa_07_st_3 = row_00_st_2 [ 18 ] + row_01_st_2 [ 18 ] + row_02_st_2 [ 18 ] ;
   wire [ 1 : 0 ] fa_08_st_3 = row_00_st_2 [ 17 ] + row_01_st_2 [ 17 ] + row_02_st_2 [ 17 ] ;
   wire [ 1 : 0 ] fa_09_st_3 = row_00_st_2 [ 16 ] + row_01_st_2 [ 16 ] + row_02_st_2 [ 16 ] ;
   wire [ 1 : 0 ] fa_10_st_3 = row_00_st_2 [ 15 ] + row_01_st_2 [ 15 ] + row_02_st_2 [ 15 ] ;
   wire [ 1 : 0 ] fa_11_st_3 = row_00_st_2 [ 14 ] + row_01_st_2 [ 14 ] + row_02_st_2 [ 14 ] ;
   wire [ 1 : 0 ] fa_12_st_3 = row_00_st_2 [ 13 ] + row_01_st_2 [ 13 ] + row_02_st_2 [ 13 ] ;
   wire [ 1 : 0 ] fa_13_st_3 = row_00_st_2 [ 12 ] + row_01_st_2 [ 12 ] + row_02_st_2 [ 12 ] ;
   wire [ 1 : 0 ] fa_14_st_3 = row_00_st_2 [ 11 ] + row_01_st_2 [ 11 ] + row_02_st_2 [ 11 ] ;
   wire [ 1 : 0 ] fa_15_st_3 = row_00_st_2 [ 10 ] + row_01_st_2 [ 10 ] + row_02_st_2 [ 10 ] ;
   wire [ 1 : 0 ] fa_16_st_3 = row_00_st_2 [ 09 ] + row_01_st_2 [ 09 ] + row_02_st_2 [ 09 ] ;
   wire [ 1 : 0 ] fa_17_st_3 = row_00_st_2 [ 08 ] + row_01_st_2 [ 08 ] + row_02_st_2 [ 08 ] ;
   wire [ 1 : 0 ] fa_18_st_3 = row_00_st_2 [ 07 ] + row_01_st_2 [ 07 ] + row_02_st_2 [ 07 ] ;
   wire [ 1 : 0 ] fa_19_st_3 = row_03_st_2 [ 24 ] + row_04_st_2 [ 24 ] + row_05_st_2 [ 24 ] ;
   wire [ 1 : 0 ] fa_20_st_3 = row_03_st_2 [ 23 ] + row_04_st_2 [ 23 ] + row_05_st_2 [ 23 ] ;
   wire [ 1 : 0 ] fa_21_st_3 = row_03_st_2 [ 22 ] + row_04_st_2 [ 22 ] + row_05_st_2 [ 22 ] ;
   wire [ 1 : 0 ] fa_22_st_3 = row_03_st_2 [ 21 ] + row_04_st_2 [ 21 ] + row_05_st_2 [ 21 ] ;
   wire [ 1 : 0 ] fa_23_st_3 = row_03_st_2 [ 20 ] + row_04_st_2 [ 20 ] + row_05_st_2 [ 20 ] ;
   wire [ 1 : 0 ] fa_24_st_3 = row_03_st_2 [ 19 ] + row_04_st_2 [ 19 ] + row_05_st_2 [ 19 ] ;
   wire [ 1 : 0 ] fa_25_st_3 = row_03_st_2 [ 18 ] + row_04_st_2 [ 18 ] + row_05_st_2 [ 18 ] ;
   wire [ 1 : 0 ] fa_26_st_3 = row_03_st_2 [ 17 ] + row_04_st_2 [ 17 ] + row_05_st_2 [ 17 ] ;
   wire [ 1 : 0 ] fa_27_st_3 = row_03_st_2 [ 16 ] + row_04_st_2 [ 16 ] + row_05_st_2 [ 16 ] ;
   wire [ 1 : 0 ] fa_28_st_3 = row_03_st_2 [ 15 ] + row_04_st_2 [ 15 ] + row_05_st_2 [ 15 ] ;
   wire [ 1 : 0 ] fa_29_st_3 = row_03_st_2 [ 14 ] + row_04_st_2 [ 14 ] + row_05_st_2 [ 14 ] ;
   wire [ 1 : 0 ] fa_30_st_3 = row_03_st_2 [ 13 ] + row_04_st_2 [ 13 ] + row_05_st_2 [ 13 ] ;
   wire [ 1 : 0 ] fa_31_st_3 = row_03_st_2 [ 12 ] + row_04_st_2 [ 12 ] + row_05_st_2 [ 12 ] ;
   wire [ 1 : 0 ] fa_32_st_3 = row_03_st_2 [ 11 ] + row_04_st_2 [ 11 ] + row_05_st_2 [ 11 ] ;
   wire [ 1 : 0 ] fa_33_st_3 = row_03_st_2 [ 10 ] + row_04_st_2 [ 10 ] + row_05_st_2 [ 10 ] ;
   wire [ 1 : 0 ] fa_34_st_3 = row_03_st_2 [ 09 ] + row_04_st_2 [ 09 ] + row_05_st_2 [ 09 ] ;
   wire [ 1 : 0 ] fa_35_st_3 = row_03_st_2 [ 08 ] + row_04_st_2 [ 08 ] + row_05_st_2 [ 08 ] ;
   wire [ 1 : 0 ] fa_36_st_3 = row_06_st_2 [ 23 ] + row_07_st_2 [ 23 ] + row_08_st_2 [ 23 ] ;
   wire [ 1 : 0 ] fa_37_st_3 = row_06_st_2 [ 22 ] + row_07_st_2 [ 22 ] + row_08_st_2 [ 22 ] ;
   wire [ 1 : 0 ] fa_38_st_3 = row_06_st_2 [ 21 ] + row_07_st_2 [ 21 ] + row_08_st_2 [ 21 ] ;
   wire [ 1 : 0 ] fa_39_st_3 = row_06_st_2 [ 20 ] + row_07_st_2 [ 20 ] + row_08_st_2 [ 20 ] ;
   wire [ 1 : 0 ] fa_40_st_3 = row_06_st_2 [ 19 ] + row_07_st_2 [ 19 ] + row_08_st_2 [ 19 ] ;
   wire [ 1 : 0 ] fa_41_st_3 = row_06_st_2 [ 18 ] + row_07_st_2 [ 18 ] + row_08_st_2 [ 18 ] ;
   wire [ 1 : 0 ] fa_42_st_3 = row_06_st_2 [ 17 ] + row_07_st_2 [ 17 ] + row_08_st_2 [ 17 ] ;
   wire [ 1 : 0 ] fa_43_st_3 = row_06_st_2 [ 16 ] + row_07_st_2 [ 16 ] + row_08_st_2 [ 16 ] ;
   wire [ 1 : 0 ] fa_44_st_3 = row_06_st_2 [ 15 ] + row_07_st_2 [ 15 ] + row_08_st_2 [ 15 ] ;
   wire [ 1 : 0 ] fa_45_st_3 = row_06_st_2 [ 14 ] + row_07_st_2 [ 14 ] + row_08_st_2 [ 14 ] ;
   wire [ 1 : 0 ] fa_46_st_3 = row_06_st_2 [ 13 ] + row_07_st_2 [ 13 ] + row_08_st_2 [ 13 ] ;
   wire [ 1 : 0 ] fa_47_st_3 = row_06_st_2 [ 12 ] + row_07_st_2 [ 12 ] + row_08_st_2 [ 12 ] ;
   wire [ 1 : 0 ] fa_48_st_3 = row_06_st_2 [ 11 ] + row_07_st_2 [ 11 ] + row_08_st_2 [ 11 ] ;
   wire [ 1 : 0 ] fa_49_st_3 = row_06_st_2 [ 10 ] + row_07_st_2 [ 10 ] + row_08_st_2 [ 10 ] ;
   wire [ 1 : 0 ] fa_50_st_3 = row_06_st_2 [ 09 ] + row_07_st_2 [ 09 ] + row_08_st_2 [ 09 ] ;

   wire [ 1 : 0 ] ha_00_st_3 = row_00_st_2 [ 06 ] + row_01_st_2 [ 06 ]                      ;
   wire [ 1 : 0 ] ha_01_st_3 = row_03_st_2 [ 07 ] + row_04_st_2 [ 07 ]                      ;
   wire [ 1 : 0 ] ha_02_st_3 = row_06_st_2 [ 08 ] + row_07_st_2 [ 08 ]                      ;

   assign row_00_st_3 = { row_00_st_2 [ 30 : 26 ] , 
                                 fa_00_st_3 [ 0 ] , 
                                 fa_01_st_3 [ 0 ] , 
                                 fa_02_st_3 [ 0 ] , 
                                 fa_03_st_3 [ 0 ] , 
                                 fa_04_st_3 [ 0 ] , 
                                 fa_05_st_3 [ 0 ] , 
                                 fa_06_st_3 [ 0 ] , 
                                 fa_07_st_3 [ 0 ] , 
                                 fa_08_st_3 [ 0 ] , 
                                 fa_09_st_3 [ 0 ] , 
                                 fa_10_st_3 [ 0 ] , 
                                 fa_11_st_3 [ 0 ] , 
                                 fa_12_st_3 [ 0 ] , 
                                 fa_13_st_3 [ 0 ] , 
                                 fa_14_st_3 [ 0 ] , 
                                 fa_15_st_3 [ 0 ] , 
                                 fa_16_st_3 [ 0 ] , 
                                 fa_17_st_3 [ 0 ] , 
                                 fa_18_st_3 [ 0 ] , 
                                 ha_00_st_3 [ 0 ] , 
                          row_00_st_2 [  5 :  0 ]   
                        } ;
   assign row_01_st_3 = { row_01_st_2 [ 30 : 27 ] , 
                                 fa_00_st_3 [ 1 ] , 
                                 fa_01_st_3 [ 1 ] , 
                                 fa_02_st_3 [ 1 ] , 
                                 fa_03_st_3 [ 1 ] , 
                                 fa_04_st_3 [ 1 ] , 
                                 fa_05_st_3 [ 1 ] , 
                                 fa_06_st_3 [ 1 ] , 
                                 fa_07_st_3 [ 1 ] , 
                                 fa_08_st_3 [ 1 ] , 
                                 fa_09_st_3 [ 1 ] , 
                                 fa_10_st_3 [ 1 ] , 
                                 fa_11_st_3 [ 1 ] , 
                                 fa_12_st_3 [ 1 ] , 
                                 fa_13_st_3 [ 1 ] , 
                                 fa_14_st_3 [ 1 ] , 
                                 fa_15_st_3 [ 1 ] , 
                                 fa_16_st_3 [ 1 ] , 
                                 fa_17_st_3 [ 1 ] , 
                                 fa_18_st_3 [ 1 ] , 
                                 ha_00_st_3 [ 1 ] , 
                          row_02_st_2 [  6      ] , 
                          row_01_st_2 [  5 :  0 ]   
                        } ;
   assign row_02_st_3 = { row_02_st_2 [ 30 : 26 ] , 
                          row_03_st_2 [ 25      ] , 
                                 fa_19_st_3 [ 0 ] , 
                                 fa_20_st_3 [ 0 ] , 
                                 fa_21_st_3 [ 0 ] , 
                                 fa_22_st_3 [ 0 ] , 
                                 fa_23_st_3 [ 0 ] , 
                                 fa_24_st_3 [ 0 ] , 
                                 fa_25_st_3 [ 0 ] , 
                                 fa_26_st_3 [ 0 ] , 
                                 fa_27_st_3 [ 0 ] , 
                                 fa_28_st_3 [ 0 ] , 
                                 fa_29_st_3 [ 0 ] , 
                                 fa_30_st_3 [ 0 ] , 
                                 fa_31_st_3 [ 0 ] , 
                                 fa_32_st_3 [ 0 ] , 
                                 fa_33_st_3 [ 0 ] , 
                                 fa_34_st_3 [ 0 ] , 
                                 fa_35_st_3 [ 0 ] , 
                                 ha_01_st_3 [ 0 ] , 
                          row_03_st_2 [  6      ] , 
                          row_02_st_2 [  5 :  0 ]   
                        } ;
   assign row_03_st_3 = { row_03_st_2 [ 30 : 26 ] , 
                                 fa_19_st_3 [ 1 ] , 
                                 fa_20_st_3 [ 1 ] , 
                                 fa_21_st_3 [ 1 ] , 
                                 fa_22_st_3 [ 1 ] , 
                                 fa_23_st_3 [ 1 ] , 
                                 fa_24_st_3 [ 1 ] , 
                                 fa_25_st_3 [ 1 ] , 
                                 fa_26_st_3 [ 1 ] , 
                                 fa_27_st_3 [ 1 ] , 
                                 fa_28_st_3 [ 1 ] , 
                                 fa_29_st_3 [ 1 ] , 
                                 fa_30_st_3 [ 1 ] , 
                                 fa_31_st_3 [ 1 ] , 
                                 fa_32_st_3 [ 1 ] , 
                                 fa_33_st_3 [ 1 ] , 
                                 fa_34_st_3 [ 1 ] , 
                                 fa_35_st_3 [ 1 ] , 
                                 ha_01_st_3 [ 1 ] , 
                          row_05_st_2 [  7      ] , 
                          row_04_st_2 [  6      ] , 
                          row_03_st_2 [  5 :  0 ]   
                        } ;
   assign row_04_st_3 = { row_04_st_2 [ 30 : 25 ] , 
                          row_06_st_2 [ 24      ] , 
                                 fa_36_st_3 [ 0 ] , 
                                 fa_37_st_3 [ 0 ] , 
                                 fa_38_st_3 [ 0 ] , 
                                 fa_39_st_3 [ 0 ] , 
                                 fa_40_st_3 [ 0 ] , 
                                 fa_41_st_3 [ 0 ] , 
                                 fa_42_st_3 [ 0 ] , 
                                 fa_43_st_3 [ 0 ] , 
                                 fa_44_st_3 [ 0 ] , 
                                 fa_45_st_3 [ 0 ] , 
                                 fa_46_st_3 [ 0 ] , 
                                 fa_47_st_3 [ 0 ] , 
                                 fa_48_st_3 [ 0 ] , 
                                 fa_49_st_3 [ 0 ] , 
                                 fa_50_st_3 [ 0 ] , 
                                 ha_02_st_3 [ 0 ] , 
                          row_06_st_2 [  7      ] , 
                          row_05_st_2 [  6      ] , 
                          row_04_st_2 [  5 :  0 ]   
                        } ;
   assign row_05_st_3 = { row_05_st_2 [ 30 : 27 ] , 
                          row_01_st_2 [ 26      ] , 
                          row_05_st_2 [ 25      ] , 
                                 fa_36_st_3 [ 1 ] , 
                                 fa_37_st_3 [ 1 ] , 
                                 fa_38_st_3 [ 1 ] , 
                                 fa_39_st_3 [ 1 ] , 
                                 fa_40_st_3 [ 1 ] , 
                                 fa_41_st_3 [ 1 ] , 
                                 fa_42_st_3 [ 1 ] , 
                                 fa_43_st_3 [ 1 ] , 
                                 fa_44_st_3 [ 1 ] , 
                                 fa_45_st_3 [ 1 ] , 
                                 fa_46_st_3 [ 1 ] , 
                                 fa_47_st_3 [ 1 ] , 
                                 fa_48_st_3 [ 1 ] , 
                                 fa_49_st_3 [ 1 ] , 
                                 fa_50_st_3 [ 1 ] , 
                                 ha_02_st_3 [ 1 ] , 
                          row_08_st_2 [  8      ] , 
                          row_07_st_2 [  7      ] , 
                          row_06_st_2 [  6      ] , 
                          row_05_st_2 [  5 :  0 ]   
                        } ;

   //
   // Stage 4
   //
   wire [ 1 : 0 ] fa_00_st_4 = row_00_st_3 [ 27 ] + row_01_st_3 [ 27 ] + row_02_st_3 [ 27 ] ;
   wire [ 1 : 0 ] fa_01_st_4 = row_00_st_3 [ 26 ] + row_01_st_3 [ 26 ] + row_02_st_3 [ 26 ] ;
   wire [ 1 : 0 ] fa_02_st_4 = row_00_st_3 [ 25 ] + row_01_st_3 [ 25 ] + row_02_st_3 [ 25 ] ;
   wire [ 1 : 0 ] fa_03_st_4 = row_00_st_3 [ 24 ] + row_01_st_3 [ 24 ] + row_02_st_3 [ 24 ] ;
   wire [ 1 : 0 ] fa_04_st_4 = row_00_st_3 [ 23 ] + row_01_st_3 [ 23 ] + row_02_st_3 [ 23 ] ;
   wire [ 1 : 0 ] fa_05_st_4 = row_00_st_3 [ 22 ] + row_01_st_3 [ 22 ] + row_02_st_3 [ 22 ] ;
   wire [ 1 : 0 ] fa_06_st_4 = row_00_st_3 [ 21 ] + row_01_st_3 [ 21 ] + row_02_st_3 [ 21 ] ;
   wire [ 1 : 0 ] fa_07_st_4 = row_00_st_3 [ 20 ] + row_01_st_3 [ 20 ] + row_02_st_3 [ 20 ] ;
   wire [ 1 : 0 ] fa_08_st_4 = row_00_st_3 [ 19 ] + row_01_st_3 [ 19 ] + row_02_st_3 [ 19 ] ;
   wire [ 1 : 0 ] fa_09_st_4 = row_00_st_3 [ 18 ] + row_01_st_3 [ 18 ] + row_02_st_3 [ 18 ] ;
   wire [ 1 : 0 ] fa_10_st_4 = row_00_st_3 [ 17 ] + row_01_st_3 [ 17 ] + row_02_st_3 [ 17 ] ;
   wire [ 1 : 0 ] fa_11_st_4 = row_00_st_3 [ 16 ] + row_01_st_3 [ 16 ] + row_02_st_3 [ 16 ] ;
   wire [ 1 : 0 ] fa_12_st_4 = row_00_st_3 [ 15 ] + row_01_st_3 [ 15 ] + row_02_st_3 [ 15 ] ;
   wire [ 1 : 0 ] fa_13_st_4 = row_00_st_3 [ 14 ] + row_01_st_3 [ 14 ] + row_02_st_3 [ 14 ] ;
   wire [ 1 : 0 ] fa_14_st_4 = row_00_st_3 [ 13 ] + row_01_st_3 [ 13 ] + row_02_st_3 [ 13 ] ;
   wire [ 1 : 0 ] fa_15_st_4 = row_00_st_3 [ 12 ] + row_01_st_3 [ 12 ] + row_02_st_3 [ 12 ] ;
   wire [ 1 : 0 ] fa_16_st_4 = row_00_st_3 [ 11 ] + row_01_st_3 [ 11 ] + row_02_st_3 [ 11 ] ;
   wire [ 1 : 0 ] fa_17_st_4 = row_00_st_3 [ 10 ] + row_01_st_3 [ 10 ] + row_02_st_3 [ 10 ] ;
   wire [ 1 : 0 ] fa_18_st_4 = row_00_st_3 [ 09 ] + row_01_st_3 [ 09 ] + row_02_st_3 [ 09 ] ;
   wire [ 1 : 0 ] fa_19_st_4 = row_00_st_3 [ 08 ] + row_01_st_3 [ 08 ] + row_02_st_3 [ 08 ] ;
   wire [ 1 : 0 ] fa_20_st_4 = row_00_st_3 [ 07 ] + row_01_st_3 [ 07 ] + row_02_st_3 [ 07 ] ;
   wire [ 1 : 0 ] fa_21_st_4 = row_00_st_3 [ 06 ] + row_01_st_3 [ 06 ] + row_02_st_3 [ 06 ] ;
   wire [ 1 : 0 ] fa_22_st_4 = row_00_st_3 [ 05 ] + row_01_st_3 [ 05 ] + row_02_st_3 [ 05 ] ;
   wire [ 1 : 0 ] fa_23_st_4 = row_03_st_3 [ 26 ] + row_04_st_3 [ 26 ] + row_05_st_3 [ 26 ] ;
   wire [ 1 : 0 ] fa_24_st_4 = row_03_st_3 [ 25 ] + row_04_st_3 [ 25 ] + row_05_st_3 [ 25 ] ;
   wire [ 1 : 0 ] fa_25_st_4 = row_03_st_3 [ 24 ] + row_04_st_3 [ 24 ] + row_05_st_3 [ 24 ] ;
   wire [ 1 : 0 ] fa_26_st_4 = row_03_st_3 [ 23 ] + row_04_st_3 [ 23 ] + row_05_st_3 [ 23 ] ;
   wire [ 1 : 0 ] fa_27_st_4 = row_03_st_3 [ 22 ] + row_04_st_3 [ 22 ] + row_05_st_3 [ 22 ] ;
   wire [ 1 : 0 ] fa_28_st_4 = row_03_st_3 [ 21 ] + row_04_st_3 [ 21 ] + row_05_st_3 [ 21 ] ;
   wire [ 1 : 0 ] fa_29_st_4 = row_03_st_3 [ 20 ] + row_04_st_3 [ 20 ] + row_05_st_3 [ 20 ] ;
   wire [ 1 : 0 ] fa_30_st_4 = row_03_st_3 [ 19 ] + row_04_st_3 [ 19 ] + row_05_st_3 [ 19 ] ;
   wire [ 1 : 0 ] fa_31_st_4 = row_03_st_3 [ 18 ] + row_04_st_3 [ 18 ] + row_05_st_3 [ 18 ] ;
   wire [ 1 : 0 ] fa_32_st_4 = row_03_st_3 [ 17 ] + row_04_st_3 [ 17 ] + row_05_st_3 [ 17 ] ;
   wire [ 1 : 0 ] fa_33_st_4 = row_03_st_3 [ 16 ] + row_04_st_3 [ 16 ] + row_05_st_3 [ 16 ] ;
   wire [ 1 : 0 ] fa_34_st_4 = row_03_st_3 [ 15 ] + row_04_st_3 [ 15 ] + row_05_st_3 [ 15 ] ;
   wire [ 1 : 0 ] fa_35_st_4 = row_03_st_3 [ 14 ] + row_04_st_3 [ 14 ] + row_05_st_3 [ 14 ] ;
   wire [ 1 : 0 ] fa_36_st_4 = row_03_st_3 [ 13 ] + row_04_st_3 [ 13 ] + row_05_st_3 [ 13 ] ;
   wire [ 1 : 0 ] fa_37_st_4 = row_03_st_3 [ 12 ] + row_04_st_3 [ 12 ] + row_05_st_3 [ 12 ] ;
   wire [ 1 : 0 ] fa_38_st_4 = row_03_st_3 [ 11 ] + row_04_st_3 [ 11 ] + row_05_st_3 [ 11 ] ;
   wire [ 1 : 0 ] fa_39_st_4 = row_03_st_3 [ 10 ] + row_04_st_3 [ 10 ] + row_05_st_3 [ 10 ] ;
   wire [ 1 : 0 ] fa_40_st_4 = row_03_st_3 [ 09 ] + row_04_st_3 [ 09 ] + row_05_st_3 [ 09 ] ;
   wire [ 1 : 0 ] fa_41_st_4 = row_03_st_3 [ 08 ] + row_04_st_3 [ 08 ] + row_05_st_3 [ 08 ] ;
   wire [ 1 : 0 ] fa_42_st_4 = row_03_st_3 [ 07 ] + row_04_st_3 [ 07 ] + row_05_st_3 [ 07 ] ;
   wire [ 1 : 0 ] fa_43_st_4 = row_03_st_3 [ 06 ] + row_04_st_3 [ 06 ] + row_05_st_3 [ 06 ] ;

   wire [ 1 : 0 ] ha_00_st_4 = row_00_st_3 [ 04 ] + row_01_st_3 [ 04 ]                      ;
   wire [ 1 : 0 ] ha_01_st_4 = row_03_st_3 [ 05 ] + row_04_st_3 [ 05 ]                      ;

   assign row_00_st_4 = { row_00_st_3 [ 30 : 28 ] , 
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
                                 fa_11_st_4 [ 0 ] , 
                                 fa_12_st_4 [ 0 ] , 
                                 fa_13_st_4 [ 0 ] , 
                                 fa_14_st_4 [ 0 ] , 
                                 fa_15_st_4 [ 0 ] , 
                                 fa_16_st_4 [ 0 ] , 
                                 fa_17_st_4 [ 0 ] , 
                                 fa_18_st_4 [ 0 ] , 
                                 fa_19_st_4 [ 0 ] , 
                                 fa_20_st_4 [ 0 ] , 
                                 fa_21_st_4 [ 0 ] , 
                                 fa_22_st_4 [ 0 ] , 
                                 ha_00_st_4 [ 0 ] , 
                          row_00_st_3 [  3 :  0 ]   
                        } ;
   assign row_01_st_4 = { row_01_st_3 [ 30 : 29 ] , 
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
                                 fa_11_st_4 [ 1 ] , 
                                 fa_12_st_4 [ 1 ] , 
                                 fa_13_st_4 [ 1 ] , 
                                 fa_14_st_4 [ 1 ] , 
                                 fa_15_st_4 [ 1 ] , 
                                 fa_16_st_4 [ 1 ] , 
                                 fa_17_st_4 [ 1 ] , 
                                 fa_18_st_4 [ 1 ] , 
                                 fa_19_st_4 [ 1 ] , 
                                 fa_20_st_4 [ 1 ] , 
                                 fa_21_st_4 [ 1 ] , 
                                 fa_22_st_4 [ 1 ] , 
                                 ha_00_st_4 [ 1 ] , 
                          row_02_st_3 [  4      ] , 
                          row_01_st_3 [  3 :  0 ]   
                        } ;
   assign row_02_st_4 = { row_02_st_3 [ 30 : 28 ] , 
                          row_03_st_3 [ 27      ] , 
                                 fa_23_st_4 [ 0 ] , 
                                 fa_24_st_4 [ 0 ] , 
                                 fa_25_st_4 [ 0 ] , 
                                 fa_26_st_4 [ 0 ] , 
                                 fa_27_st_4 [ 0 ] , 
                                 fa_28_st_4 [ 0 ] , 
                                 fa_29_st_4 [ 0 ] , 
                                 fa_30_st_4 [ 0 ] , 
                                 fa_31_st_4 [ 0 ] , 
                                 fa_32_st_4 [ 0 ] , 
                                 fa_33_st_4 [ 0 ] , 
                                 fa_34_st_4 [ 0 ] , 
                                 fa_35_st_4 [ 0 ] , 
                                 fa_36_st_4 [ 0 ] , 
                                 fa_37_st_4 [ 0 ] , 
                                 fa_38_st_4 [ 0 ] , 
                                 fa_39_st_4 [ 0 ] , 
                                 fa_40_st_4 [ 0 ] , 
                                 fa_41_st_4 [ 0 ] , 
                                 fa_42_st_4 [ 0 ] , 
                                 fa_43_st_4 [ 0 ] , 
                                 ha_01_st_4 [ 0 ] , 
                          row_03_st_3 [  4      ] , 
                          row_02_st_3 [  3 :  0 ]   
                        } ;
   assign row_03_st_4 = { row_03_st_3 [ 30 : 29 ] , 
                          row_01_st_3 [ 28      ] , 
                                 fa_23_st_4 [ 1 ] , 
                                 fa_24_st_4 [ 1 ] , 
                                 fa_25_st_4 [ 1 ] , 
                                 fa_26_st_4 [ 1 ] , 
                                 fa_27_st_4 [ 1 ] , 
                                 fa_28_st_4 [ 1 ] , 
                                 fa_29_st_4 [ 1 ] , 
                                 fa_30_st_4 [ 1 ] , 
                                 fa_31_st_4 [ 1 ] , 
                                 fa_32_st_4 [ 1 ] , 
                                 fa_33_st_4 [ 1 ] , 
                                 fa_34_st_4 [ 1 ] , 
                                 fa_35_st_4 [ 1 ] , 
                                 fa_36_st_4 [ 1 ] , 
                                 fa_37_st_4 [ 1 ] , 
                                 fa_38_st_4 [ 1 ] , 
                                 fa_39_st_4 [ 1 ] , 
                                 fa_40_st_4 [ 1 ] , 
                                 fa_41_st_4 [ 1 ] , 
                                 fa_42_st_4 [ 1 ] , 
                                 fa_43_st_4 [ 1 ] , 
                                 ha_01_st_4 [ 1 ] , 
                          row_05_st_3 [  5      ] , 
                          row_04_st_3 [  4      ] , 
                          row_03_st_3 [  3 :  0 ]   
                        } ;

   //
   // Stage 5
   //
   wire [ 1 : 0 ] fa_00_st_5 = row_00_st_4 [ 28 ] + row_01_st_4 [ 28 ] + row_02_st_4 [ 28 ] ;
   wire [ 1 : 0 ] fa_01_st_5 = row_00_st_4 [ 27 ] + row_01_st_4 [ 27 ] + row_02_st_4 [ 27 ] ;
   wire [ 1 : 0 ] fa_02_st_5 = row_00_st_4 [ 26 ] + row_01_st_4 [ 26 ] + row_02_st_4 [ 26 ] ;
   wire [ 1 : 0 ] fa_03_st_5 = row_00_st_4 [ 25 ] + row_01_st_4 [ 25 ] + row_02_st_4 [ 25 ] ;
   wire [ 1 : 0 ] fa_04_st_5 = row_00_st_4 [ 24 ] + row_01_st_4 [ 24 ] + row_02_st_4 [ 24 ] ;
   wire [ 1 : 0 ] fa_05_st_5 = row_00_st_4 [ 23 ] + row_01_st_4 [ 23 ] + row_02_st_4 [ 23 ] ;
   wire [ 1 : 0 ] fa_06_st_5 = row_00_st_4 [ 22 ] + row_01_st_4 [ 22 ] + row_02_st_4 [ 22 ] ;
   wire [ 1 : 0 ] fa_07_st_5 = row_00_st_4 [ 21 ] + row_01_st_4 [ 21 ] + row_02_st_4 [ 21 ] ;
   wire [ 1 : 0 ] fa_08_st_5 = row_00_st_4 [ 20 ] + row_01_st_4 [ 20 ] + row_02_st_4 [ 20 ] ;
   wire [ 1 : 0 ] fa_09_st_5 = row_00_st_4 [ 19 ] + row_01_st_4 [ 19 ] + row_02_st_4 [ 19 ] ;
   wire [ 1 : 0 ] fa_10_st_5 = row_00_st_4 [ 18 ] + row_01_st_4 [ 18 ] + row_02_st_4 [ 18 ] ;
   wire [ 1 : 0 ] fa_11_st_5 = row_00_st_4 [ 17 ] + row_01_st_4 [ 17 ] + row_02_st_4 [ 17 ] ;
   wire [ 1 : 0 ] fa_12_st_5 = row_00_st_4 [ 16 ] + row_01_st_4 [ 16 ] + row_02_st_4 [ 16 ] ;
   wire [ 1 : 0 ] fa_13_st_5 = row_00_st_4 [ 15 ] + row_01_st_4 [ 15 ] + row_02_st_4 [ 15 ] ;
   wire [ 1 : 0 ] fa_14_st_5 = row_00_st_4 [ 14 ] + row_01_st_4 [ 14 ] + row_02_st_4 [ 14 ] ;
   wire [ 1 : 0 ] fa_15_st_5 = row_00_st_4 [ 13 ] + row_01_st_4 [ 13 ] + row_02_st_4 [ 13 ] ;
   wire [ 1 : 0 ] fa_16_st_5 = row_00_st_4 [ 12 ] + row_01_st_4 [ 12 ] + row_02_st_4 [ 12 ] ;
   wire [ 1 : 0 ] fa_17_st_5 = row_00_st_4 [ 11 ] + row_01_st_4 [ 11 ] + row_02_st_4 [ 11 ] ;
   wire [ 1 : 0 ] fa_18_st_5 = row_00_st_4 [ 10 ] + row_01_st_4 [ 10 ] + row_02_st_4 [ 10 ] ;
   wire [ 1 : 0 ] fa_19_st_5 = row_00_st_4 [ 09 ] + row_01_st_4 [ 09 ] + row_02_st_4 [ 09 ] ;
   wire [ 1 : 0 ] fa_20_st_5 = row_00_st_4 [ 08 ] + row_01_st_4 [ 08 ] + row_02_st_4 [ 08 ] ;
   wire [ 1 : 0 ] fa_21_st_5 = row_00_st_4 [ 07 ] + row_01_st_4 [ 07 ] + row_02_st_4 [ 07 ] ;
   wire [ 1 : 0 ] fa_22_st_5 = row_00_st_4 [ 06 ] + row_01_st_4 [ 06 ] + row_02_st_4 [ 06 ] ;
   wire [ 1 : 0 ] fa_23_st_5 = row_00_st_4 [ 05 ] + row_01_st_4 [ 05 ] + row_02_st_4 [ 05 ] ;
   wire [ 1 : 0 ] fa_24_st_5 = row_00_st_4 [ 04 ] + row_01_st_4 [ 04 ] + row_02_st_4 [ 04 ] ;

   wire [ 1 : 0 ] ha_00_st_5 = row_00_st_4 [ 03 ] + row_01_st_4 [ 03 ]                      ;

   assign row_00_st_5 = { row_00_st_4 [ 30 : 29 ] , 
                                 fa_00_st_5 [ 0 ] , 
                                 fa_01_st_5 [ 0 ] , 
                                 fa_02_st_5 [ 0 ] , 
                                 fa_03_st_5 [ 0 ] , 
                                 fa_04_st_5 [ 0 ] , 
                                 fa_05_st_5 [ 0 ] , 
                                 fa_06_st_5 [ 0 ] , 
                                 fa_07_st_5 [ 0 ] , 
                                 fa_08_st_5 [ 0 ] , 
                                 fa_09_st_5 [ 0 ] , 
                                 fa_10_st_5 [ 0 ] , 
                                 fa_11_st_5 [ 0 ] , 
                                 fa_12_st_5 [ 0 ] , 
                                 fa_13_st_5 [ 0 ] , 
                                 fa_14_st_5 [ 0 ] , 
                                 fa_15_st_5 [ 0 ] , 
                                 fa_16_st_5 [ 0 ] , 
                                 fa_17_st_5 [ 0 ] , 
                                 fa_18_st_5 [ 0 ] , 
                                 fa_19_st_5 [ 0 ] , 
                                 fa_20_st_5 [ 0 ] , 
                                 fa_21_st_5 [ 0 ] , 
                                 fa_22_st_5 [ 0 ] , 
                                 fa_23_st_5 [ 0 ] , 
                                 fa_24_st_5 [ 0 ] , 
                                 ha_00_st_5 [ 0 ] , 
                          row_00_st_4 [  2 :  0 ]   
                        } ;
   assign row_01_st_5 = { row_01_st_4 [ 30      ] , 
                                 fa_00_st_5 [ 1 ] , 
                                 fa_01_st_5 [ 1 ] , 
                                 fa_02_st_5 [ 1 ] , 
                                 fa_03_st_5 [ 1 ] , 
                                 fa_04_st_5 [ 1 ] , 
                                 fa_05_st_5 [ 1 ] , 
                                 fa_06_st_5 [ 1 ] , 
                                 fa_07_st_5 [ 1 ] , 
                                 fa_08_st_5 [ 1 ] , 
                                 fa_09_st_5 [ 1 ] , 
                                 fa_10_st_5 [ 1 ] , 
                                 fa_11_st_5 [ 1 ] , 
                                 fa_12_st_5 [ 1 ] , 
                                 fa_13_st_5 [ 1 ] , 
                                 fa_14_st_5 [ 1 ] , 
                                 fa_15_st_5 [ 1 ] , 
                                 fa_16_st_5 [ 1 ] , 
                                 fa_17_st_5 [ 1 ] , 
                                 fa_18_st_5 [ 1 ] , 
                                 fa_19_st_5 [ 1 ] , 
                                 fa_20_st_5 [ 1 ] , 
                                 fa_21_st_5 [ 1 ] , 
                                 fa_22_st_5 [ 1 ] , 
                                 fa_23_st_5 [ 1 ] , 
                                 fa_24_st_5 [ 1 ] , 
                                 ha_00_st_5 [ 1 ] , 
                          row_02_st_4 [  3      ] , 
                          row_01_st_4 [  2 :  0 ]   
                        } ;
   assign row_02_st_5 = { row_02_st_4 [ 30      ] , 
                          row_01_st_4 [ 29      ] , 
                          row_03_st_4 [ 28 :  3 ] , 
                          row_02_st_4 [  2 :  0 ]   
                        } ;

   //
   // Stage 6
   //
   wire [ 1 : 0 ] fa_00_st_6 = row_00_st_5 [ 29 ] + row_01_st_5 [ 29 ] + row_02_st_5 [ 29 ] ;
   wire [ 1 : 0 ] fa_01_st_6 = row_00_st_5 [ 28 ] + row_01_st_5 [ 28 ] + row_02_st_5 [ 28 ] ;
   wire [ 1 : 0 ] fa_02_st_6 = row_00_st_5 [ 27 ] + row_01_st_5 [ 27 ] + row_02_st_5 [ 27 ] ;
   wire [ 1 : 0 ] fa_03_st_6 = row_00_st_5 [ 26 ] + row_01_st_5 [ 26 ] + row_02_st_5 [ 26 ] ;
   wire [ 1 : 0 ] fa_04_st_6 = row_00_st_5 [ 25 ] + row_01_st_5 [ 25 ] + row_02_st_5 [ 25 ] ;
   wire [ 1 : 0 ] fa_05_st_6 = row_00_st_5 [ 24 ] + row_01_st_5 [ 24 ] + row_02_st_5 [ 24 ] ;
   wire [ 1 : 0 ] fa_06_st_6 = row_00_st_5 [ 23 ] + row_01_st_5 [ 23 ] + row_02_st_5 [ 23 ] ;
   wire [ 1 : 0 ] fa_07_st_6 = row_00_st_5 [ 22 ] + row_01_st_5 [ 22 ] + row_02_st_5 [ 22 ] ;
   wire [ 1 : 0 ] fa_08_st_6 = row_00_st_5 [ 21 ] + row_01_st_5 [ 21 ] + row_02_st_5 [ 21 ] ;
   wire [ 1 : 0 ] fa_09_st_6 = row_00_st_5 [ 20 ] + row_01_st_5 [ 20 ] + row_02_st_5 [ 20 ] ;
   wire [ 1 : 0 ] fa_10_st_6 = row_00_st_5 [ 19 ] + row_01_st_5 [ 19 ] + row_02_st_5 [ 19 ] ;
   wire [ 1 : 0 ] fa_11_st_6 = row_00_st_5 [ 18 ] + row_01_st_5 [ 18 ] + row_02_st_5 [ 18 ] ;
   wire [ 1 : 0 ] fa_12_st_6 = row_00_st_5 [ 17 ] + row_01_st_5 [ 17 ] + row_02_st_5 [ 17 ] ;
   wire [ 1 : 0 ] fa_13_st_6 = row_00_st_5 [ 16 ] + row_01_st_5 [ 16 ] + row_02_st_5 [ 16 ] ;
   wire [ 1 : 0 ] fa_14_st_6 = row_00_st_5 [ 15 ] + row_01_st_5 [ 15 ] + row_02_st_5 [ 15 ] ;
   wire [ 1 : 0 ] fa_15_st_6 = row_00_st_5 [ 14 ] + row_01_st_5 [ 14 ] + row_02_st_5 [ 14 ] ;
   wire [ 1 : 0 ] fa_16_st_6 = row_00_st_5 [ 13 ] + row_01_st_5 [ 13 ] + row_02_st_5 [ 13 ] ;
   wire [ 1 : 0 ] fa_17_st_6 = row_00_st_5 [ 12 ] + row_01_st_5 [ 12 ] + row_02_st_5 [ 12 ] ;
   wire [ 1 : 0 ] fa_18_st_6 = row_00_st_5 [ 11 ] + row_01_st_5 [ 11 ] + row_02_st_5 [ 11 ] ;
   wire [ 1 : 0 ] fa_19_st_6 = row_00_st_5 [ 10 ] + row_01_st_5 [ 10 ] + row_02_st_5 [ 10 ] ;
   wire [ 1 : 0 ] fa_20_st_6 = row_00_st_5 [ 09 ] + row_01_st_5 [ 09 ] + row_02_st_5 [ 09 ] ;
   wire [ 1 : 0 ] fa_21_st_6 = row_00_st_5 [ 08 ] + row_01_st_5 [ 08 ] + row_02_st_5 [ 08 ] ;
   wire [ 1 : 0 ] fa_22_st_6 = row_00_st_5 [ 07 ] + row_01_st_5 [ 07 ] + row_02_st_5 [ 07 ] ;
   wire [ 1 : 0 ] fa_23_st_6 = row_00_st_5 [ 06 ] + row_01_st_5 [ 06 ] + row_02_st_5 [ 06 ] ;
   wire [ 1 : 0 ] fa_24_st_6 = row_00_st_5 [ 05 ] + row_01_st_5 [ 05 ] + row_02_st_5 [ 05 ] ;
   wire [ 1 : 0 ] fa_25_st_6 = row_00_st_5 [ 04 ] + row_01_st_5 [ 04 ] + row_02_st_5 [ 04 ] ;
   wire [ 1 : 0 ] fa_26_st_6 = row_00_st_5 [ 03 ] + row_01_st_5 [ 03 ] + row_02_st_5 [ 03 ] ;

   wire [ 1 : 0 ] ha_00_st_6 = row_00_st_5 [ 02 ] + row_01_st_5 [ 02 ]                      ;

   assign row_00_st_6 = { row_00_st_5 [ 30      ] , 
                                 fa_00_st_6 [ 0 ] , 
                                 fa_01_st_6 [ 0 ] , 
                                 fa_02_st_6 [ 0 ] , 
                                 fa_03_st_6 [ 0 ] , 
                                 fa_04_st_6 [ 0 ] , 
                                 fa_05_st_6 [ 0 ] , 
                                 fa_06_st_6 [ 0 ] , 
                                 fa_07_st_6 [ 0 ] , 
                                 fa_08_st_6 [ 0 ] , 
                                 fa_09_st_6 [ 0 ] , 
                                 fa_10_st_6 [ 0 ] , 
                                 fa_11_st_6 [ 0 ] , 
                                 fa_12_st_6 [ 0 ] , 
                                 fa_13_st_6 [ 0 ] , 
                                 fa_14_st_6 [ 0 ] , 
                                 fa_15_st_6 [ 0 ] , 
                                 fa_16_st_6 [ 0 ] , 
                                 fa_17_st_6 [ 0 ] , 
                                 fa_18_st_6 [ 0 ] , 
                                 fa_19_st_6 [ 0 ] , 
                                 fa_20_st_6 [ 0 ] , 
                                 fa_21_st_6 [ 0 ] , 
                                 fa_22_st_6 [ 0 ] , 
                                 fa_23_st_6 [ 0 ] , 
                                 fa_24_st_6 [ 0 ] , 
                                 fa_25_st_6 [ 0 ] , 
                                 fa_26_st_6 [ 0 ] , 
                                 ha_00_st_6 [ 0 ] , 
                          row_00_st_5 [  1 :  0 ]   
                        } ;
   assign row_01_st_6 = {                           
                                 fa_00_st_6 [ 1 ] , 
                                 fa_01_st_6 [ 1 ] , 
                                 fa_02_st_6 [ 1 ] , 
                                 fa_03_st_6 [ 1 ] , 
                                 fa_04_st_6 [ 1 ] , 
                                 fa_05_st_6 [ 1 ] , 
                                 fa_06_st_6 [ 1 ] , 
                                 fa_07_st_6 [ 1 ] , 
                                 fa_08_st_6 [ 1 ] , 
                                 fa_09_st_6 [ 1 ] , 
                                 fa_10_st_6 [ 1 ] , 
                                 fa_11_st_6 [ 1 ] , 
                                 fa_12_st_6 [ 1 ] , 
                                 fa_13_st_6 [ 1 ] , 
                                 fa_14_st_6 [ 1 ] , 
                                 fa_15_st_6 [ 1 ] , 
                                 fa_16_st_6 [ 1 ] , 
                                 fa_17_st_6 [ 1 ] , 
                                 fa_18_st_6 [ 1 ] , 
                                 fa_19_st_6 [ 1 ] , 
                                 fa_20_st_6 [ 1 ] , 
                                 fa_21_st_6 [ 1 ] , 
                                 fa_22_st_6 [ 1 ] , 
                                 fa_23_st_6 [ 1 ] , 
                                 fa_24_st_6 [ 1 ] , 
                                 fa_25_st_6 [ 1 ] , 
                                 fa_26_st_6 [ 1 ] , 
                                 ha_00_st_6 [ 1 ] , 
                          row_02_st_5 [  2      ] , 
                          row_01_st_5 [  1 :  0 ]   
                        } ;

   //
   // CPA
   // 
   assign p = row_00_st_6 + row_01_st_6 ; 

endmodule
