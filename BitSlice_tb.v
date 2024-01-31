`timescale 1ns / 1ps

module BitSlice_tb;
reg A, B, Cin, K2, K1, K0;
wire Y, Cout;

BitSlice inst0 (.A(A), .B(B), .Cin(K1), .K2(K2), .K1(K1), .K0(K0), .Y(Y), .Cout(Cout));

initial 
begin
#0 A=1; B=0; K2 = 0; K1 = 0; K0 = 0; Cin = (K1); 
#10 A=1; B=0; K2 = 0; K1 = 0; K0 = 1; Cin = (K1); 
#10 A=1; B=0; K2 = 0; K1 = 1; K0 = 0; Cin = (K1); 
#10 A=1; B=0; K2 = 0; K1 = 1; K0 = 1; Cin = (K1); 
#10 A=1; B=0; K2 = 1; K1 = 0; K0 = 0; Cin = (K1);
#10 A=1; B=0; K2 = 1; K1 = 0; K0 = 1; Cin = (K1);
#10 A=1; B=0; K2 = 1; K1 = 1; K0 = 0; Cin = (K1);
#10 A=1; B=0; K2 = 1; K1 = 1; K0 = 1; Cin = (K1);
end
endmodule
