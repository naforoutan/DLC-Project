`include "Foroutan.Nazanin.402243084.problem3.module.v"

module problem3_testbench();
    reg[5:0] A, B;
    reg[1:0] op;
    wire[5:0] out;
    wire cout;

    ALU ALU_6bit (A, B, op, out, cout);

    initial begin
        $dumpfile("waveform_problem3.vcd"); 
        $dumpvars(0, problem3_testbench);

        A = -5;
        B = 20;
        op = 2'b00;
        #1;
        $display("A: %b\nB: %b\nOperation: %b\nOutput: %b\nCarry Out: %b\n", A, B, op, out, cout);

        A = 5;
        B = 10;
        op = 2'b01;
        #1;
        $display("A: %b\nB: %b\nOperation: %b\nOutput: %b\nCarry Out: %b\n", A, B, op, out, cout);

        A = 15;
        B = 25;
        op = 2'b10;
        #1;
        $display("A: %b\nB: %b\nOperation: %b\nOutput: %b\nCarry Out: %b\n", A, B, op, out, cout);

        A = 30;
        B = 35;
        op = 2'b11;
        #1;
        $display("A: %b\nB: %b\nOperation: %b\nOutput: %b\nCarry Out: %b\n", A, B, op, out, cout);

        A = 60;
        B = 3;
        op = 2'b01;
        #1;
        $display("A: %b\nB: %b\nOperation: %b\nOutput: %b\nCarry Out: %b\n", A, B, op, out, cout);

        $finish;
    end
endmodule