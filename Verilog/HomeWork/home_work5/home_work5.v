`include "full_adder.v"

module home_work5(output wire [3:0] Sum, output wire Cout,
input wire [3:0] a, b);

wire c1, c2, c3;

full_adder U0(.Sum(Sum[0]), .Cout(c1), .a(a[0]), .b(b[0]), .Cin(1'b0));
full_adder U1(.Sum(Sum[1]), .Cout(c2), .a(a[1]), .b(b[1]), .Cin(c1));
full_adder U2(.Sum(Sum[2]), .Cout(c3), .a(a[2]), .b(b[2]), .Cin(c2));
full_adder U3(.Sum(Sum[3]), .Cout(Cout), .a(a[3]), .b(b[3]), .Cin(c3));
endmodule