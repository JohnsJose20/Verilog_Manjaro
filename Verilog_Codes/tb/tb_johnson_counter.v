// Testbench for 4-bit Johnson Counter

module tb_johnson_counter;
    reg clk, reset;
    wire [3:0] Q;

    johnson_counter uut(clk, reset, Q);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/johnson_counter.vcd");
        $dumpvars(0, tb_johnson_counter);

        reset = 1; #12;
        reset = 0;

        // Run for several cycles
        #100;

        $finish;
    end
endmodule
