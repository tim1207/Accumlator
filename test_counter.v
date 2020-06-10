module test_counter;
  wire [3:0] counter_out;
  reg btn ,clk, reset;
  counter0to10 c0(counter_out ,btn ,clk, reset );
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; btn=0;
    #10 reset = 1;
    #20 btn = 1;
    #250 btn=0;
    #500 $stop;
  end
endmodule 