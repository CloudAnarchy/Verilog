module half_adder(s, c, a, b);

input a, b;
output s, c;

assign s = a ^ b; // ^ == XOR
assign c = a & b;

endmodule