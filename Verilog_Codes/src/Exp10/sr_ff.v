// SR Flip-Flop - Behavioral Modeling (Async Reset, Positive Edge Triggered)

module sr_ff(clk, reset, S, R, Q, Qbar);
    input clk, reset;
    input S, R;
    output reg Q;
    output Qbar;

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end
        else begin
            case ({S, R})
                2'b00: Q <= Q;       // No change
                2'b01: Q <= 1'b0;    // Reset
                2'b10: Q <= 1'b1;    // Set
                2'b11: Q <= 1'bx;    // Invalid condition
            endcase
        end
    end
endmodule
