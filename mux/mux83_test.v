module mux83_test;

// entradas
reg [2:0] sel;
reg [7:0] a;
reg [7:0] b;
reg [7:0] c;
reg [7:0] d;
reg [7:0] e;
reg [7:0] f;
reg [7:0] g;
reg [7:0] h;

// saida
wire [7:0] y;

// instancia dispositivo sob teste
mux83 dut(y, sel, a, b, c, d, e, f, g, h);

initial begin
    
    $dumpfile("dump.vcd");
	$dumpvars(1);
    

    // inicializa entradas
    sel = 0;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    f = 0;
    g = 0;
    h = 0;

    // 100 ns para o reset global terminar
    //#100;

    // atribui valores em decimal para entradas
    a = 8'd7;
    b = 8'd5;
    c = 8'd3;
    d = 8'd2;
    e = 8'd5;
    f = 8'd3;
    g = 8'd6;
    h = 8'd1;

    // atribuindo de 0 a 8 no seletor
    sel = 3'd0;
  	#10;
    sel = 3'd1;
    #10;
    sel = 3'd2;
    #10;
    sel = 3'd3;
    #10;
    sel = 3'd4;
    #10;
    sel = 3'd5;
    #10;
    sel = 3'd6;
    #10;
    sel = 3'd7;
    #10;
end
endmodule