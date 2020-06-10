module full_adder(cout, sum, a, b, cin);
  output cout, sum;
  input a, b, cin;
  xor x0(sum, a, b, cin);
  and a1(net1, a, b);
  and a2(net2, a, cin);
  and a3(net3, b, cin);
  or n4(cout, net1, net2, net3);
endmodule