// 1:4 Demultiplexer - Structural Modeling
module demux1to4(D, S0, S1, Y0, Y1, Y2, Y3);
    input D;
    input S0, S1;
    output Y0, Y1, Y2, Y3;

    wire nS0, nS1;

    not(nS0, S0);
    not(nS1, S1);

    and(Y0, D, nS1, nS0);
    and(Y1, D, nS1, S0);
    and(Y2, D, S1, nS0);
    and(Y3, D, S1, S0);
endmodule
