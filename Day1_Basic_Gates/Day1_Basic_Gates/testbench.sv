`timescale 1ns / 1ps

module basic_gates_tb;

    reg a;
    reg b;
    wire y_and;
    wire y_or;
    wire y_not;
    wire y_nand;
    wire y_nor;
    wire y_xor;
    wire y_xnor;

    basic_gates uut (
        .a(a),
        .b(b),
        .y_and(y_and),
        .y_or(y_or),
        .y_not(y_not),
        .y_nand(y_nand),
        .y_nor(y_nor),
        .y_xor(y_xor),
        .y_xnor(y_xnor)
    );

    initial begin
        // Proper table header spacing
        $display("-----------------------------------------------------");
      $display(" Time   | A  B | AND   OR   NOT  NAND  NOR  XOR   XNOR");
        $display("-----------------------------------------------------");

        // %7t sets time to a fixed 7-character width so all rows align perfectly
        $monitor("%7t | %b  %b |  %b    %b    %b     %b     %b    %b     %b", 
                 $time, a, b, y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor);

        a = 0; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 0;
        #10;

        a = 1; b = 1;
        #10;

        $display("-----------------------------------------------------");
        $finish;
    end

endmodule
