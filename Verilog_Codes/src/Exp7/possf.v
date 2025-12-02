// Product of Sums - Structural
// F = (a + d')(b + d)

module possf(a, b, d, y);
    input a, b, d;
    output y;

    wire nd;
    wire s1, s2;   // sum terms

    not (nd, d);

    or  (s1, a, nd);  // (a + d')
    or  (s2, b, d);   // (b + d)

    and (y, s1, s2);  // (a + d')(b + d)

endmodule
