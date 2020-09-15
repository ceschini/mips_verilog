`timescale 1ns / 1ps
module majorComparator(input [7:0] A, B, output [7:0] Y);
  wire [7:0] e;
  
  assign e[7] = ~ (~A[7]&&B[7] || A[7]&&~B[7]);
  assign e[6] = ~ (~A[6]&&B[6] || A[6]&&~B[6]);
  assign e[5] = ~ (~A[5]&&B[5] || A[5]&&~B[5]);
  assign e[4] = ~ (~A[4]&&B[4] || A[4]&&~B[4]);
  assign e[3] = ~ (~A[3]&&B[3] || A[3]&&~B[3]);
  assign e[2] = ~ (~A[2]&&B[2] || A[2]&&~B[2]);
  assign e[1] = ~ (~A[1]&&B[1] || A[1]&&~B[1]);
  assign e[0] = ~ (~A[0]&&B[0] || A[0]&&~B[0]);
  
  assign Y[7] = 
    	(A[7]&&~B[7]) 
    ||	(A[6]&&e[7]&&~B[6])
    ||	(A[5]&&e[7]&&e[6]&&~B[5])
    ||	(A[4]&&e[7]&&e[6]&&e[5]&&~B[4])
    ||	(A[3]&&e[7]&&e[6]&&e[5]&&e[4]&&~B[3])
    ||	(A[2]&&e[7]&&e[6]&&e[5]&&e[4]&&e[3]&&~B[2])
    ||	(A[1]&&e[7]&&e[6]&&e[5]&&e[4]&&e[3]&&e[2]&&~B[1])
    ||	(A[0]&&e[7]&&e[6]&&e[5]&&e[4]&&e[3]&&e[2]&&e[1]&&~B[0]);
	
	assign Y[6] = Y[7];
	assign Y[5] = Y[7];
	assign Y[4] = Y[7];
	assign Y[3] = Y[7];
	assign Y[2] = Y[7];
	assign Y[1] = Y[7];
	assign Y[0] = Y[7];
endmodule