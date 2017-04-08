/* ======================================================================
 *
 * Base Test for Fixed Bit-width Multipliers 
 * (fix_bw_mul_test)
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
 * Description      |  Base test for fixed bit-width multipliers. 
 *                  |  Bit-width: 16-bit multiplier.
 * =================================================================== */
 
 class fix_bw_mul_test extends uvm_test ; 
   // Verification env instance
   var_bw_mul_env  env_i  ;

   // Sequences 
   fix_bw_mul_sequence seq_i ;

   // UVM utils
   `uvm_component_utils ( fix_bw_mul_test ) 

   // Constructor 
   function new ( string name = "fix_bw_mul_test" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
     seq_i = new ( "seq_i" ) ;
   endfunction : new

   // Build phase
   virtual function void build_phase ( uvm_phase phase ) ; 
     env_i = var_bw_mul_env::type_id::create ( "env_i" , this ) ; 
   endfunction : build_phase 

   // Run phase 
   virtual task run_phase ( uvm_phase phase ) ; 
     phase.raise_objection ( this ) ;
     seq_i.set_num_trxn ( 50000 ) ; 
     seq_i.start ( env_i.agent_i.sequencer_i ) ;
     phase.drop_objection  ( this ) ;
   endtask : run_phase 

 endclass : fix_bw_mul_test 

