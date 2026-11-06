`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:55:06 AM
// Design Name: 
// Module Name: sequential_multiplier
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


module sequential_multiplier(
    input clk,
    input rst,
    input [3:0] A,
    input [3:0] B,
    output reg [7:0] product
);

// Define states
localparam idle = 2'b00,
           multiply = 2'b01,
           update_result = 2'b10,
           done = 3'b11;

reg [2:0] state;
reg [7:0] partial_product;
reg [2:0] shift_count;
reg [7:0] multiplicand;
reg [3:0] operand_bb;

always @(posedge clk) begin
    if(rst == 1)
        state <= idle;
        
    else
        case (state)
        idle : begin
            partial_product <= 8'b0;
            shift_count <= 3'b0;
            multiplicand <= {4'b0, A};
            operand_bb <= B;
            state <= multiply;
        end
        multiply : begin
            if ((operand_bb[0] == 0 && shift_count < 4)) begin
                partial_product <= partial_product;
                shift_count <= shift_count + 1; 
                multiplicand <= multiplicand << 1;
                operand_bb <= operand_bb >> 1;
            end
            else if ((operand_bb[0] == 1 && shift_count < 4)) begin
                partial_product = partial_product + multiplicand;
                shift_count <= shift_count + 1;
                multiplicand <= multiplicand << 1;
                operand_bb <= operand_bb >> 1;
            end
            state <= update_result;
        end
        update_result : begin
            if (shift_count == 4) begin
                state <= done;
                product <= partial_product;
            end
            else begin
                state <= multiply;
            end
        end
        done : begin
            state <= done;
        end
    endcase
end 

endmodule
