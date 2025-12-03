// Sum of Products - Dataflow
// F = a'c' + b'c

module sopdf(a, b, c, y);
    input a, b, c;
    output y;

    assign y = (~a & ~c) | (~b & c);

endmodule
