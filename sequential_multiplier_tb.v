`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 01:34:18 PM
// Design Name: 
// Module Name: sequential_multiplier_tb
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


module sequential_multiplier_tb;

reg clk;
reg rst;
reg [3:0] A;
reg [3:0] B;
wire [7:0] product;

sequential_multiplier uut (clk, rst, A, B, product);

always #5 clk = ~clk;

initial begin 
    clk = 1'b0; rst = 1'b1; A = 4'd0; B = 4'd0;
    
    #20 rst = 1'b0; A = 4'd0; B = 4'd13;
    #120 rst = 1'b1;
    
    #20 rst = 1'b0; A = 4'd1; B = 4'd12;
    #120 rst = 1'b1;
    
    #20 rst = 1'b0; A = 4'd14; B = 4'd13;
    #120 rst = 1'b1;
    
    #20 rst = 1'b0; A = 4'd14; B = 4'd14;
    #120 rst = 1'b1;
    
    $stop;
	
end
endmodule