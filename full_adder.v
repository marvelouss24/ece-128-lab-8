`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 11:31:00 AM
// Design Name: 
// Module Name: full_adder
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

module full_adder(
    input A,
    input B,
    input CI,
    output SUM,
    output CO
);

wire a1, a2, a3;

and (a1, B, CI);
and (a2, A, CI);
and (a3, A, B);

xor (SUM, A, B, CI);
or (CO, a1, a2, a3);

endmodule