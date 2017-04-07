/* ======================================================================
 *
 * Collector Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_collector)
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
 * Description      |  Collector class for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_collector extends uvm_component ; 
   // Virtual interface to the DUT
   // To be assigned at the top-level env
   virtual interface var_bw_mul_interface interf_i ; 

   // Collected trxn item from the interface 
   var_bw_mul_trxn collected_trxn ; 

   // Analysis port connected to the monitor 
   uvm_analysis_port #( var_bw_mul_trxn ) collector_aport ; 

   // UVM utils 
   `uvm_component_utils ( var_bw_mul_collector ) 

   // Constructor 
   function new ( string name = "var_bw_mul_collector" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
     collector_aport = new ( "collector_aport" , this ) ; 
   endfunction : new 

   // Run phase 
   virtual task run_phase ( uvm_phase phase ) ; 
     // Create the trxn object to hold the collected data 
     collected_trxn = new ( "collected_trxn" ) ; 
     // No result available at the first clock cycle; Skip it
     @ ( posedge interf_i.clk ) ; 
     // Sample from the interface at every clock cycle 
     forever begin : collector_loop 
       @ ( posedge interf_i.clk ) begin  
         collected_trxn.para_mode = interf_i.para_mode ; 
         collected_trxn.a         = interf_i.a         ; 
         collected_trxn.b         = interf_i.b         ; 
         collected_trxn.p         = interf_i.p         ; 
         // Send the colleced trxn to the monitor 
         collector_aport.write ( collected_trxn ) ; 
       end // @ 
     end : collector_loop // forever
   endtask : run_phase 
 endclass : var_bw_mul_collector 
