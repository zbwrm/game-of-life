`timescale 1ns / 1ps

module IS_2(
  input Tl, T, Tr, L, R, Bl, B, Br, // Input Operands
  output reg Checked); 
  
  reg total;

  assign total = Tl + T + Tr + L + R + Bl + B + Br;
  
  always @ (total) begin
      case (total)
          2 : Checked = 1;
          default : Checked = 0;
      endcase
  end
endmodule
