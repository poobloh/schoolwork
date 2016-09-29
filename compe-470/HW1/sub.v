`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:53 09/28/2016 
// Design Name: 
// Module Name:    sub 
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
module sub(input [3:0] a, input [3:0] b, output reg [3:0] sub);
	
	always @(*)
	begin
		sub = a - b;
	end

endmodule
