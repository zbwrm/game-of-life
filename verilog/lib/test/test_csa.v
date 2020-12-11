//`include "csa.v" // Testbench for carry save adder
`timescale 1ns / 1ps

module test_csa;
  // Regs and wires for input/output
  reg[W-1:0]  A,B,C;
  wire[W-1:0] csa_s;
  wire[W-1:0] csa_co;
  wire[W-1:0] rca_a;
  wire[W-1:0] rca_b;
  wire[W-1:0] rca_s;
  wire[W:0]   S;
  wire        Co;

  // Define the width of the Carry Save
  parameter W = 4;
  // Delay should scale as a function of W
  // to account for worst-case carry length
  // We still have ot use the ripple carry adder to "decode" the CSA output
  parameter DLY = 30*W;
  // It's already defined in ripple_carry_adder
  // but let's go ahead and override it here for fun.
  defparam DUT.W=W;
  defparam RCA.W=W;

  //Instantiate your "Device Under Test"
  carry_save_adder  DUT(A,B,C,csa_s,csa_co);
  ripple_carry_adder RCA(rca_a, rca_b, 1'b0, rca_s, Co);
  assign rca_a[W-2:0] = csa_s[W-1:1];
  assign rca_a[W-1] = 1'b0;
  assign rca_b[W-1:0] = csa_co;
  assign S[0] = csa_s[0];
  assign S[W:1] = rca_s[W-1:0];

  initial begin
    // Hooks for vvp/gtkwave
    // the *.vcd filename should match the *.v filename for Makefile cleanliness
    $dumpfile("test_csa.vcd");
    $dumpvars(0,test_csa);

    $display("A B C | S Co");
    $display("-------------");
    for (int i=0; i < 4096; i=i+1) begin
      {A,B,C} = i;
      #500

      if (A+B+C != {Co,S})
        $display("%b %b %b  | %b %b FAIL",A,B,C,S,Co);
  end
end
endmodule
