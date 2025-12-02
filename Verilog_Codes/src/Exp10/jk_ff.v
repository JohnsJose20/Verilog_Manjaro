// JK Flip-Flop - Behavioral Modeling (Async Reset, Positive Edge Triggered)

module jk_ff(clk, reset, J, K, Q, Qbar);
    input clk, reset;
    input J, K;
    output reg Q;
    output Qbar;

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end
        else begin
            case ({J, K})
                2'b00: Q <= Q;       // No change
                2'b01: Q <= 1'b0;    // Reset
                2'b10: Q <= 1'b1;    // Set
                2'b11: Q <= ~Q;      // Toggle
            endcase
        end
    end
endmodule
