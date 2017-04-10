/* ======================================================================
 *
 * Test for Fixed Bit-width Adders 
 * (fix_bw_add_test)
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
 * Description      |  Test for fixed bit-width adders.
 *                  |  designed for functional verification.  
 *                  |  Bit-width: 16-bit.
 * =================================================================== */

 class fix_bw_add_test extends fix_bw_mul_test ;
   // Register with the factory 
   `uvm_component_utils ( fix_bw_add_test ) 

   // Constructor 
   function new ( string name = "var_bw_add_test" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
   endfunction : new

   // Build phase
   virtual function void build_phase ( uvm_phase phase ) ; 
     // Create the adder monitor instead of the multiplier monitor 
     var_bw_mul_monitor::type_id::set_type_override ( var_bw_add_monitor::get_type ( ) ) ; 
     env_i = var_bw_mul_env::type_id::create ( "env_i" , this ) ; 
   endfunction : build_phase 
 endclass : fix_bw_add_test 

