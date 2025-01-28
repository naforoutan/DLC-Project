module sequence_detector(
    input wire clk,
    input wire reset,       // Reset signal
    input wire in_bit,
    output reg seq_detected 
);
    // State encoding
    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;
    parameter S5 = 3'b101;
    parameter S6 = 3'b110;
    parameter S7 = 3'b111;

    reg [2:0] current_state, next_state;

    // Initialize the state machine 
    initial begin
        current_state = S0;
        next_state = S0;
    end

    // State transition logic with reset
    always @(posedge clk or posedge reset) begin
        current_state <= next_state;

    end

    // Next state logic
    always @(*) begin
        if(reset == 1) begin
            next_state = S0;
        end else begin
            case (current_state)
                S0: next_state = (in_bit == 0) ? S1 : S0;
                S1: next_state = (in_bit == 1) ? S2 : S1;
                S2: next_state = (in_bit == 1) ? S3 : S1;
                S3: next_state = (in_bit == 0) ? S4 : S0;
                S4: next_state = (in_bit == 1) ? S5 : S1;
                S5: next_state = (in_bit == 1) ? S6 : S1;
                S6: next_state = (in_bit == 0) ? S7 : S1;
                S7: next_state = (in_bit == 0) ? S1 : S5;
                default: next_state = S0;
            endcase
        end
    end

    // Output logic
    always @(*) begin
        seq_detected = (current_state == S7); // Assert output when sequence is detected
    end

endmodule
