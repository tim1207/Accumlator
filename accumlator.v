module accumulator(d,q,clk,reset);
input clk,reset;
output [5:0] d; 
input [5:0] q;
  df d0(d[0],q[0], clk, reset);
  df d1(d[1],q[1], clk, reset);
  df d2(d[2],q[2], clk, reset);
  df d3(d[3],q[3], clk, reset); 
  df d4(d[4],q[4], clk, reset);
  df d5(d[5],q[5], clk, reset);
endmodule
  
  
  
 