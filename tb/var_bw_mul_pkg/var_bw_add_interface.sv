/* ======================================================================
 *
 * SystemVerilog Interface for Varaibale Bit-width Adders 
 * (var_bw_add_interface)
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
 * Description      |  SystemVerilog interface for variable bit-width 
 *                  |  adders, designed for functional verification.  
 *                  |  Bit-width: 16-bit adder or 2 8-bit adders. 
 * =================================================================== */

 interface var_bw_add_interface ( ) ; 
   /* Note: no clock input for pure combinational logic. But a dummy clock
    * is generated inside the interface to help synchronization */
   // 
   // Signals
   //
   logic                para_mode ; // 1: 8-bit mul's in parallel; 0: 16-bit mul
   logic   [ 15 : 0 ]   a         ; // Operand A 
   logic   [ 15 : 0 ]   b         ; // Operand B 
   logic   [ 17 : 0 ]   p         ; // Product 
   logic                clk       ; // Dummy clock to help synchronization 

   //
   // Clock generator 
   //
   initial begin
     clk =  1'b0 ; 
     forever begin
       # 10 clk = ~ clk ; 
     end 
   end 

 endinterface : var_bw_add_interface 

