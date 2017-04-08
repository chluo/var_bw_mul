/* ======================================================================
 *
 * Package for Funcitonal Verification of Varaibale Bit-width Multipliers 
 * (var_bw_mul_pkg)
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
 * Description      |  Verification package for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 package var_bw_mul_pkg ; 

   import    uvm_pkg::* ; 
   `include "uvm_macros.svh"  

   `include "var_bw_mul_trxn.sv"      
   `include "var_bw_mul_driver.sv"    
   `include "var_bw_mul_sequencer.sv" 
   `include "var_bw_mul_collector.sv" 
   `include "var_bw_mul_monitor.sv"   
   `include "var_bw_mul_agent.sv"     
   `include "var_bw_mul_env.sv"       
   `include "var_bw_mul_sequence.sv"
   `include "var_bw_mul_test.sv"      

   `include "fix_bw_mul_sequence.sv"
   `include "fix_bw_mul_test.sv"

 endpackage : var_bw_mul_pkg 

