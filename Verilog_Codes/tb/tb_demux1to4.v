module tb_demux1to4;
    reg D;
    reg S0, S1;
    wire Y0, Y1, Y2, Y3;

    demux1to4 uut(D, S0, S1, Y0, Y1, Y2, Y3);

    initial begin
        $dumpfile("sim/demux1to4.vcd");
        $dumpvars(0, tb_demux1to4);

        D=1;

        S1=0; S0=0; #10;
        S1=0; S0=1; #10;
        S1=1; S0=0; #10;
        S1=1; S0=1; #10;

        $finish;
    end
endmodule
