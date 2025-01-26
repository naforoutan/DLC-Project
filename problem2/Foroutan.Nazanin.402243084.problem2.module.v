module full_adder(input A, B, cin, output sum, cout); // Added missing comma
    wire AandB, AandCin, BandCin, AxorB;

    xor(AxorB, A, B);
    xor(sum, AxorB, cin);

    and(AandB, A, B);
    and(AandCin, A, cin);
    and(BandCin, B, cin);
    or(cout, AandB, AandCin, BandCin);
    
endmodule


module four_bit_adder(input [3:0] A, B, output [3:0] sum, output overflow);
    wire c1, c2, c3, cout; // Declare cout wire
    wire A3andB3andS3not, A3notandB3notandS3;

    full_adder fa1(A[0], B[0], 1'b0, sum[0], c1);
    full_adder fa2(A[1], B[1], c1, sum[1], c2);
    full_adder fa3(A[2], B[2], c2, sum[2], c3);
    full_adder fa4(A[3], B[3], c3, sum[3], cout);

    // overflow detection
    and(A3andB3andS3not, A[3], B[3], ~sum[3]);
    and(A3notandB3notandS3, ~A[3], ~B[3], sum[3]);
    or(overflow, A3andB3andS3not, A3notandB3notandS3);

endmodule