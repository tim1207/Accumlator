 module alu (alu_out, ain1 ,ain2 );
 input[5:0] ain1,ain2;
 output[5:0] alu_out;
 
  full_adder f0(cout0, alu_out[0], ain1[0], ain2[0],1'b0);
  full_adder f1(cout1, alu_out[1], ain1[1], ain2[1],cout0);
  full_adder f2(cout2, alu_out[2], ain1[2], ain2[2],cout1);
  full_adder f3(cout3, alu_out[3], ain1[3], ain2[3],cout2);
  full_adder f4(cout4, alu_out[4], ain1[4], ain2[4],cout3);
  full_adder f5(cout5, alu_out[5], ain1[5], ain2[5],cout4);
  

 endmodule