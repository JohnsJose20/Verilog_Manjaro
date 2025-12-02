module dfgates(a, b, y1, y2, y3, y4, y5, y6);
    input a, b;
    output y1, y2, y3, y4, y5, y6;

    assign y1 = a | b;      // OR
    assign y2 = a & b;      // AND
    assign y3 = ~a;         // NOT
    assign y4 = a ^ b;      // XOR
    assign y5 = ~(a & b);   // NAND
    assign y6 = ~(a ^ b);   // XNOR
    
endmodule
