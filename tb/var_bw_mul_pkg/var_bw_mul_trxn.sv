/* ======================================================================
 *
 * Operation Transaction Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_trxn)
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
 * Description      |  Operation transaction class for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_trxn extends uvm_sequence_item ; 
   // Data members 
   rand bit                para_mode ; // 1: 8-bit mul's in parallel; 0: 16-bit mul
   rand bit   [ 15 : 0 ]   a         ; // Operand A 
   rand bit   [ 15 : 0 ]   b         ; // Operand B 
        bit   [ 31 : 0 ]   p         ; // Product 

   // UVM utilities and automation macros
   `uvm_object_utils_begin ( var_bw_mul_trxn ) 
     `uvm_field_int ( para_mode , UVM_DEFAULT ) 
     `uvm_field_int ( a         , UVM_DEFAULT ) 
     `uvm_field_int ( b         , UVM_DEFAULT ) 
     `uvm_field_int ( p         , UVM_DEFAULT ) 
   `uvm_object_utils_end

   // Randomization constrains 
   constraint operand_cstr {
     // 20% chance to be all 0's or all 1's
     a dist { 16'h0000 :/ 1 , 16'h00ff :/ 1 , [ 16'h0001 : 16'hfffe ] :/ 6 , 16'hff00 :/ 1 , 16'hffff :/ 1 } ; 
     b dist { 16'h0000 :/ 1 , 16'h00ff :/ 1 , [ 16'h0001 : 16'hfffe ] :/ 6 , 16'hff00 :/ 1 , 16'hffff :/ 1 } ; 
   } 

   // Constructor 
   function new ( string name = "var_bw_mul_trxn" ) ; 
     super.new ( name ) ; 
   endfunction : new 

 endclass : var_bw_mul_trxn 
