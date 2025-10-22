module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w1,w2;
    wire [31:0]b0= b^{32{sub}};

    add16 upper(.a(a[15:0]),.b(b0[15:0]),.cin(sub),.sum(sum[15:0]),.cout(w1));
    add16 lower(.a(a[31:16]),.b(b0[31:16]),.cin(w1),.sum(sum[31:16]),.cout(w2));
endmodule
