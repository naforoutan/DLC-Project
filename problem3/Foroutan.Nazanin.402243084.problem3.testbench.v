`include "Foroutan.Nazanin.402243084.problem3.module.v"

module problem3_testbench();
    reg[5:0] A, B;
    reg[1:0] op;
    wire[5:0] out;

    ALU ALU_6bit (A, B, op, out);

    initial begin
        $dumpfile("waveform_problem3.vcd"); 
        $dumpvars(0, problem3_testbench);


        A = -5;
        B = 20;
        op = 0;
        #1;
        $display("a : %b\nb : %b\noperation : %b\noutput = %b\n",A,B,op,out);

        A = 5;
        B = 10;
        op = 1;
        #1;
        $display("a : %b\nb : %b\noperation : %b\noutput = %b\n",A,B,op,out);

        B = 20;
        op = 2;
        #1;
        $display("a : %b\nb : %b\noperation : %b\noutput = %b\n",A,B,op,out);

        A = -3;
        B = -10;
        op = 3;
        #1;
        $display("a : %b\nb : %b\noperation : %b\noutput = %b\n",A,B,op,out);

        A = 3;
        B = 2;
        op = 1;
        #1;
        $display("a : %b\nb : %b\noperation : %b\noutput = %b\n",A,B,op,out);

    end
endmodule