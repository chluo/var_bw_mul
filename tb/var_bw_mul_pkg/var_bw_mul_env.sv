/* ======================================================================
 *
 * Verification Evironment Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_env)
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
 * Description      |  Verification environment for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_env extends uvm_env ; 
   // Child component 
   var_bw_mul_agent   agent_i  ;

   // UVM utils 
   `uvm_component_utils ( var_bw_mul_env ) 

   // Constructor 
   function new ( string name = "var_bw_mul_env" , uvm_component parent ) ; 
     super.new ( name , parent ) ; 
   endfunction : new

   // Build phase
   virtual function void build_phase ( uvm_phase phase ) ; 
     agent_i = var_bw_mul_agent::type_id::create ( "agent_i" , this ) ; 
   endfunction : build_phase 

   // Connect phase 
   // Assign virtual interfaces
   /* Note: The name of the interface in uvm_config_db is hard-coded. */ 
   virtual function void connect_phase ( uvm_phase phase ) ; 
     if ( !uvm_config_db #( virtual var_bw_mul_interface ) 
         ::get ( null , "*" , "interf_i" , agent_i.driver_i.interf_i ) ) 
       `uvm_fatal ( "ENV" , "Failed to get the interface from the global config database" ) ; 
     if ( !uvm_config_db #( virtual var_bw_mul_interface ) 
         ::get ( null , "*" , "interf_i" , agent_i.collector_i.interf_i ) ) 
       `uvm_fatal ( "ENV" , "Failed to get the interface from the global config database" ) ; 
   endfunction : connect_phase 

 endclass : var_bw_mul_env 

