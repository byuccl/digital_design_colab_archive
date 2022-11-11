`timescale 1ns / 1ps

module example(
    input logic clk,
    input logic inc,
    input logic reset,
    output logic[15:0] count
);

always_ff @(posedge clk)
    if(reset)
        count <= 0;
    else if(inc)
        count <= count + 1;

endmodule
