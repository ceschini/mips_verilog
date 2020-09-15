`timescale 1ns / 1ps
module mux83 (y, sel, a, b, c, d, e, f, g, h);
  
  // entradas de 8 bit
  input [7:0] a, b, c, d, e, f, g, h;
  // seletor de 3 bits
  input [2:0] sel;
  // saida de 8 bit
  output [7:0] y;
  
  reg [7:0] y;
  
  // escutando as entradas
  always @ (a or b or c or d or e or f or g or h or sel)
  begin
    case (sel)
    3'b000 : y = a;
    3'b001 : y = b;
    3'b010 : y = c;
    3'b011 : y = d;
    3'b100 : y = e;
    3'b101 : y = f;
    3'b110 : y = g;
    3'b111 : y = h;
    default : y = 8'bx; // se nao for nenhuma entrada, indefinido.
    endcase
  end
endmodule