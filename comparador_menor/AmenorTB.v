`timescale 1ns / 1ps

module comparator_tb;

 // Inputs

 reg [7:0] A;

 reg [7:0] B;

  comparator utt (A, B, Amenor);

 initial begin

   $dumpfile("dump.vcd");
   $dumpvars(1);

  // Initialize Inputs

  A = 8'b0;

  B = 8'b0;

  // flush

  #100;


  // Test start

  A = 8'b11111111;

  B = 8'b00000000;

  #10;

  $display(Amenor);

  A = 8'b10101111;

  B = 8'b11111111;

  #10;

  $display(Amenor);

  A = 8'b10000000;

  B = 8'b01111111;

  #10;

  $display(Amenor);

  A = 8'b00000000;

  B = 8'b00000001;

  #10;

  $display(Amenor);

  A = 8'b11111101;

  B = 8'b11111111;

  #10;

  $display(Amenor);
   
  A = 8'b11011111;

  B = 8'b11110111;

  #10;

  $display(Amenor);
   
  A = 8'b01001111;

  B = 8'b00110111;

  #10;

  $display(Amenor);

 end

endmodule
