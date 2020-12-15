`timescale 1ns / 1ps

module IS_2(
  input Tl, T, Tr, L, R, Bl, B, Br, // Input Operands
  output reg Checked); 
  
  reg total;
  
  assign total0 = Tl + T;
  assign total1 = total0 + Tr;
  assign total2 = total1 + L;
  assign total3 = total2 + R;
  assign total4 = total3 + Bl;
  assign total5 = total4 + B;
  assign total6 = total5 + Br;
  
  always @ (total6) begin
      case (total6)
          2 : Checked = 1;
          default : Checked = 0;
      endcase
  end
endmodule
