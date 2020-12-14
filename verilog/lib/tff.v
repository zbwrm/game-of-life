`include "dff.v"
`timescale 1ns / 1ps

module TFF
#(parameter W=1, INITVAL=0)
 (input              clk,
  input              _rst,
  input      [W-1:0] T,  
  output reg [W-1:0] Q);


  wire in_dff;

  xor #5 xor_tff(in_dff, Q, T);

  DFF #5 dff_xor(.clk(clk), ._rst(_rst), .D(in_dff), .Q(Q));

endmodule
 
