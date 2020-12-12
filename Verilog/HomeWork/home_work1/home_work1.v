module home_work1 (z, x, y);

output z;
input x;
input y;

assign z = (x ^ y) & x;

endmodule