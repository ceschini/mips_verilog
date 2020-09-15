`timescale 1ns / 1ps
module findS(input A, B, Cin, output Y);
  wire first, second, third, fourth;
  
  assign first = A & ~B & ~Cin;
  assign second = ~A & B & ~Cin;
  assign third = ~A & ~B & Cin;  
  assign fourth = A & B & Cin;
  
  assign Y = first | second | third | fourth;
endmodule

module findCout(input A, B, Cin, output Y);
  wire first, second, third;
  
  assign first = A & B;
  assign second = B & Cin;
  assign third = A & Cin;
  
  assign Y = first | second | third;
endmodule

module Soma1bitCin(input A, B, Cin, output S, Cout);
  findS find1(A, B, Cin, S);
  findCout find2(A, B, Cin, Cout);

endmodule

module SomadorCompleto8b(input [7:0] A, B, output [7:0] S, output Cout);  
  wire temp0, temp1, temp2, temp3, temp4, temp5, temp6;
  Soma1bitCin makeSum0(A[0], B[0], 0,    S[0], temp0);
  Soma1bitCin makeSum1(A[1], B[1], temp0, S[1], temp1);
  Soma1bitCin makeSum2(A[2], B[2], temp1, S[2], temp2);
  Soma1bitCin makeSum3(A[3], B[3], temp2, S[3], temp3);
  Soma1bitCin makeSum4(A[4], B[4], temp3, S[4], temp4);
  Soma1bitCin makeSum5(A[5], B[5], temp4, S[5], temp5);
  Soma1bitCin makeSum6(A[6], B[6], temp5, S[6], temp6);
  Soma1bitCin makeSum7(A[7], B[7], temp6, S[7], Cout);
endmodule
  