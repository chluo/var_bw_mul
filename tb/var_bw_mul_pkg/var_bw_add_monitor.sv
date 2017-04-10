/* ======================================================================
 *
 * Monitor Class for Varaibale Bit-width Adders 
 * (var_bw_add_monitor)
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
 * Description      |  Monitor class for variable bit-width 
 *                  |  adders, designed for functional verification.  
 *                  |  Bit-width: 16-bit adder or 2 8-bit adders. 
 * =================================================================== */

 class var_bw_add_monitor extends var_bw_mul_monitor ; 
   // Register with the factory 
   `uvm_component_utils ( var_bw_add_monitor ) 

   // Constructor 
   function new ( string name = "var_bw_add_monitor" , uvm_component parent ) ; 
     super.new ( name , parent ) ;
   endfunction : new 

   // Member functions
   // Result check
   virtual function void perform_res_check ( var_bw_mul_trxn trxn ) ; 
     bit [  8 : 0 ] res_hi_expected = trxn.a [ 15 : 8 ] + trxn.b [ 15 : 8 ] ;
     bit [  8 : 0 ] res_lo_expected = trxn.a [  7 : 0 ] + trxn.b [  7 : 0 ] ;

     // We are still using the 32-bit variables to store adder results, although 18-bit variables are wide enough
     // Doing this to avoid modifying the transaction class (and all related classes ...)
     bit [ 31 : 0 ] res_expected = trxn.para_mode ? { res_hi_expected , res_lo_expected } : trxn.a + trxn.b ; 
     bit [ 31 : 0 ] res_actual   = trxn.p ;

     // Format a result string for reports
     string results ; 
     if ( trxn.para_mode ) 
       results = $sformatf ( 
         "8-bit Additions: %h + %h = %h (expected) / %h (actual) | %h + %h = %h (expected) / %h (actual)" , 
         trxn.a [ 15 : 8 ] , trxn.b [ 15 : 8 ] , res_expected [ 17 :  9 ] , res_actual [ 17 :  9 ] ,  
         trxn.a [  7 : 0 ] , trxn.b [  7 : 0 ] , res_expected [  8 :  0 ] , res_actual [  8 :  0 ]    
       ) ; 
     else 
       results = $sformatf ( 
         "16-bit Addition: %h + %h = %h (expected) / %h (actual)" , 
         trxn.a , trxn.b , res_expected [ 17 : 0 ] , res_actual [ 17 : 0 ]
       ) ; 

     // Check the result
     if ( res_expected == res_actual ) 
       `uvm_info  ( "MONITOR" , results , UVM_MEDIUM ) 
     else 
       `uvm_error ( "MONITOR" , results ) 
   endfunction : perform_res_check 

 endclass : var_bw_add_monitor 
