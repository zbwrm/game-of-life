`timescale 1ns / 1ps

module IS_2(
  input  Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Checked); 

  parameter DLY = 5;
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
  wire c11,c12,c13,c14,c15,c16,c17,c18;
  wire c19,c20,c21,c22,c23,c24,c25,c26;
  wire c27, c28;

  and #DLY G1(c1,Tl,T);

  and #DLY G2(c2,Tl,Tr);
  and #DLY G3(c3,Tl,L);
  and #DLY G4(c4,Tl,R);
  and #DLY G5(c5,Tl,Bl);
  and #DLY G6(c6,Tl,B);
  and #DLY G7(c7,Tl,Br);
  and #DLY G8(c8,T,Tr);
  and #DLY G9(c9,T,L);
  and #DLY G10(c10,T,R);
  and #DLY G11(c11,T,Bl);
  and #DLY G12(c12,T,B);
  and #DLY G13(c13,T,Br);
  and #DLY G14(c14,Tr,L);
  and #DLY G15(c15,Tr,R);
  and #DLY G16(c16,Tr,Bl);
  and #DLY G17(c17,Tr,B);
  and #DLY G18(c18,Tr,Br);
  and #DLY G19(c19,L,R);
  and #DLY G20(c20,L,Bl);
  and #DLY G21(c21,L,B);
  and #DLY G22(c22,L,Br);
  and #DLY G23(c23,R,Bl);
  and #DLY G24(c24,R,B);
  and #DLY G25(c25,R,Br);
  and #DLY G26(c26,Bl,B);
  and #DLY G27(c27,Bl,Br);
  and #DLY G28(c28,B,Br);
  
  xor #DLY G29(Checked, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,
  c19,c20,c21,c22,c23,c24,c25,c26, c27, c28);

endmodule
