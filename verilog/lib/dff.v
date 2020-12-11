// Emulated D Flip Flop
`timescale 1ns / 1ps

module DFF
#(parameter W=1, INITVAL=0)
 (input              clk,
  input              _rst,
  input      [W-1:0] D,  
  output reg [W-1:0] Q);

  always @(posedge clk or negedge _rst)
    if (~_rst) 
      Q <= INITVAL;
    else 
      Q <= D;
endmodule
