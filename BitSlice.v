`timescale 1ns / 1ps

module BitSlice(A, B, Cin, K2, K1, K0, Y, Cout);
input A, B, Cin, K2, K1, K0;
output Y, Cout;

wire logic,arith;

LogicBlk inst0 (.a(A), .b(B), .s0(K0), .s1(K1), .y(logic));
ArithBlk inst1 (.S1(K1), .S0(K0), .A(A), .B(B), .C(Cin), .Y(arith), .CO(Cout));
MUX_21 M42 (.in0(logic), .in1(arith), .s(K2), .y(Y));
endmodule
