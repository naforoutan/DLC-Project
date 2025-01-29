`include "problem1.module.v"

module problem1_TestBench();

    reg a, not_a, b, not_b, c, not_c, d, not_d;
    wire out;
    fun fun1(a, not_a, b, not_b, c, not_c, d, not_d, out);

    initial begin

        $dumpfile("waveform_problem1.vcd"); 
        $dumpvars(0, problem1_TestBench);

          
        a = 0;
        b = 0; 
        c = 0; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 0; 
        c = 0; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 0; 
        c = 1; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 0; 
        c = 1; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 1; 
        c = 0; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 1; 
        c = 0; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 1; 
        c = 1; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 0;
        b = 1; 
        c = 1; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 0; 
        c = 0; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 0; 
        c = 0; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 0; 
        c = 1; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 0; 
        c = 1; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 1; 
        c = 0; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 1; 
        c = 0; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 1; 
        c = 1; 
        d = 0; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

        #1;  
        a = 1;
        b = 1; 
        c = 1; 
        d = 1; 
        not_a = ~a;
        not_b = ~b;
        not_d = ~d;
        not_c = ~c;
        $display("A:%d , B:%d , C:%d , D:%d --> %d",a,b,c,d, out);

    end
endmodule