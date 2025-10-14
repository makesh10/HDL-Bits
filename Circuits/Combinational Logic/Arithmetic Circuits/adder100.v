module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0]c;
    full_adder uut[99:0] (.a(a),.b(b),.cin({c[98:0],cin}),.s(sum),.cout(c));
    assign cout=c[99];
endmodule
    
module full_adder(
    input a,b,cin,
    output s,cout);
    assign s=a^b^cin;         
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
