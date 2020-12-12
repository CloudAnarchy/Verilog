module half_adder(output wire Sum, Cout, input wire a, b);
    xor U0 (Sum, a, b);
    and U1 (Cout, a, b);
endmodule