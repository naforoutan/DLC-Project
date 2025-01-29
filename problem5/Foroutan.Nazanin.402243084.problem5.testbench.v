`include "Foroutan.Nazanin.402243084.problem5.module.v"
`timescale 1ns/1ps

module sequence_detector_tb;

    reg clk;
    reg reset;
    reg in_bit;
    wire seq_detected;

    sequence_detector detector (
        .clk(clk),
        .reset(reset),
        .in_bit(in_bit),
        .seq_detected(seq_detected)
    );

    // Clock generation: Toggle clock every 5 time units
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("waveform_problem5.vcd"); 
        $dumpvars(0, sequence_detector_tb); 
        in_bit = 0;
        reset = 1;
        #10 reset = 0;   // Deassert reset after 10 time units
        
        in_bit = 0;      // S0 -> S1
        #10;
        in_bit = 1;      // S1 -> S2
        #10;
        in_bit = 1;      // S2 -> S3
        #10;
        in_bit = 0;      // S3 -> S4
        #10;
        in_bit = 1;      // S4 -> S5
        #10;
        in_bit = 1;      // S5 -> S6
        #10;
        in_bit = 0;      // S6 -> S7
        #10;
        in_bit = 1;      // S7 -> S5 seq detector is one
        #10;
        in_bit = 0;      // S5 -> S1
        #10

        $finish;
    end

    // Monitor signals
    always @(posedge clk) begin
        $display("Time: %0t | reset: %b | in_bit: %b | Current State: %b | Next State: %b | seq_detected: %b",
                 $time, reset, in_bit, detector.current_state, detector.next_state, seq_detected);
    end

endmodule
