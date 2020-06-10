module test_alu;
  
  
  reg [5:0]ain1,ain2;
  wire [5:0]alu_out;
  alu a0(alu_out, ain1 ,ain2 );
  
  initial begin
    ain1=0;ain2=0;
    #10 ain1=0;ain2=0;
    #20 ain1=1;ain2=1;
    #30 ain1=6;ain2=6;   
    #40 ain1=5;ain2=5;
    #50 ain1=10;ain2=10;
    #500 $stop;
  end
endmodule