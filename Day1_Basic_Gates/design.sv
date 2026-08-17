`timescale 1ns / 1ps
module basic_gates (
    input wire a,
    input wire b,
    output wire y_and,
    output wire y_or,
    output wire y_not,
    output wire y_nand,
    output wire y_nor,
    output wire y_xor,
    output wire y_xnor
);

    assign y_and  = a & b;        // AND logic
    assign y_or   = a | b;        // OR logic
    assign y_not  = ~a;           // NOT logic (using single input 'a')
    assign y_nand = ~(a & b);     // NAND logic
    assign y_nor  = ~(a | b);     // NOR logic
    assign y_xor  = a ^ b;        // XOR logic
    assign y_xnor = ~(a ^ b);     // XNOR logic

endmodule
