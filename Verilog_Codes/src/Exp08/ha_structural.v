// Half Adder - Structural Modeling
module ha_structural(a, b, sum, carry);
    input a, b;
    output sum, carry;
    xor (sum, a, b);
    and (carry, a, b);
endmodule
