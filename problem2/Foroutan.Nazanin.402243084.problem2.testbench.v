`include "Foroutan.Nazanin.402243084.problem2.module.v"

module problem2_testbench;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Sum;
    wire overflow;

    // Instantiate the four_bit_adder module using positional port mapping
    four_bit_adder adder(A, B, Sum, overflow);

    initial begin
        $dumpfile("waveform_problem2.vcd"); 
        $dumpvars(0, problem2_testbench);

        // Test case 1: Two positive numbers without overflow
        A = 4'b0010; // 2
        B = 4'b0011; // 3
        #10;
        $display("A = %b, B = %b, Sum = %b, Overflow = %b", A, B, Sum, overflow);

        // Test case 2: Two positive numbers with overflow
        A = 4'b0111; // 7
        B = 4'b0101; // 5
        #10;
        $display("A = %b, B = %b, Sum = %b, Overflow = %b", A, B, Sum, overflow);


        // Test case 3: Two negative numbers without overflow
        A = 4'b1101; // -3
        B = 4'b1011; // -5
        #10;
        $display("A = %b, B = %b, Sum = %b, Overflow = %b", A, B, Sum, overflow);


        // Test case 4: Two negative numbers with overflow
        A = 4'b1001; // -7
        B = 4'b1001; // -7
        #10;
        $display("A = %b, B = %b, Sum = %b, Overflow = %b", A, B, Sum, overflow);

        $finish;
    end
endmodule