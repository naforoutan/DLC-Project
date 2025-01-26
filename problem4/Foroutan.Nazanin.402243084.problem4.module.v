module odd_counter (
    input wire clk,
    output reg [3:0] count
);

initial begin
    count = 4'b0001; // Start at 1
end

always @(posedge clk) begin
    case (count)
        4'b0001: count <= 4'b0011; // 1 -> 3
        4'b0011: count <= 4'b0101; // 3 -> 5
        4'b0101: count <= 4'b0111; // 5 -> 7
        4'b0111: count <= 4'b1001; // 7 -> 9
        4'b1001: count <= 4'b0001; // 9 -> 1
        default: count <= 4'b0001; // Default to 1
    endcase
end

endmodule