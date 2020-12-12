`timescale 1 ns / 1 ns
`include "home_work5.v"

module home_work5_tb;

reg [3:0] a, b;
wire [3:0] sum;
wire cout;

home_work5 ripple_carry(.Sum(sum), .Cout(cout), .a(a), .b(b));

initial begin
  $dumpfile("dump.vcd");
  $dumpvars;

  a = 4'b0000; b = 4'b1010;
  #10; a = 4'b0000; b = 4'b1010;
  #10; a = 4'b0000; b = 4'b1010;
  #10; a = 4'b0001; b = 4'b1110;
  #10; a = 4'b1100; b = 4'b0011;
  #10; a = 4'b0100; b = 4'b1011;
end

endmodule