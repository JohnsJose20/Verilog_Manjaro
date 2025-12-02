// Sum of Products - Structural
// F = a'c' + b'c

module sopsf(a, b, c, y);
    input a, b, c;
    output y;

    wire na, nb, nc;   // complements
    wire p1, p2;       // product terms

    not (na, a);
    not (nb, b);
    not (nc, c);

    and (p1, na, nc);  // a'c'
    and (p2, nb, c);   // b'c

    or  (y, p1, p2);   // a'c' + b'c
    
endmodule
