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
module g1_behavioral(input x0,x1,x2,x3, output reg y0, y1);

	always @(*) begin
		y0 = !(x1 & x0 & !x2);
		y1 = !(x3 & x2);
	end

endmodule
