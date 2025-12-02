module tb_possf;
    reg a, b, d;
    wire y;

    possf uut(a, b, d, y);

    initial begin
        $dumpfile("sim/wave_possf.vcd");
        $dumpvars(0, tb_possf);

        // All combinations of a, b, d
        a=0; b=0; d=0; #10;
        a=0; b=0; d=1; #10;
        a=0; b=1; d=0; #10;
        a=0; b=1; d=1; #10;
        a=1; b=0; d=0; #10;
        a=1; b=0; d=1; #10;
        a=1; b=1; d=0; #10;
        a=1; b=1; d=1; #10;

        $finish;
    end
endmodule
