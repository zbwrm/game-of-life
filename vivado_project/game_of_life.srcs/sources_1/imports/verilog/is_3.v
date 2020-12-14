`timescale 1ns / 1ps

module IS_3(
  input  Tl,T,Tr, L, R, Bl, B,Br, // Input Operands
  output Checked); 

  parameter DLY = 5;
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
  wire c11,c12,c13,c14,c15,c16,c17,c18;
  wire c19,c20,c21,c22,c23,c24,c25,c26;
  wire c27, c28,c29,c30,c31,c32,c33,c34;
  wire c35,c36,c37,c38,c39,c40,c41,c42,c43;
  wire c44, c45,c46,c47,c48,c49,c50,c51,c52;
  wire c53,c54,c55,c56;

  and #DLY G1(c1,Tl,T,Tr);
  and #DLY G2(c2,Tl,T,L);
  and #DLY G3(c3,Tl,T,R);
  and #DLY G4(c4,Tl,T,Bl);
  and #DLY G5(c5,Tl,T,B);
  and #DLY G6(c6,Tl,T,Br);
  and #DLY G7(c7,Tl,Tr,L);
  and #DLY G8(c8,Tl,Tr,R);
  and #DLY G9(c9,Tl,Tr,Bl);
  and #DLY G10(c10,Tl,Tr,B);
  and #DLY G11(c11,Tl,Tr,Br);
  and #DLY G12(c12,Tl,L,R);
  and #DLY G13(c13,Tl,L,Bl);
  and #DLY G14(c14,Tl,L,B);
  and #DLY G15(c15,Tl,L,Br);
  and #DLY G16(c16,Tl,R,Bl);
  and #DLY G17(c17,Tl,R,B);
  and #DLY G18(c18,Tl,R,Br);
  and #DLY G19(c19,Tl,Bl,B);
  and #DLY G20(c20,Tl,Bl,Br);
  and #DLY G21(c21,Tl,B,Br);
  and #DLY G22(c22,T,Tr,L);
  and #DLY G23(c23,T,Tr,R);
  and #DLY G24(c24,T,Tr,Bl);
  and #DLY G25(c25,T,Tr,B);
  and #DLY G26(c26,T,Tr,Br);
  and #DLY G27(c27,T,L,R);
  and #DLY G28(c28,T,L,Bl);
  and #DLY G29(c29,T,L,B);
  and #DLY G30(c30,T,L,Br);
  and #DLY G31(c31,T,R,Bl);
  and #DLY G32(c32,T,R,B);
  and #DLY G33(c33,T,R,Br);
  and #DLY G34(c34,T,Bl,B);
  and #DLY G35(c35,T,Bl,Br);
  and #DLY G36(c36,T,B,Br);
  and #DLY G37(c37,Tr,L,R);
  and #DLY G38(c38,Tr,L,Bl);
  and #DLY G39(c39,Tr,L,B);
  and #DLY G40(c40,Tr,L,Br);
  and #DLY G41(c41,Tr,R,Bl);
  and #DLY G42(c42,Tr,R,B);
  and #DLY G43(c43,Tr,R,Br);
  and #DLY G44(c44,Tr,Bl,B);
  and #DLY G45(c45,Tr,Bl,Br);
  and #DLY G46(c46,Tr,B,Br);
  and #DLY G47(c47,L,R,Bl);
  and #DLY G48(c48,L,R,B);
  and #DLY G49(c49,L,R,Br);
  and #DLY G50(c50,L,Bl,B);
  and #DLY G51(c51,L,Bl,Br);
  and #DLY G52(c52,L,B,Br);
  and #DLY G53(c53,R,Bl,B);
  and #DLY G54(c54,R,Bl,Br);
  and #DLY G55(c55,R,B,Br);
  and #DLY G56(c56,Bl,B,Br);
  
  xor #DLY big_xor(Checked,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,
  c19,c20,c21,c22,c23,c24,c25,c26, c27, c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,
  c39,c40,c41,c42,c43,c44, c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56);

endmodule
