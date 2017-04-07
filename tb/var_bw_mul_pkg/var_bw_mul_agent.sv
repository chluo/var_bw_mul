/* ======================================================================
 *
 * Verification Agent Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_agent)
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
 * Description      |  Verification agent class for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_agent extends uvm_agent ; 
   // Child components 
   var_bw_mul_driver     driver_i    ;
   var_bw_mul_sequencer  sequencer_i ;
   var_bw_mul_collector  collector_i ; 
   var_bw_mul_monitor    monitor_i   ;

   // UVM utils 
   `uvm_component_utils ( var_bw_mul_agent ) 

   // Constructor 
   function new ( string name = "var_bw_mul_agent" , uvm_component parent ) ; 
     super.new ( name , parent ) ; 
   endfunction : new 

   // Build phase 
   virtual function build_phase ( uvm_phase phase ) ; 
     driver_i    = var_bw_mul_driver   ::type_id::create ( "driver_i"    , this )  ;
     sequencer_i = var_bw_mul_sequencer::type_id::create ( "sequencer_i" , this )  ;
     collector_i = var_bw_mul_collector::type_id::create ( "collector_i" , this )  ; 
     monitor_i   = var_bw_mul_monitor  ::type_id::create ( "monitor_i"   , this )  ;
   endfunction : = build_phase 

   // Connect phase 
   virtual function connect_phase ( uvm_phase phase ) ; 
     driver_i.seq_item_port.connect      ( sequencer_i.seq_item_export  ) ; 
     collector_i.collector_aport.connect ( collector_i.collector_axport ) ;
   endfunction : connect_phase 

 endclass : var_bw_mul_agent 
