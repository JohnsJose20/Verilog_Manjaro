// 4-bit Ring Counter - Behavioral Modeling
// On reset: Q = 0001
// Then rotates left every clock pulse: 0001 -> 0010 -> 0100 -> 1000 -> 0001 -> ...

module ring_counter(clk, reset, Q);
    input clk, reset;
    output reg [3:0] Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 4'b0001;
        end
        else begin
            Q <= {Q[2:0], Q[3]}; // Rotate left
        end
    end
endmodule
