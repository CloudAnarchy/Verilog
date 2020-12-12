module full_adder_st2(s, c, a, b, cin);

input a, b, cin;
output s, c;
wire N1, N2, N3;

half_adder_bh half_adder_bh1(N1, N2, a, b);
half_adder_bh half_adder_bh2(s, N3, N1, cin);
or or1(c, N2, N3);

endmodule
