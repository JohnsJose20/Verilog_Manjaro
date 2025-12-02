module sfgates(a, b, y1, y2, y3, y4, y5, y6);
    input a, b;
    output y1, y2, y3, y4, y5, y6;

    // OR gate
    or (y1, a, b);

    // AND gate
    and (y2, a, b);

    // NOT gate
    not (y3, a);

    // XOR gate
    xor (y4, a, b);

    // NAND gate
    nand (y5, a, b);

    // XNOR gate
    xnor (y6, a, b);

endmodule
