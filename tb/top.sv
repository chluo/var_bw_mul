/* ======================================================================
 *
 * Top Module for Varaibale Bit-width Multiplier Verification 
 * (var_bw_mul_test)
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
 * Description      |  Top module for verifying variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 module top ; 
   import uvm_pkg::*        ;
   `include "uvm_macros.svh"

   import var_bw_mul_pkg::* ; 
   `include "var_bw_mul_macros.sv"

   // Interface instance 
   var_bw_mul_interface interf_i ( ) ;

   // DUT instance 
   golden_var_bw_mul dut (
     .para_mode   ( interf_i.para_mode ) ,
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

