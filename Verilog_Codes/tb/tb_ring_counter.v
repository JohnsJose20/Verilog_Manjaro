// Testbench for 4-bit Ring Counter

module tb_ring_counter;
    reg clk, reset;
    wire [3:0] Q;

    ring_counter uut(clk, reset, Q);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/ring_counter.vcd");
        $dumpvars(0, tb_ring_counter);

        reset = 1; #12;
        reset = 0;

        // Run for several cycles
        #100;

        $finish;
    end
endmodule
