//`timescale 1 ns / 1 ns;
`include "home_work3.v"

module home_work3_tb;

reg x, y;
wire z;

home_work3 hw3(z, x, y);

initial begin
    $dumpfile("home_work3.vcd");
    $dumpvars;
    x = 0;
    y = 1;
end


endmodule