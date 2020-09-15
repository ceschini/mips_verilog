module SubtracaoSimples(output D, B, input X, Y, Z);
assign D = X ^ Y ^ Z;
assign B = ~X & (Y^Z) | Y & Z;
endmodule

/*module SubtracaoCompleta(output [8:0] D, output B, input [8:0] X, Y, input Z);
  assign i = 0;
  assign D = 11111111;
  always @(*)
  begin
    for(i=1; i < 9; i = i +1)
    begin
      assign D[1] = X[1] ^ Y[1] ^ Z;
      assign B = ~X[1] & (Y[1]^Z) | Y[1] & Z;
    end
  end  
endmodule*/