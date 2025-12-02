// T Flip-Flop - Behavioral Modeling (Async Reset, Positive Edge Triggered)

module t_ff(clk, reset, T, Q, Qbar);
    input clk, reset;
    input T;
    output reg Q;
    output Qbar;

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end
        else begin
            if (T)
                Q <= ~Q;  // Toggle when T = 1
            else
                Q <= Q;   // Hold when T = 0
        end
    end
endmodule
