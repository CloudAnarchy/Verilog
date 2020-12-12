module full_adder_st(a, b, cin, s, c);

input a, b, cin;
output s, c;

wire N1, N2, N3, N4;

// s = a ^ b ^ cin
xor xor1(N1, a, b);
xor xor2(s, N1, cin);

// c = a & b 
and and1(N2, a, b);
and and2(N3, b, cin);
and and3(N4, cin, a);
or or1(c, N2, N3, N4);

endmodule