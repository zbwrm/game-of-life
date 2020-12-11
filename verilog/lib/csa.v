//`include "fa.v"
//`include "ripple.v"

// W-bit Carry Save Adder
`timescale 1ns / 1ps

module carry_save_adder(
  input  [W-1:0] A,B,C, // W-bit Input Operands
  output [W-1:0] S,     // W-bit Sum
  output [W-1:0] Co);   // Carry Out

  parameter W = 4;      // Default width
  
  //wire [W:0] carry;
  //wire [W-2:0] mid_sum;
  //wire [W-1:0] holder;
  //wire ignore;
  //full_adder add0(.A(A[0]),.B(B[0]),.Ci(C[0]),.S(S[0]), .Co(carry[0]));

  
  generate genvar i;
    for (i=0; i< W; i=i+1) begin
      full_adder fa_inst(.A(A[i]), .B(B[i]), .Ci(C[i]), .S(S[i]), .Co(Co[i]));
    end
  endgenerate

  
  
  //generate genvar i;
    //for (i=1; i< W; i=i+1) begin
      //full_adder fa_inst(.A(A[i]),.B(B[i]), .Ci(C[i]), .S(mid_sum[i-1]), .Co(carry[i]));
    //end
  //endgenerate

  
  //ripple_carry_adder adder(.A(carry),.B(mid_sum),.Ci(0),.S(holder[W-1:0]), .Co(ignore));

  //assign S[W-1:1] = holder[W-2:0];
  //assign Co = holder[W-1];

endmodule
