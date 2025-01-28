module ALU(
    input [5:0] A, B, 
    input [1:0] op_code, 
    output [5:0] out, 
    output cout
);
    wire [5:0] res0, res1, res2, res3;
    wire cout_add, cout_shift;

    shift zero(A, B, res0, cout_shift);
    add one(A, B, res1, cout_add);
    neg two(B, res2);
    abs three(A, B, res3);

    assign out = op_code[1] ? (op_code[0] ? res3 : res2) : (op_code[0] ? res1 : res0);
    assign cout = (op_code == 2'b01) ? cout_add : (op_code == 2'b00) ? cout_shift : 1'b0; // cout for add and shift operations

endmodule


module shift(input [5:0] A, B, output [5:0] res, output cout);
    wire [6:0] shifted_res;
    assign shifted_res = (A <<< 2) + (B >>> 1);
    assign res = shifted_res[5:0];
    assign cout = shifted_res[6]; // Carry out if any of the upper bits are set
endmodule


module add(input [5:0] A, B, output [5:0] res, output cout);
    assign {cout, res} = A + 3*B;
endmodule


module neg(input [5:0] B, output [5:0] res);
    assign res = -B;
endmodule


module abs(input [5:0] A, B, output [5:0] res);
    assign res = (2*A - B > 0 ? 2*A - B : -(2*A - B));
endmodule
