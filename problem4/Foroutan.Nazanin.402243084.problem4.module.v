module odd_counter (
    input wire clk,
    input wire reset, // Add reset input
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b0001; // Reset to 1
    end else begin
        case (count)
            4'b0001: count <= 4'b0011;
            4'b0011: count <= 4'b0101;
            4'b0101: count <= 4'b0111;
            4'b0111: count <= 4'b1001;
            4'b1001: count <= 4'b0001;
            default: count <= 4'b0001; // Default to 1
        endcase
    end
end

endmodule