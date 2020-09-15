module testbench1();
  reg [7:0] A, B;
  wire igual; 

  comparador_8bit teste1(igual, A, B);

  initial begin
    
    $dumpfile("dump.vcd");
	$dumpvars(1);
    
    // MANUAL
    A = 8'b00000100; B = 8'b00000100; #10;
    $display("Resultado = %b", igual);
    
    A = 8'b00010100; B = 8'b00100100; #10;
    $display("Resultado = %b", igual);
    
    A = 8'b00000100; B = 8'b00000100; #10;
    $display("Resultado = %b", igual);
    
    A = 8'b10000100; B = 8'b01000100; #10;
    $display("Resultado = %b", igual);
    
    A = 8'b00000100; B = 8'b00000100; #10;
    $display("Resultado = %b", igual);

    /*RANDOMICO
    A = $random;
    B = $random;
    #10;
    $display("Para A = %b e B = %b \no é Resultado = %b", A, B, igual);*/

end
endmodule