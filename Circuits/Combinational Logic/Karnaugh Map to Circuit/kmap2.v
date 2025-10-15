module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out= (~a&c&~d)|(c&~a&b)|(~c&~a&~b)|(~a&~c&~d)|(a&~b&~c)|(c&d&a);
endmodule
