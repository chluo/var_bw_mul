/* ======================================================================
 *
 * Sequencer Class for Varaibale Bit-width Multipliers 
 * (var_bw_mul_sequencer)
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
 * Description      |  Sequencer class for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 class var_bw_mul_sequencer extends uvm_sequencer #( var_bw_mul_trxn ) ; 
   // UVM utils and macros 
   `uvm_sequencer_utils ( var_bw_mul_sequencer ) 
   // Constructor 
   function new ( string name = "var_bw_mul_sequencer" , uvm_component parent ) ; 
     super.new ( name , parent ) ; 
     `uvm_update_sequence_lib_and_item ( var_bw_mul_trxn ) 
   endfunction : new 
 endclass : var_bw_mul_sequencer 
