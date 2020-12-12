module full_adder_st3(ss, cc, aa, bb, cin);

input aa, bb, cin;
output ss, cc;

wire N1, N2, N3;

half_adder_bh half_adder_bh1(.s(N1), .c(N2), .a(aa), .b(bb));
half_adder_bh half_adder_bh1(.c(N3), .s(ss), .b(cin), .a(N1));
or or1(cc, N2, N3);

endmodule;