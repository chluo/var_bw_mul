/* ======================================================================
 *
 * Top Module for Varaibale Bit-width Adder Verification 
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
 * Description      |  Top module for verifying variable bit-width 
 *                  |  adders, designed for functional verification.  
 *                  |  Bit-width: 16-bit adder or 2 8-bit adders. 
 * =================================================================== */

 `include "var_bw_mul_interface.sv"
 `include "golden_var_bw_add.v"

 module top ; 
   import uvm_pkg::*        ;
   `include "uvm_macros.svh"

   import var_bw_mul_pkg::* ; 
   `include "var_bw_mul_macros.sv"

   // Interface instance 
   var_bw_mul_interface interf_i ( ) ;

   // DUT instance 
   golden_var_bw_add dut (
     .para_mode   ( interf_i.para_mode ) ,
     .a           ( interf_i.a         ) ,
     .b           ( interf_i.b         ) ,
     .ci_lo       ( interf_i.ci_lo     ) ,
     .ci_hi       ( interf_i.ci_hi     ) ,
     .p           ( interf_i.p         ) ,
     .co_lo       ( interf_i.co_lo     ) ,
     .co_hi       ( interf_i.co_hi     )  
   ) ; 

   initial begin
     // Register the interface with the global config database
     uvm_config_db #( virtual var_bw_mul_interface )::set( null , "*" , "interf_i" , interf_i);
     // Run the specified test
     run_test ( ) ;
   end // initial 

 endmodule : top 

