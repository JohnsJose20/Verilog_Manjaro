// 4-bit Johnson Counter (Twisted Ring Counter) - Behavioral Modeling
// On reset: Q = 0000
// Sequence: 0000 -> 0001 -> 0011 -> 0111 -> 1111 -> 1110 -> 1100 -> 1000 -> 0000 -> ...

module johnson_counter(clk, reset, Q);
    input clk, reset;
    output reg [3:0] Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 4'b0000;
        end
        else begin
            Q <= {Q[2:0],~Q[3]}; // Shift right, MSB = inverted previous MSB
        end
    end
endmodule
