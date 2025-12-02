// Testbench for D Flip-Flop
module tb_d_ff;
    reg clk, reset, D;
    wire Q, Qbar;

    d_ff uut(clk, reset, D, Q, Qbar);

    initial begin clk=0; forever #5 clk=~clk; end

    initial begin
        $dumpfile("sim/d_ff.vcd");
        $dumpvars(0, tb_d_ff);

        reset=1; D=0; #12;
        reset=0;

        D=0; #10;
        D=1; #10;
        D=0; #10;
        D=1; #10;
        D=1; #10;
        D=0; #10;

        $finish;
    end
endmodule
