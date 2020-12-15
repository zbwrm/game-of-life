`timescale 1ns / 1ps

module IS_2(
  input Tl, T, Tr, L, R, Bl, B, Br, // Input Operands
  output reg Checked); 
  
  reg [3:0] total;
  
  assign total = Tl + T + Tr + L + R + Bl + B + BR;

  
  always @ (total) begin
      case (total)
          2 : Checked = 1;
          default : Checked = 0;
      endcase
  end
endmodule
