`timescale 1 ns / 1 ns

module hw_2;
  
  reg x, y;
  wire temp;
  wire Result;

  assign temp = (x ^ y);
  not not1 (Result, temp);
  

  initial begin
    $dumpfile("home_work2.vcd");
    $dumpvars;
          x = 1'b0; y = 1'b1;
    #200; x = 1'b0; y = 1'b0;
    #200; x = 1'b1; y = 1'b0;
    #200; x = 1'b1; y = 1'b1;
    #200; x = 1'b1; y = 1'b1;
  end

endmodule