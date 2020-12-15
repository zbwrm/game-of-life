`timescale 1ns / 1ps

module IS_2(
  input  Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Checked); 
  
  wire [3:0] total;
  total = Tl + T + Tr + L + R + Bl + B + Br;
  
  if (total == 2) begin 
    Checked = 1; 
  end else begin
    Checked = 0;
  end
endmodule
