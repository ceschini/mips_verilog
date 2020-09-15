module testbench1();
  reg [7:0 ] A, B;
  majorComparator mc (A, B, Y[7:0]);

	initial begin
  
	$dumpfile("dump.vcd");
	$dumpvars(1);
	
    A = 8'b00000000; 
    B = 8'b00000000; #10;
	$display(Y);
	
    A = 8'b00000000; 
    B = 8'b00000001; #10;
	$display(Y);	
      
    A = 8'b00000100; 
    B = 8'b00000011; #10;
	$display(Y);	
      
    A = 8'b00000011; 
    B = 8'b00000100; #10;
	$display(Y);	
      
    A = 8'b01000000; 
    B = 8'b00110101; #10;
	$display(Y);	
      
    A = 8'b00000101; 
    B = 8'b00001000; #10;
	$display(Y);
      
    A = 8'b00100000; 
    B = 8'b00010111; #10;
	$display(Y);
      
    A = 8'b11001010; 
    B = 8'b01111011; #10;
	$display(Y);
      
    A = 8'b11001010; 
    B = 8'b11111011; #10;
	$display(Y);
      
      #100;
	end
endmodule