`timescale 1 ns / 1 ns
`include "home_work4.v"

module home_work1_tb;

reg x, y;
wire z;

home_work4 hw4(z, x, y);

initial begin
    $dumpfile("home_work1.vcd");
    $dumpvars;
    x = 1;
    y = 1;
    #20;
    x = 0;
    y = 0;
    #20;
    x = 0;
    y = 1;
    #20;
    x = 1;
    y = 0;
    #20;
end

endmodule