/* ======================================================================
 *
 * Top Module for Fixed Bit-width Multiplier Verification 
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
 * Description      |  Top module for verifying fixed bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier. 
 * =================================================================== */

 `include "var_bw_mul_interface.sv"
 `include "array_fix_bw_mul.v"

 module top ; 
   import uvm_pkg::*        ;
   `include "uvm_macros.svh"

   import var_bw_mul_pkg::* ; 
   `include "var_bw_mul_macros.sv"

   // Interface instance 
   var_bw_mul_interface interf_i ( ) ;

   // DUT instance 
   array_fix_bw_mul dut (
     //* .para_mode   ( interf_i.para_mode ) ,
     .a           ( interf_i.a         ) ,
     .b           ( interf_i.b         ) ,
     .p           ( interf_i.p         )  
   ) ; 

   initial begin
     // Register the interface with the global config database
     uvm_config_db #( virtual var_bw_mul_interface )::set( null , "*" , "interf_i" , interf_i);
     // Run the specified test
     run_test ( ) ;
   end // initial 

 endmodule : top 

