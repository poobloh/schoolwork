`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:21 09/28/2016 
// Design Name: 
// Module Name:    g2_behavioral 
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
module g2_behavioral(input x0,x1,x2,x3, output reg y0);

	always @(*) begin
		y0 = (x0^x1) ^ (x2^x3);
	end

endmodule
