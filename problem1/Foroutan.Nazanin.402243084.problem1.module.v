module fun(input a, a_not, b, b_not, c, c_not, d, d_not, output out);

    wire w1, w2, w3, w4, w5, w6, w7;
    supply1 vdd;
    supply0 gnd;

    pmos(w1, vdd, a);
    pmos(out, w1, d);
    pmos(w2, vdd, b_not);
    pmos(out, w2, d);
    pmos(w3, vdd, a);
    pmos(out, w3, c_not);
    pmos(w4, vdd, b);
    pmos(out, w4, c_not);

    nmos(out, w5, a);
    nmos(out, w5, d);
    nmos(w5, w6, b_not);
    nmos(w5, w6, d);
    nmos(w6, w7, a);
    nmos(w6, w7, c_not);
    nmos(w7, gnd, b);
    nmos(w7, gnd, c_not);

endmodule