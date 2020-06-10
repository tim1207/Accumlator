module test_top;
  reg  btn,clk,reset;
  wire [6:0] hex1,hex0;
  top t0(hex1,hex0,btn,clk,reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; btn=1;
    #10 reset = 1;
    #20 btn=0;
    #500 $stop;
  end
endmodule