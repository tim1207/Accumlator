module test_accumulator;
  wire [5:0] d;
  reg reset,clk;
  reg [5:0] q;
  accumulator a0(d,q,clk,reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; q=0;
    #10 reset = 1;
    #20 q = 1;
    #30 q = 2;
    #40 q = 5;
    #50 q = 10;
    #60 q = 15;
    #500 $stop;
  end
endmodule 