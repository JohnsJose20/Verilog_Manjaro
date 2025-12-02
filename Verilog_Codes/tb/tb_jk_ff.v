// Testbench for JK Flip-Flop

module tb_jk_ff;
    reg clk, reset;
    reg J, K;
    wire Q, Qbar;

    jk_ff uut(clk, reset, J, K, Q, Qbar);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/jk_ff.vcd");
        $dumpvars(0, tb_jk_ff);

        reset = 1; J = 0; K = 0; #12;
        reset = 0;

        // No change
        J = 0; K = 0; #10;
        // Reset
        J = 0; K = 1; #10;
        // Set
        J = 1; K = 0; #10;
        // Toggle a few times
        J = 1; K = 1; #40;

        $finish;
    end
endmodule
