`include "is_2.v"
`include "is_3.v"
`include "lib/dff.v"

`timescale 1ns / 1ps

module CELL 
#(parameter S_0 = 0)
  (input  clk,_rst,Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Status); 

  parameter DLY = 5;
  wire is_2;
  wire is_3;
  wire both_2_3;
  reg prev_stat;
  reg alive_check;
  
  or #DLY alive(both_2_3, is_2, is_3);

  IS_2 check_2(Tl, T, Tr, L, R, Bl, B, Br, is_2);
  IS_3 check_3(Tl, T, Tr, L, R, Bl, B, Br, is_3);
  DFF #(.INITVAL(S_0))dff_stat(.clk(clk), ._rst(_rst), .D(prev_stat), .Q(Status));
  
  always @* begin
    case (Status)
      1'b0:  begin prev_stat = is_3; end
      1'b1:  begin prev_stat = both_2_3; end
      default: /* default catch */;
    endcase
  end

endmodule
