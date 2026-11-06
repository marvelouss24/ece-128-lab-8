`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:55:06 AM
// Design Name: 
// Module Name: partial_product_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module partial_product_gen(
    input [3:0] A,
    input [3:0] B,
    output [3:0] row0,
    output [3:0] row1,
    output [3:0] row2,
    output [3:0] row3
);

assign row0 = A & {4{B[0]}};
assign row1 = A & {4{B[1]}};
assign row2 = A & {4{B[2]}};
assign row3 = A & {4{B[3]}};

endmodule
