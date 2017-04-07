/* ======================================================================
 *
 * Base Test for Varaibale Bit-width Multipliers 
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
 * Description      |  Base test for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */
 
 class var_bw_mul_test extends uvm_test ; 
   // Verification env instance
   var_bw_mul_env  env_i  ;

   // Constructor 
   function new ( string name = "var_bw_mul_test" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
   endfunction : new

   // Build phase
   virtual function void build_phase ( uvm_phase phase ) ; 
     env_i = var_bw_mul_env::type_id::create ( "env_i" , this ) ; 
   endfunction : build_phase 

 endclass : var_bw_mul_test 

