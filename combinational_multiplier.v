`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:55:06 AM
// Design Name: 
// Module Name: combinational_multiplier
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


module combinational_multiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] result
);

wire [3:0] row0, row1, row2, row3;
partial_product_gen gen (A, B, row0, row1, row2, row3);

wire cout1, cout2;
wire [3:0] sum1, sum2, p6to3;

assign result[0] = row0[0];

ripple_carry_adder rca1 ({1'b0, row0[3:1]}, row1, 1'b0, sum1, cout1);
assign result[1] = sum1[0];

ripple_carry_adder rca2 ({cout1, sum1[3:1]}, row2, 1'b0, sum2, cout2);
assign result[2] = sum2[0];

ripple_carry_adder rca3 ({cout2, sum2[3:1]}, row3, 1'b0, p6to3, result[7]);
assign result[6:3] = p6to3;

endmodule
