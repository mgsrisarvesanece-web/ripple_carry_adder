`timescale 1ns / 1ps

module rca_tb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg c;              // Carry in

    // Outputs
    wire [3:0] sum;
    wire carry;         // Carry out

    // Instantiate the Ripple Carry Adder
    ripple_carry_adder uut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        
        $display("Time |  A   B   Cin  |  Sum  Cout");
        $display("-----------------------------------");

        // Test Case 1
        a = 4'b0000; b = 4'b0000; c = 0;
        #10;
        $display("%4t | %b %b   %b   | %b   %b", $time, a, b, c, sum, carry);

        // Test Case 2
        a = 4'b0011; b = 4'b0101; c = 0;
        #10;
        $display("%4t | %b %b   %b   | %b   %b", $time, a, b, c, sum, carry);

        // Test Case 3
        a = 4'b1111; b = 4'b0001; c = 0;
        #10;
        $display("%4t | %b %b   %b   | %b   %b", $time, a, b, c, sum, carry);

        // Test Case 4
        a = 4'b1010; b = 4'b0101; c = 1;
        #10;
        $display("%4t | %b %b   %b   | %b   %b", $time, a, b, c, sum, carry);

        // Test Case 5
        a = 4'b1111; b = 4'b1111; c = 1;
        #10;
        $display("%4t | %b %b   %b   | %b   %b", $time, a, b, c, sum, carry);

        $finish;
    end

endmodule
