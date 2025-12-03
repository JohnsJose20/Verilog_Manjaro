// Product of Sums - Dataflow
// F = (a + d')(b + d)

module posdf(a, b, d, y);
    input a, b, d;
    output y;

    assign y = (a | ~d) & (b | d);
    
endmodule
