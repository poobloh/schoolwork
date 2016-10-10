`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:18 09/22/2016 
// Design Name: 
// Module Name:    g1_behavioral 
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
module g1_behavioral(input [3:0] x, output reg [1:0] y);

	always @(*)
	
	begin
		y[0] = !(x[1] & x[0] & !x[2]);
		y[1] = !(x[3] & x[2]);
	end

endmodule
