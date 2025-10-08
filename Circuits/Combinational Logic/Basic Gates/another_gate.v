module top_module (
    input in1,
    input in2,
    output out);
    not(~in2,in2);
    and(out,in1,~in2);
endmodule
