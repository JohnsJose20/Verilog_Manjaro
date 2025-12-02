// Testbench for T Flip-Flop

module tb_t_ff;
    reg clk, reset;
    reg T;
    wire Q, Qbar;

    t_ff uut(clk, reset, T, Q, Qbar);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/t_ff.vcd");
        $dumpvars(0, tb_t_ff);

        reset = 1; T = 0; #12;
        reset = 0;

        // Hold
        T = 0; #20;
        // Toggle
        T = 1; #40;
        // Hold again
        T = 0; #20;

        $finish;
    end
endmodule
