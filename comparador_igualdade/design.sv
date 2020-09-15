`timescale 1ns / 1ps

module comparador_1bit (ig, A, B, HAB);
input A, B, HAB;
output ig;
assign ig = HAB & (A~^B);
endmodule

module comparador_8bit(igual, A, B);
  input [7:0] A, B; 
output igual;
  wire [7:0] aux_ig; 
  comparador_1bit BL7(aux_ig[7], A[7], B[7],1);
  comparador_1bit BL6(aux_ig[6], A[6], B[6],aux_ig[7]);
  comparador_1bit BL5(aux_ig[5], A[5], B[5],aux_ig[6]);
  comparador_1bit BL4(aux_ig[4], A[4], B[4],aux_ig[5]);
  comparador_1bit BL3(aux_ig[3], A[3], B[3],aux_ig[4]);
  comparador_1bit BL2(aux_ig[2], A[2], B[2],aux_ig[3]);
  comparador_1bit BL1(aux_ig[1], A[1], B[1],aux_ig[2]);
  comparador_1bit BL0(aux_ig[0], A[0], B[0],aux_ig[1]);
assign igual = aux_ig[0];
endmodule