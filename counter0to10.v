module counter0to10 (counter_out ,btn ,clk,reset );
 
  wire[3:0] d;
  input clk, reset,btn;
  output[3:0] counter_out;
 
  
  assign d[3] =   (counter_out[3] & ~counter_out[1]) |
                  (counter_out[0] & counter_out[2] & counter_out[1]);
  assign d[2] =   (~counter_out[1] & counter_out[2]) | 
                  (counter_out[2] & ~counter_out[0]) | 
                  (counter_out[0] & ~counter_out[2] & counter_out[1]) ;
  assign d[1] =  (~counter_out[0] & ~counter_out[3] & counter_out[1]) | 
                 (counter_out[0] & ~counter_out[1]);
  assign d[0] =  (~counter_out[0] & ~counter_out[3] &counter_out[1]) | 
               	 (~counter_out[0] & counter_out[2]) | 
                 (~counter_out[0] & counter_out[3] & ~counter_out[1]) | 
                 (~counter_out[0] & ~btn & ~counter_out[3]);
  
  df d0(counter_out[0], d[0], clk, reset);
  df d1(counter_out[1], d[1], clk, reset);
  df d2(counter_out[2], d[2], clk, reset);
  df d3(counter_out[3], d[3], clk, reset);
endmodule