`timescale 1ns / 1ps

module IS_2(
  input  Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Checked); 

  reg total;
  total = Tl + T + Tr + L + R + Bl + B + Br;
  
  always @ (clk) begin
    assign Checked = (total == 3);
  end
endmodule
