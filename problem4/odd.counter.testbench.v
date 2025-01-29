`include "odd.counter.module.v"

module odd_counter_tb;

reg clk;
reg reset; // Add reset signal
wire [3:0] count;

// Instantiate the odd_counter module
odd_counter counter(
    .clk(clk),
    .reset(reset), // Connect reset signal
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
end

initial begin
    $dumpfile("waveform_problem4.vcd"); // Set the VCD file name
    $dumpvars(0, odd_counter_tb); 
    $monitor("Time = %0t, Count = %0d, Reset = %0d", $time, count, reset);

    // Initial reset
    reset = 1; // Apply reset
    #10;
    reset = 0; // Release reset

    // Wait for count to be 5
    wait (count == 4'b0101);
    reset = 1;
    #10;
    reset = 0;

    #100; // Run for additional 100 time units

    $finish;
end

endmodule