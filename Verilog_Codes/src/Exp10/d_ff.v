// D Flip-Flop - Behavioral Modeling
module d_ff(clk, reset, D, Q, Qbar);
    input clk, reset;
    input D;
    output reg Q;
    output Qbar;

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule
