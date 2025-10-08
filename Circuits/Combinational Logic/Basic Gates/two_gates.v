module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire w;
    xnor(w,in1,in2);
    xor(out,w,in3);
endmodule
