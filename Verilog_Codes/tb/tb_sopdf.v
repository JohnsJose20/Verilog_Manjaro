module tb_sopdf;
    reg a, b, c;
    wire y;

    sopdf uut(a, b, c, y);

    initial begin
        $dumpfile("sim/wave_sopdf.vcd");
        $dumpvars(0, tb_sopdf);

        // Try all 8 combinations
        a=0; b=0; c=0; #10;
        a=0; b=0; c=1; #10;
        a=0; b=1; c=0; #10;
        a=0; b=1; c=1; #10;
        a=1; b=0; c=0; #10;
        a=1; b=0; c=1; #10;
        a=1; b=1; c=0; #10;
        a=1; b=1; c=1; #10;

        $finish;
    end
endmodule
