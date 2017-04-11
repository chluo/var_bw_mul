/* ======================================================================
 *
 * Operation Transaction Class for Varaibale Bit-width Multipliers/Adders
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
 *                  |  multipliers/adders, for functional verification.  
 *                  |  Bit-width: 16-bit or 2 8-bit's in parallel. 
 * =================================================================== */

 class var_bw_mul_trxn extends uvm_sequence_item ; 
   // Data members 
   rand bit                para_mode ; // 1: 8-bit mul's in parallel; 0: 16-bit mul
   rand bit   [ 15 : 0 ]   a         ; // Operand A 
   rand bit   [ 15 : 0 ]   b         ; // Operand B 
        bit   [ 31 : 0 ]   p         ; // Product 
   // Additional data members for adders 
   rand bit                ci_lo     ; // Carry-in for the 16-bit adder or the lower 8-bit adder
   rand bit                ci_hi     ; // Carry-in for the higher 8-bit adder
        bit                co_lo     ; // Carry-out for the lower 8-bit adder
        bit                co_hi     ; // Carry-out for the 16-bit adder or the higher 8-bit adder

   // UVM utilities and automation macros
   `uvm_object_utils_begin ( var_bw_mul_trxn ) 
     `uvm_field_int ( para_mode , UVM_DEFAULT ) 
     `uvm_field_int ( a         , UVM_DEFAULT ) 
     `uvm_field_int ( b         , UVM_DEFAULT ) 
     `uvm_field_int ( p         , UVM_DEFAULT ) 
     `uvm_field_int ( ci_lo     , UVM_DEFAULT ) 
     `uvm_field_int ( ci_hi     , UVM_DEFAULT ) 
     `uvm_field_int ( co_lo     , UVM_DEFAULT ) 
     `uvm_field_int ( co_hi     , UVM_DEFAULT ) 
   `uvm_object_utils_end

   // Randomization constrains 
   /* Note: ci_hi is not contrained whatever para_mode is. By spec, ci_hi should not affect the 
    * the addition results when para_mode is set to 0. */
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
