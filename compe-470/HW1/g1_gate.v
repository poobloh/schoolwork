`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:28 09/22/2016 
// Design Name: 
// Module Name:    g1_gate 
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
module g1_gate(input [3:0] x, output [1:0] y);
	
	wire in1;
	nand nand1 (y[1], x[2], x[3]);
	not x2not (in1, x[2]);
	nand nand0 (y[0], x[1], x[0], in1);

endmodule
