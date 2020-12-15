`include "tff.v"
`include "matrix.v"
`timescale 1ns / 1ps

//------------------------------------------------------------------------
// Simple fake CPU testbench sequence
//------------------------------------------------------------------------

module test_matrix ();

  reg clk;
  reg reset;
  reg grid [0:7][0:7];

  // Clock generation
  initial clk=0;
  always #10000000000 clk = !clk;

  reg clk_256;
  reg clk_128;
  reg clk_64;
  reg clk_32;
  reg clk_16;
  reg clk_8;
  reg clk_4;
  reg clk_2;
  reg clk_1;
    
    // freq. divide by 512 or 256 (whichever looks better)
    
    TFF to_256(clk, _rst, 1, clk_256);
    TFF to_128(clk_256, _rst, 1, clk_128);
    TFF to_64(clk_128, _rst, 1, clk_64);
    TFF to_32(clk_64, _rst, 1, clk_32);
    TFF to_16(clk_32, _rst, 1, clk_16);
    TFF to_8(clk_16, _rst, 1, clk_8);
    TFF to_4(clk_8, _rst, 1, clk_4);
    TFF to_2(clk_4, _rst, 1, clk_2);
    TFF to_1(clk_2, _rst, 1, clk_1);



  // Instantiate fake matrix
  MATRIX matrix(.clk(clk_1),._rst(reset), .grid(grid));

  // Test sequence

  always @ (posedge clk) begin
    $display("%b %b %b %b %b %b %b %b", grid[0][0], grid[0][1], grid[0][2], grid[0][3], grid[0][4], grid[0][5], grid[0][6], grid[0][7]);
    $display("%b %b %b %b %b %b %b %b", grid[1][0], grid[1][1], grid[1][2], grid[1][3], grid[1][4], grid[1][5], grid[1][6], grid[1][7]);
    $display("%b %b %b %b %b %b %b %b", grid[2][0], grid[2][1], grid[2][2], grid[2][3], grid[2][4], grid[2][5], grid[2][6], grid[2][7]);
    $display("%b %b %b %b %b %b %b %b", grid[3][0], grid[3][1], grid[3][2], grid[3][3], grid[3][4], grid[3][5], grid[3][6], grid[3][7]);
    $display("%b %b %b %b %b %b %b %b", grid[4][0], grid[4][1], grid[4][2], grid[4][3], grid[4][4], grid[4][5], grid[4][6], grid[4][7]);
    $display("%b %b %b %b %b %b %b %b", grid[5][0], grid[5][1], grid[5][2], grid[5][3], grid[5][4], grid[5][5], grid[5][6], grid[5][7]);
    $display("%b %b %b %b %b %b %b %b", grid[6][0], grid[6][1], grid[6][2], grid[6][3], grid[6][4], grid[6][5], grid[6][6], grid[6][7]);
    $display("%b %b %b %b %b %b %b %b", grid[7][0], grid[7][1], grid[7][2], grid[7][3], grid[7][4], grid[7][5], grid[7][6], grid[7][7]);
  end
  
endmodule
