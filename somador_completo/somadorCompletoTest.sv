module testbench1();
  reg [7:0]  A, B;
  wire [7:0]S;
  	SomadorCompleto8b abc(A, B, S, Cout);
	
	initial begin
  
	$dumpfile("dump.vcd");
	$dumpvars(1);
        
	A = 8'b0000_0000; B = 8'b0000_0000; #10;
	  $display("S: ", S, " - Cout: ", Cout);
      
    A = 8'b1111_1111; B = 8'b0000_0000; #10;
      $display("S: ", S, " - Cout: ", Cout);
    
    A = 8'b1111_1111; B = 8'b0000_0001; #10;
      $display("S: ", S, " - Cout: ", Cout);
      
      
    A = 8'b1111_1111; B = 8'b0001_0000; #10;
      $display("S: ", S, " - Cout: ", Cout);
	end
endmodule