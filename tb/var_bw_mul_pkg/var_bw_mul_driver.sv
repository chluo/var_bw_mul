/* ======================================================================
 *
 * Driver Class for Varaibale Bit-width Multipliers/Adders
 * (var_bw_mul_driver)
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
 * Description      |  Driver class for variable bit-width multipliers/ 
 *                  |  adders, designed for functional verification.  
 *                  |  Bit-width: 16-bit or 2 8-bit's in parallel. 
 * =================================================================== */

 class var_bw_mul_driver extends uvm_driver #( var_bw_mul_trxn ) ; 
   // Virtual interface to the DUT
   // To be assigned at the top-level env
   virtual interface var_bw_mul_interface interf_i ; 

   // UVM utilities and automation macros
   `uvm_component_utils ( var_bw_mul_driver ) 

   // Constructor 
   function new ( string name = "var_bw_mul_driver" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
   endfunction : new 

   // Member functions and tasks 
   virtual task drive_trxn ( var_bw_mul_trxn trxn ) ; 
     @ ( posedge interf_i.clk ) begin 
       interf_i.para_mode = trxn.para_mode ; 
       interf_i.a         = trxn.a         ;
       interf_i.b         = trxn.b         ;
       interf_i.ci_lo     = trxn.ci_lo     ;
       interf_i.ci_hi     = trxn.ci_hi     ;
     end // @ 
   endtask : drive_trxn 

   // Run phase 
   virtual task run_phase ( uvm_phase phase ) ; 
     forever begin : driver_loop
       // Get the next trxn item from the sequencer 
       seq_item_port.get_next_item ( req ) ;  
       // Raise objection 
       phase.raise_objection ( this ) ;
       // Drive the trxn onto the interface 
       drive_trxn ( req ) ; 
       // Tell the sequencer that the trxn item is finished
       // No need to return the processed trxn back to the sequencer
       seq_item_port.item_done ( ) ; 
       // Drop objection 
       phase.drop_objection ( this ) ; 
     end : driver_loop // forever
   endtask : run_phase 

 endclass : var_bw_mul_driver 
