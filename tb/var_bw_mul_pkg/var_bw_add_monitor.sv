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
     // Expected results for the parallel mode
     bit [  8 : 0 ] res_hi_expected = trxn.a [ 15 : 8 ] + trxn.b [ 15 : 8 ] + trxn.ci_hi ;
     bit [  8 : 0 ] res_lo_expected = trxn.a [  7 : 0 ] + trxn.b [  7 : 0 ] + trxn.ci_lo ;
     bit             co_hi_expected = res_hi_expected [ 8 ] ;
     bit             co_lo_expected = res_lo_expected [ 8 ] ;

     // Expected results for the 16-bit mode
     bit [ 16 : 0 ] res_16_expected = trxn.a + trxn.b + trxn.ci_lo ;
     bit             co_16_expected = res_16_expected [ 16 ]       ;

     // We are still using the 32-bit variables to store adder results, although 18-bit variables are wide enough
     // Doing this to avoid modifying the transaction class (and all related classes ...)
     bit [ 31 : 0 ] res_expected = trxn.para_mode ? 
       { res_hi_expected [ 8 : 0 ], res_lo_expected [ 8 : 0 ] } : res_16_expected [ 16 : 0 ] ; 
     bit [ 31 : 0 ] res_actual   = trxn.para_mode ? 
       { trxn.co_hi , trxn.p [ 15 : 8 ] , trxn.co_lo , trxn.p [ 7 : 0 ] } : { trxn.co_hi , trxn.p [ 15 : 0 ] } ;

     // Format a result string for reports
     string results ; 
     if ( trxn.para_mode ) 
       results = $sformatf ( 
         "8-bit Additions: %h + %h + %h = %h (expected) / %h (actual) | %h + %h + %h = %h (expected) / %h (actual)" , 
         trxn.a [ 15 : 8 ] , trxn.b [ 15 : 8 ] , trxn.ci_hi , res_expected [ 17 :  9 ] , res_actual [ 17 :  9 ] ,  
         trxn.a [  7 : 0 ] , trxn.b [  7 : 0 ] , trxn.ci_lo , res_expected [  8 :  0 ] , res_actual [  8 :  0 ]    
       ) ; 
     else 
       results = $sformatf ( 
         "16-bit Addition: %h + %h + %h = %h (expected) / %h (actual)" , 
         trxn.a , trxn.b , trxn.ci_lo , res_expected [ 17 : 0 ] , res_actual [ 17 : 0 ]
       ) ; 

     // Check the result
     if ( res_expected == res_actual ) 
       `uvm_info  ( "MONITOR" , results , UVM_MEDIUM ) 
     else 
       `uvm_error ( "MONITOR" , results ) 
   endfunction : perform_res_check 

 endclass : var_bw_add_monitor 
