`timescale 1ns / 1ps

module LogicBlk1(a, b, s0, s1, y);
input a, b, s0, s1;
output y;

wire out1, out2, out3, out4;

assign out1 = ~a;
assign out2 = a ^ b;
assign out3 = a & b;
assign out4 = a | b;

MUX_41 M41 (.a(out1), .b(out2), .c(out3), .d(out4), .s0(s0), .s1(s1), .out(y));

endmodule
