`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 01:34:18 PM
// Design Name: 
// Module Name: combinational_multiplier_tb
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


module combinational_multiplier_tb;

reg [3:0] A;
reg [3:0] B;
wire [7:0] result;

combinational_multiplier uut (A, B, result);

initial begin 
        A = 4'd0; B = 4'd0;
        #10 A = 4'd0; B = 4'd13;
        #10 A = 4'd1; B = 4'd12;
        #10 A = 4'd14; B = 4'd13;
        #10 A = 4'd14; B = 4'd14;
        
        #10 $stop;
end
endmodule
