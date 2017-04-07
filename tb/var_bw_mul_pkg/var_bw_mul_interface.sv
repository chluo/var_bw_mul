/* ======================================================================
 *
 * SystemVerilog Interface for Varaibale Bit-width Multipliers 
 * (var_bw_mul_interface)
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
 * Description      |  SystemVerilog interface for variable bit-width 
 *                  |  multipliers, designed for functional verification.  
 *                  |  Bit-width: 16-bit multiplier or 2 8-bit multipliers. 
 * =================================================================== */

 interface var_bw_mul_interface ( ) ; 
   /* Note: no clock input for pure combinational logic. But a dummy clock
    * is generated inside the interface to help synchronization */
   // 
   // Signals
   //
   logic                para_mode ; // 1: 8-bit mul's in parallel; 0: 16-bit mul
   logic   [ 15 : 0 ]   a         ; // Operand A 
   logic   [ 15 : 0 ]   b         ; // Operand B 
   logic   [ 31 : 0 ]   p         ; // Product 
   logic                clk       ; // Dummy clock to help synchronization 

   //
   // Clock generator 
   //
   initial      clk =  1'b0 ; 
   forever # 10 clk = ~ clk ; 

 endinterface : var_bw_mul_interface 

