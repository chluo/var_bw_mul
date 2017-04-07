/* ======================================================================
 *
 * Sequence for Varaibale Bit-width Multipliers 
 * (var_bw_mul_sequence)
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
 * Description      |  This sequence continuously creats randomized
 *                  |  transaction items and sends them to the sequencer.
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_sequence extends uvm_sequence #( var_bw_mul_trxn ) ; 
   // Number of trxn items generated
   int num_trxn = 5000 ;

   // UVM utils
   `uvm_object_utils ( var_bw_mul_sequence ) 

   // Constructor 
   function new ( string name = "var_bw_mul_sequence" ) ; 
     super.new ( name ) ; 
   endfunction : new

   // Help functions 
   function void set_num_trxn ( int num ) ; 
     num_trxn = num ; 
   endfunction : set_num_trxn 

   // Sequence routine
   virtual task body ( ) ; 
     repeat ( num_trxn ) begin : sequence_loop
       var_bw_mul_trxn trxn = new ( "trxn" ) ; 
       start_item  ( trxn ) ;
       if ( ! trxn.randomize ( ) ) `uvm_fatal ( "SEQUENCE" , "Failed to randomize the transaction item" ) 
       finish_item ( trxn ) ;
     end : sequence_loop // forever
   endtask : body 

 endclass : var_bw_mul_trxn 
