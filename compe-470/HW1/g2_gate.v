`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:05 09/28/2016 
// Design Name: 
// Module Name:    g2_gate 
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
module g2_gate(input [3:0] x, output [0:0] y);

	wire out0, out1;
	xor gate0 (out0, x[0], x[1]);
	xor gate1 (out1, x[2], x[3]);
	xor out3 (y[0], out0, out1);

endmodule
