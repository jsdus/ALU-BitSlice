`timescale 1ns / 1ps

module MUX_21(
    input in0,
    input in1,
    input s,
    output y
    );
    
    assign y = (in0 & ~s) | (in1 & s);
endmodule
