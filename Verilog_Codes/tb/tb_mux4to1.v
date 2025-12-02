module tb_mux4to1;
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    mux4to1 uut(I0, I1, I2, I3, S0, S1, Y);

    initial begin
        $dumpfile("sim/mux4to1.vcd");
        $dumpvars(0, tb_mux4to1);

        I0=0; I1=1; I2=0; I3=1;

        S1=0; S0=0; #10;
        S1=0; S0=1; #10;
        S1=1; S0=0; #10;
        S1=1; S0=1; #10;

        $finish;
    end
endmodule
