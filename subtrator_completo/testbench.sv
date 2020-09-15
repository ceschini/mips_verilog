module testbench1();
reg X, Y, Z;
  SubtracaoSimples abc (D, B, X, Y, Z);

	initial begin
  
	$dumpfile("dump.vcd");
	$dumpvars(1);
	
    X = 1; Y = 1; Z = 0; #10;
      $display(D);
      $display(B);
    X = 0; Y = 0; Z = 0; #10;
      $display(D);
      $display(B);
    X = 1; Y = 0; Z = 0; #10;
      $display(D);
      $display(B);
    X = 0; Y = 1; Z = 0; #10;
      $display(D);
      $display(B);      
      
	end
endmodule
