`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:10 09/28/2016 
// Design Name: 
// Module Name:    problem2_structural 
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
module problem2_structural(input [3:0]a, [3:0]b, output [3:0]x, [3:0]y);

	sum DUT1 (.a(a), .b(b), .sum(x));
	sub DUT2 (.a(a), .b(b), .sub(y));

endmodule
