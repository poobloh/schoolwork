`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:58 09/28/2016 
// Design Name: 
// Module Name:    sum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sum(input [3:0] a, input [3:0] b, output reg [3:0] sum);
	
	always @(*)
	begin
		sum = a + b;
	end

endmodule
