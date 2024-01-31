`timescale 1ns / 1ps

module ArithBlk(S1, S0, A, B, C, Y, CO);
input S1, S0, A, B, C;
output Y, CO;

wire gnd = 1'b0;
wire out1, out2;
wire invb;

assign invb = ~B;

MUX_21 inst0 (.in0(B), .in1(invb), .s(S1), .y(out1));
MUX_21 inst1 (.in0(out1), .in1(gnd), .s(S0), .y(out2));

FullAdder inst3 (.A(A), .B(out2), .Cin(C), .S(Y), .Cout(CO));

endmodule
