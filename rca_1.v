// 4-bit Ripple Carry Adder
module rca_1(
    input  [3:0] a,
    input  [3:0] b,
    input  c,              // Initial carry in
    output [3:0] sum,
    output carry           // Final carry out
);

wire c1, c2, c3;          // Internal carries

// Instantiate 4 Full Adders

full_adder_a FA0 (
    .a(a[0]),
    .b(b[0]),
    .c(c),
    .sum(sum[0]),
    .carry(c1)
);

full_adder_a FA1 (
    .a(a[1]),
    .b(b[1]),
    .c(c1),
    .sum(sum[1]),
    .carry(c2)
);

full_adder_a FA2 (
    .a(a[2]),
    .b(b[2]),
    .c(c2),
    .sum(sum[2]),
    .carry(c3)
);

full_adder_a FA3 (
    .a(a[3]),
    .b(b[3]),
    .c(c3),
    .sum(sum[3]),
    .carry(carry)
);

endmodule
