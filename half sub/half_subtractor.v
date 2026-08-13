`timescale 1ns/1ps

module half_subtractor (
    input  A,
    input  B,
    output Difference,
    output Borrow
);

    assign Difference = A ^ B;
    assign Borrow = (~A) & B;

endmodule