`timescale 1ns / 1ps
module ula(input A, B, op, 
            output Z, Y0, Y1, Y2);
   reg Z;
   logic_and logand (A, B, Y0);
   logic_or logor (A, B, Y1);
   logic_not lognot (A, Y2);

  always @ (op, A, B)
  begin
    case (op)
     0 : Z = logand.Y0;
     1 : Z = logor.Y1;
     // 8'b00000010 : Z = lognot.Y2;
     default : Z = 8'bx;
    endcase
  end
endmodule

module logic_and(input A, B, output Y0);
  	assign Y0 = A & B;
endmodule

module logic_or(input A, B, output Y1);
  	assign Y1 = A | B;
endmodule

module logic_not(input A, output Y2);
  assign Y2 = ~A;
endmodule