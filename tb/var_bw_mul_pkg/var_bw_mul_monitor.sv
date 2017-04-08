/* ======================================================================
 *
 * Monitor Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_monitor)
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
 * Description      |  Monitor class for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_monitor extends uvm_monitor ; 
   // Flags to enable/disable result and coverage check
   // Both enabled by default 
   bit res_check_enable = 1'b1 ;
   bit  coverage_enable = 1'b1 ;

   // Export connected from the collector, used to receive collected trxn items 
   uvm_analysis_imp #( var_bw_mul_trxn , var_bw_mul_monitor ) collector_axport ; 

   // UVM utils 
   `uvm_component_utils ( var_bw_mul_monitor ) 

   // Coverage groups 
   // TODO: Code the coverage group; not really needed at this time
   covergroup monitor_cg ; 
   endgroup : monitor_cg 

   // Constructor 
   function new ( string name = "var_bw_mul_monitor" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
     monitor_cg = new ( ) ;
     collector_axport = new ( "collector_axport" , this ) ; 
   endfunction : new 

   // Member functions
   // Result check
   virtual function void perform_res_check ( var_bw_mul_trxn trxn ) ; 
     bit [ 15 : 0 ] res_hi_expected = trxn.a [ 15 : 8 ] * trxn.b [ 15 : 8 ] ;
     bit [ 15 : 0 ] res_lo_expected = trxn.a [  7 : 0 ] * trxn.b [  7 : 0 ] ;

     bit [ 31 : 0 ] res_expected = trxn.para_mode ? { res_hi_expected , res_lo_expected } : trxn.a * trxn.b ; 
     bit [ 31 : 0 ] res_actual   = trxn.p ;

     // Format a result string for reports
     string results ; 
     if ( trxn.para_mode ) 
       results = $sformatf ( 
         "8-bit Multiplications: %h * %h = %h (expected) / %h (actual) | %h * %h = %h (expected) / %h (actual)" , 
         trxn.a [ 15 : 8 ] , trxn.b [ 15 : 8 ] , res_expected [ 31 : 16 ] , res_actual [ 31 : 16 ] ,  
         trxn.a [  7 : 0 ] , trxn.b [  7 : 0 ] , res_expected [ 15 :  0 ] , res_actual [ 15 :  0 ]    
       ) ; 
     else 
       results = $sformatf ( 
         "16-bit Multiplication: %h * %h = %h (expected) / %h (actual)" , 
         trxn.a , trxn.b , res_expected , res_actual 
       ) ; 

     // Check the result
     if ( res_expected == res_actual ) 
       `uvm_info  ( "MONITOR" , results , UVM_MEDIUM ) 
     else 
       `uvm_error ( "MONITOR" , results ) 
   endfunction : perform_res_check 

   // Coverage analysis 
   virtual function void perform_coverage ( var_bw_mul_trxn trxn ) ; 
     monitor_cg.sample ( ) ; 
   endfunction : perform_coverage 

   // Implementation of the export connected from the collector 
   virtual function void write ( var_bw_mul_trxn trxn ) ; 
     if ( res_check_enable ) perform_res_check ( trxn ) ; 
     if ( coverage_enable  ) perform_coverage  ( trxn ) ; 
   endfunction : write 

 endclass : var_bw_mul_monitor 
