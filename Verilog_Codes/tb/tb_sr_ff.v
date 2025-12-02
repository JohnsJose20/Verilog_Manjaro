// Testbench for SR Flip-Flop

module tb_sr_ff;
    reg clk, reset;
    reg S, R;
    wire Q, Qbar;

    sr_ff uut(clk, reset, S, R, Q, Qbar);

    // Clock generation: 10 time units period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/sr_ff.vcd");
        $dumpvars(0, tb_sr_ff);

        // Initialize
        reset = 1; S = 0; R = 0; #12;
        reset = 0;

        // Set
        S = 1; R = 0; #10;
        // Reset
        S = 0; R = 1; #10;
        // No change
        S = 0; R = 0; #10;
        // Invalid
        S = 1; R = 1; #10;

        $finish;
    end
endmodule
