module tb_dfgates;
    reg a, b;
    wire y1, y2, y3, y4, y5, y6;

    dfgates uut(a, b, y1, y2, y3, y4, y5, y6);

    initial begin
        $dumpfile("sim/wave.vcd");
        $dumpvars(0, tb_dfgates);

        // Try all combinations of a and b
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
