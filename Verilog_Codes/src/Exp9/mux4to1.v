// 4:1 Multiplexer - Structural Modeling
module mux4to1(I0, I1, I2, I3, S0, S1, Y);
    input I0, I1, I2, I3;
    input S0, S1;
    output Y;

    wire nS0, nS1;
    wire w0, w1, w2, w3;

    not(nS0, S0);
    not(nS1, S1);

    and(w0, I0, nS1, nS0);
    and(w1, I1, nS1, S0);
    and(w2, I2, S1, nS0);
    and(w3, I3, S1, S0);

    or(Y, w0, w1, w2, w3);
endmodule
