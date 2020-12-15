`timescale 1ns / 1ps

module IS_2(
  input  Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Checked); 

  parameter DLY = 1;
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
  wire c11,c12,c13,c14,c15,c16,c17,c18;
  wire c19,c20,c21,c22,c23,c24,c25,c26;
  wire c27, c28;

  wire xor1, xor2, xor3;
  wire xor4, xor5, xor6;
  wire xor7, xor8, xor9;
  wire xor10, xor11, xor12;
  wire xor13, xor14, xor15;
  wire xor16, xor17, xor18;
  wire xor19, xor20, xor21;
  wire xor22, xor23, xor24;
  wire xor25, xor26, xor27;
  
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
  
  xor #DLY check1(xor1, c1, c2);
  xor #DLY check2(xor2, c3, xor1);
  xor #DLY check3(xor3, c4, xor2);
  xor #DLY check4(xor4, c5, xor3);
  xor #DLY check5(xor5, c6, xor4);
  xor #DLY check6(xor6, c7, xor5);
  xor #DLY check7(xor7, c8, xor6);
  xor #DLY check8(xor8, c9, xor7);
  xor #DLY check9(xor9, c10, xor8);
  xor #DLY check10(xor10, c11, xor9);
  xor #DLY check11(xor11, c12, xor10);
  xor #DLY check12(xor12, c13, xor11);
  xor #DLY check13(xor13, c14, xor12);
  xor #DLY check14(xor14, c15, xor13);
  xor #DLY check15(xor15, c16, xor14);
  xor #DLY check16(xor16, c17, xor15);
  xor #DLY check17(xor17, c18, xor16);
  xor #DLY check18(xor18, c19, xor17);
  xor #DLY check19(xor19, c20, xor18);
  xor #DLY check20(xor20, c21, xor19);
  xor #DLY check21(xor21, c22, xor20);
  xor #DLY check22(xor22, c23, xor21);
  xor #DLY check23(xor23, c24, xor22);
  xor #DLY check24(xor24, c25, xor23);
  xor #DLY check25(xor25, c26, xor24);
  xor #DLY check26(xor26, c27, xor25);
  xor #DLY check27(xor27, c28, xor26);
  xor #DLY check28(Checked, 1'b1, xor27);
endmodule
