`timescale 1 ns / 100 ps;

module full_adder_bh_tb;

reg a, b, cin;
wire s, c;

full_adder_bh FA1(s, c, a, b, cin);

// runs ones, cannot synth so its only for testing
initial begin
    $monitor ("time = %d\ta = %b\t b = %b\t cin = %b\t s = %b\t c = %b", $time, a, b, cin, s, c);
    a = 0;
    b = 0;
    cin = 0;
    #10; a = 1;
    #10; b = 1;
    #10; cin = 1;
    #10; $stop;
end
endmodule