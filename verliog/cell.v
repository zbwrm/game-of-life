`include "lib/is_2.v"
`include "lib/is_3.v"
`include "lib/dff.v"

`timescale 1ns / 1ps

module CELL 
  (input  clk,_rst,Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output reg Status); 

  parameter DLY = 5;
  wire is_2;
  wire is_3;
  wire both_2_3;
  wire R;
  wire alive_check;
  
  or DLY alive(both_2_3, is_2, is_3);

  DFF dff_stat(.clk(clk), ._rst(_rst), .D(R), .Q(Status));
  
  always @* begin
    case (Status)
      0:  begin R = is_3; end
      1:  begin R = both_2_3; end
      default: /* default catch */;
    endcase
  end

endmodule
