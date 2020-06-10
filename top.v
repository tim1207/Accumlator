module top(hex1,hex0,btn,clk,reset);
output [6:0] hex1, hex0;
input btn, clk, reset;
wire [3:0] counter_out, hex1_in, hex0_in;
wire [5:0] alu_out, ain1, ain2, A_q;
wire clk_out;
//assign hex0_in =A_q % 10;
//assign hexl_in - A_g / 10;
counter0to10 COUNTER(
      .counter_out (counter_out),
      .btn (btn) ,
      .clk(clk_out),
      .reset (reset)
 );
alu ALU(
  .alu_out(alu_out),
  .ain1 (A_q),
  .ain2 ({2'b0, counter_out})
);
accumulator A(
  .q(alu_out),
  .d(A_q),
  .clk(clk_out),
  .reset(reset)
);

SevenSegmentDecoder SSD1(
  .seg_out (hex1),
  .seg_in ({2'b0,A_q[5:4]})
);
SevenSegmentDecoder SSD2(
  .seg_out (hex0) ,
  .seg_in(A_q[3:0])
);
//freq_div_23 _FD23_(.clk_out(clk_out),.clk (clk),.reset (reset)); // Quartus Only
assign clk_out = clk; // Modelsim Only
endmodule