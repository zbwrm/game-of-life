`include "cell.v"
`timescale 1ns / 1ps
 
module MATRIX (input clk,_rst, // Input Operands
               output reg grid [0:7][0:7]); 

  parameter DLY = 5;

  CELL #(.S_0(1)) Tr00(clk, _rst, 1'b0,1'b0,1'b0,1'b0,grid[0][1],1'b0,grid[1][0],grid[1][1],grid[0][0]);
  CELL #(.S_0(1)) Tr07(clk, _rst, 1'b0,1'b0,1'b0,grid[0][6],1'b0,grid[1][6],grid[1][7],1'b0,grid[0][7]);
  CELL #(.S_0(1)) Tr77(clk, _rst, grid[6][6] ,grid[6][7],1'b0,grid[7][6],1'b0,1'b0,1'b0,1'b0,grid[7][7]);
  CELL #(.S_0(1)) Tr70(clk, _rst, 1'b0 ,grid[6][0],grid[6][1],1'b0,grid[7][1],1'b0,1'b0,1'b0,grid[7][0]);
  
  CELL #(.S_0(1)) Tr10(clk, _rst,  1'b0,grid[0][0],grid[0][1],1'b0,grid[1][1],1'b0,grid[2][0],grid[2][1],grid[1][0]);
  CELL #(.S_0(1)) Tr20(clk, _rst, 1'b0 ,grid[1][0],grid[1][1],1'b0,grid[2][1],1'b0,grid[3][0],grid[3][1],grid[2][0]);
  CELL #(.S_0(1)) Tr30(clk, _rst, 1'b0,grid[2][0],grid[2][1],1'b0,grid[3][1],1'b0,grid[4][0],grid[4][1],grid[3][0]);
  CELL #(.S_0(1)) Tr40(clk, _rst, 1'b0,grid[3][0],grid[3][1],1'b0,grid[4][1],1'b0,grid[5][0],grid[5][1],grid[4][0]);
  CELL #(.S_0(1)) Tr50(clk, _rst, 1'b0,grid[4][0],grid[4][1],1'b0,grid[5][1],1'b0,grid[6][0],grid[6][1],grid[5][0]);
  CELL #(.S_0(1)) Tr60(clk, _rst, 1'b0,grid[5][0],grid[5][1],1'b0,grid[6][1],1'b0,grid[7][0],grid[7][1],grid[6][0]);
  CELL #(.S_0(1)) Tr01(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][0],grid[0][2],grid[1][0],grid[1][1],grid[1][2],grid[0][1]);
  CELL #(.S_0(1)) Tr11(clk, _rst, grid[0][0],grid[0][1],grid[0][2],grid[1][0],grid[1][2],grid[2][0],grid[2][1],grid[2][2],grid[1][1]);
  CELL #(.S_0(1)) Tr21(clk, _rst, grid[1][0],grid[1][1],grid[1][2],grid[2][0],grid[2][2],grid[3][0],grid[3][1],grid[3][2],grid[2][1]);
  CELL #(.S_0(1)) Tr31(clk, _rst, grid[2][0],grid[2][1],grid[2][2],grid[3][0],grid[3][2],grid[4][0],grid[4][1],grid[4][2],grid[3][1]);
  CELL #(.S_0(1)) Tr41(clk, _rst, grid[3][0],grid[3][1],grid[3][2],grid[4][0],grid[4][2],grid[5][0],grid[5][1],grid[5][2],grid[4][1]);
  CELL #(.S_0(1)) Tr51(clk, _rst, grid[4][0],grid[4][1],grid[4][2],grid[5][0],grid[5][2],grid[6][0],grid[6][1],grid[6][2],grid[5][1]);
  CELL #(.S_0(1)) Tr61(clk, _rst, grid[5][0],grid[5][1],grid[5][2],grid[6][0],grid[6][2],grid[7][0],grid[7][1],grid[7][2],grid[6][1]);
  CELL #(.S_0(0)) Tr71(clk, _rst, grid[6][0],grid[6][1],grid[6][2],grid[7][0],grid[7][2],1'b0,1'b0,1'b0,grid[7][1]);
  CELL #(.S_0(0)) Tr02(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][1],grid[0][3],grid[1][1],grid[1][2],grid[1][3],grid[0][2]);
  CELL #(.S_0(0)) Tr12(clk, _rst, grid[0][1],grid[0][2],grid[0][3],grid[1][1],grid[1][3],grid[2][1],grid[2][2],grid[2][3],grid[1][2]);
  CELL #(.S_0(0)) Tr22(clk, _rst, grid[1][1],grid[1][2],grid[1][3],grid[2][1],grid[2][3],grid[3][1],grid[3][2],grid[3][3],grid[2][2]);
  CELL #(.S_0(0)) Tr32(clk, _rst, grid[2][1],grid[2][2],grid[2][3],grid[3][1],grid[3][3],grid[4][1],grid[4][2],grid[4][3],grid[3][2]);
  CELL #(.S_0(0)) Tr42(clk, _rst, grid[3][1],grid[3][2],grid[3][3],grid[4][1],grid[4][3],grid[5][1],grid[5][2],grid[5][3],grid[4][2]);
  CELL #(.S_0(0)) Tr52(clk, _rst, grid[4][1],grid[4][2],grid[4][3],grid[5][1],grid[5][3],grid[6][1],grid[6][2],grid[6][3],grid[5][2]);
  CELL #(.S_0(0)) Tr62(clk, _rst, grid[5][1],grid[5][2],grid[5][3],grid[6][1],grid[6][3],grid[7][1],grid[7][2],grid[7][3],grid[6][2]);
  CELL #(.S_0(0)) Tr72(clk, _rst, grid[6][1],grid[6][2],grid[6][3],grid[7][1],grid[7][3],1'b0,1'b0,1'b0,grid[7][2]);
  CELL #(.S_0(0)) Tr03(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][2],grid[0][4],grid[1][2],grid[1][3],grid[1][4],grid[0][3]);
  CELL #(.S_0(0)) Tr13(clk, _rst, grid[0][2],grid[0][3],grid[0][4],grid[1][2],grid[1][4],grid[2][2],grid[2][3],grid[2][4],grid[1][3]);
  CELL #(.S_0(0)) Tr23(clk, _rst, grid[1][2],grid[1][3],grid[1][4],grid[2][2],grid[2][4],grid[3][2],grid[3][3],grid[3][4],grid[2][3]);
  CELL #(.S_0(0)) Tr33(clk, _rst, grid[2][2],grid[2][3],grid[2][4],grid[3][2],grid[3][4],grid[4][2],grid[4][3],grid[4][4],grid[3][3]);
  CELL #(.S_0(0)) Tr43(clk, _rst, grid[3][2],grid[3][3],grid[3][4],grid[4][2],grid[4][4],grid[5][2],grid[5][3],grid[5][4],grid[4][3]);
  CELL #(.S_0(0)) Tr53(clk, _rst, grid[4][2],grid[4][3],grid[4][4],grid[5][2],grid[5][4],grid[6][2],grid[6][3],grid[6][4],grid[5][3]);
  CELL #(.S_0(0)) Tr63(clk, _rst, grid[5][2],grid[5][3],grid[5][4],grid[6][2],grid[6][4],grid[7][2],grid[7][3],grid[7][4],grid[6][3]);
  CELL #(.S_0(0)) Tr73(clk, _rst, grid[6][2],grid[6][3],grid[6][4],grid[7][2],grid[7][4],1'b0,1'b0,1'b0,grid[7][3]);
  CELL #(.S_0(0)) Tr04(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][3],grid[0][5],grid[1][3],grid[1][4],grid[1][5],grid[0][4]);
  CELL #(.S_0(0)) Tr14(clk, _rst, grid[0][3],grid[0][4],grid[0][5],grid[1][3],grid[1][5],grid[2][3],grid[2][4],grid[2][5],grid[1][4]);
  CELL #(.S_0(0)) Tr24(clk, _rst, grid[1][3],grid[1][4],grid[1][5],grid[2][3],grid[2][5],grid[3][3],grid[3][4],grid[3][5],grid[2][4]);
  CELL #(.S_0(0)) Tr34(clk, _rst, grid[2][3],grid[2][4],grid[2][5],grid[3][3],grid[3][5],grid[4][3],grid[4][4],grid[4][5],grid[3][4]);
  CELL #(.S_0(1)) Tr44(clk, _rst, grid[3][3],grid[3][4],grid[3][5],grid[4][3],grid[4][5],grid[5][3],grid[5][4],grid[5][5],grid[4][4]);
  CELL #(.S_0(0)) Tr54(clk, _rst, grid[4][3],grid[4][4],grid[4][5],grid[5][3],grid[5][5],grid[6][3],grid[6][4],grid[6][5],grid[5][4]);
  CELL #(.S_0(0)) Tr64(clk, _rst, grid[5][3],grid[5][4],grid[5][5],grid[6][3],grid[6][5],grid[7][3],grid[7][4],grid[7][5],grid[6][4]);
  CELL #(.S_0(0)) Tr74(clk, _rst, grid[6][3],grid[6][4],grid[6][5],grid[7][3],grid[7][5],1'b0,1'b0,1'b0,grid[7][4]);
  CELL #(.S_0(0)) Tr05(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][4],grid[0][6],grid[1][4],grid[1][5],grid[1][6],grid[0][5]);
  CELL #(.S_0(0)) Tr15(clk, _rst, grid[0][4],grid[0][5],grid[0][6],grid[1][4],grid[1][6],grid[2][4],grid[2][5],grid[2][6],grid[1][5]);
  CELL #(.S_0(0)) Tr25(clk, _rst, grid[1][4],grid[1][5],grid[1][6],grid[2][4],grid[2][6],grid[3][4],grid[3][5],grid[3][6],grid[2][5]);
  CELL #(.S_0(0)) Tr35(clk, _rst, grid[2][4],grid[2][5],grid[2][6],grid[3][4],grid[3][6],grid[4][4],grid[4][5],grid[4][6],grid[3][5]);
  CELL #(.S_0(1)) Tr45(clk, _rst, grid[3][4],grid[3][5],grid[3][6],grid[4][4],grid[4][6],grid[5][4],grid[5][5],grid[5][6],grid[4][5]);
  CELL #(.S_0(0)) Tr55(clk, _rst, grid[4][4],grid[4][5],grid[4][6],grid[5][4],grid[5][6],grid[6][4],grid[6][5],grid[6][6],grid[5][5]);
  CELL #(.S_0(0)) Tr65(clk, _rst, grid[5][4],grid[5][5],grid[5][6],grid[6][4],grid[6][6],grid[7][4],grid[7][5],grid[7][6],grid[6][5]);
  CELL #(.S_0(0)) Tr75(clk, _rst, grid[6][4],grid[6][5],grid[6][6],grid[7][4],grid[7][6],1'b0,1'b0,1'b0,grid[7][5]);
  CELL #(.S_0(0)) Tr06(clk, _rst, 1'b0, 1'b0, 1'b0,grid[0][5],grid[0][7],grid[1][5],grid[1][6],grid[1][7],grid[0][6]);
  CELL #(.S_0(0)) Tr16(clk, _rst, grid[0][5],grid[0][6],grid[0][7],grid[1][5],grid[1][7],grid[2][5],grid[2][6],grid[2][7],grid[1][6]);
  CELL #(.S_0(0)) Tr26(clk, _rst, grid[1][5],grid[1][6],grid[1][7],grid[2][5],grid[2][7],grid[3][5],grid[3][6],grid[3][7],grid[2][6]);
  CELL #(.S_0(0)) Tr36(clk, _rst, grid[2][5],grid[2][6],grid[2][7],grid[3][5],grid[3][7],grid[4][5],grid[4][6],grid[4][7],grid[3][6]);
  CELL #(.S_0(1)) Tr46(clk, _rst, grid[3][5],grid[3][6],grid[3][7],grid[4][5],grid[4][7],grid[5][5],grid[5][6],grid[5][7],grid[4][6]);
  CELL #(.S_0(0)) Tr56(clk, _rst, grid[4][5],grid[4][6],grid[4][7],grid[5][5],grid[5][7],grid[6][5],grid[6][6],grid[6][7],grid[5][6]);
  CELL #(.S_0(0)) Tr66(clk, _rst, grid[5][5],grid[5][6],grid[5][7],grid[6][5],grid[6][7],grid[7][5],grid[7][6],grid[7][7],grid[6][6]);
  CELL #(.S_0(0)) Tr76(clk, _rst, grid[6][5],grid[6][6],grid[6][7],grid[7][5],grid[7][7],1'b0,1'b0,1'b0,grid[7][6]);
  CELL #(.S_0(0)) Tr17(clk, _rst, grid[0][6],grid[0][7],1'b0,grid[1][6],1'b0,grid[2][6],grid[2][7],1'b0,grid[1][7]);
  CELL #(.S_0(0)) Tr27(clk, _rst, grid[1][6],grid[1][7],1'b0,grid[2][6],1'b0,grid[3][6],grid[3][7],1'b0,grid[2][7]);
  CELL #(.S_0(0)) Tr37(clk, _rst, grid[2][6],grid[2][7],1'b0,grid[3][6],1'b0,grid[4][6],grid[4][7],1'b0,grid[3][7]);
  CELL #(.S_0(0)) Tr47(clk, _rst, grid[3][6],grid[3][7],1'b0,grid[4][6],1'b0,grid[5][6],grid[5][7],1'b0,grid[4][7]);
  CELL #(.S_0(0)) Tr57(clk, _rst, grid[4][6],grid[4][7],1'b0,grid[5][6],1'b0,grid[6][6],grid[6][7],1'b0,grid[5][7]);
  CELL #(.S_0(0)) Tr67(clk, _rst, grid[5][6],grid[5][7],1'b0,grid[6][6],1'b0,grid[7][6],grid[7][7],1'b0,grid[6][7]);

  endmodule
