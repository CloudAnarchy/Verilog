module home_work4(z, x, y);
output z;
input y;
input x;
input a;
xor xor1(a, x, y);
and and1(z, a, x);
endmodule