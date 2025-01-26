`include "Foroutan.Nazanin.402243084.problem4.module.v"

module odd_counter_tb;

reg clk;
wire [3:0] count;

// Instantiate the odd_counter module
odd_counter uut (
    .clk(clk),
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
end


initial begin
    $monitor("Time = %0t, Count = %0d", $time, count);
end


initial begin
    #100 $finish; // Run the simulation for 100 time units
end

endmodule