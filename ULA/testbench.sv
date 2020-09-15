module testbench1();
	reg A, B, op;
  	
	wire Z, Y0, Y1, Y2;
  	ula alu (A, B, op, Z, Y0, Y1, Y2);

	initial begin
  
	$dumpfile("dump.vcd");
	$dumpvars(1);
	
    op = 0;
	A = 0; B = 0; #10;
	$display(Z);

     A = 0; B = 1; #10;
	 $display(Z);

	 A = 1; B = 0; #10;  
	 $display(Z);

     A = 1; B = 1; #10;
	 $display(Z);
	op = 1;
	A = 0; B = 0; #10;
	$display(Z);

     A = 0; B = 1; #10;
	 $display(Z);

	 A = 1; B = 0; #10;  
	 $display(Z);

     A = 1; B = 1; #10;
	 $display(Z);
      
	end
endmodule