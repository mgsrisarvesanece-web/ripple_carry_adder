// Full Adder Module
module full_adder_a (
    input  a,
    input  b,
    input  c,        // Carry in
    output sum,
    output carry
);

assign sum   = a ^ b ^ c;
assign carry = (a & b) | (b & c) | (a & c);

endmodule
