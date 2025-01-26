`include "Foroutan.Nazanin.402243084.problem5.module.v"
`timescale 1ns/1ps

module sequence_detector_tb;

    reg clk;
    reg in_bit;
    wire seq_detected;

    sequence_detector detector (
        .clk(clk),
        .in_bit(in_bit),
        .seq_detected(seq_detected)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    initial begin
        in_bit = 0; // S0 -> S1
        #10; // Wait for 10 time units (one full clock cycle)
        in_bit = 1; // S1 -> S2
        #10;
        in_bit = 1; // S2 -> S3
        #10;
        in_bit = 0; // S3 -> S4
        #10;
        in_bit = 1; // S4 -> S5
        #10;
        in_bit = 1; // S5 -> S6
        #10;
        in_bit = 0; // S6 -> S7 (sequence detected)

        #10 $finish;
    end

    always @(posedge clk) begin
        $display("Time: %0t | in_bit: %b | Current State: %b | Next State: %b | seq_detected: %b",
                 $time, in_bit, detector.current_state, detector.next_state, seq_detected);
    end

endmodule