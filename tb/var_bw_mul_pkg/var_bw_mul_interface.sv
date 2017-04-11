/* ======================================================================
 *
 * SystemVerilog Interface for Varaibale Bit-width Multipliers/Adders 
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
 *                  |  multipliers/adders. 
 *                  |  Bit-width: 16-bit or 2 8-bit in parallel. 
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
   // Additional signals for adders
   logic                ci_lo     ; // Carry-in for the 16-bit adder or the lower 8-bit adder
   logic                ci_hi     ; // Carry-in for the higher 8-bit adder
   logic                co_lo     ; // Carry-out for the lower 8-bit adder
   logic                co_hi     ; // Carry-out for the 16-bit adder or the higher 8-bit adder

   //
   // Clock generator 
   //
   initial begin
     clk =  1'b0 ; 
     forever begin
       # 10 clk = ~ clk ; 
     end 
   end 

 endinterface : var_bw_mul_interface 

