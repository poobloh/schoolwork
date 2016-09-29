`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:50 09/28/2016 
// Design Name: 
// Module Name:    g2_dataflow 
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
module g2_dataflow(input [3:0] x, output [0:0] y);

	assign y[0] = (x[0]^x[1]) ^ (x[2]^x[3]);

endmodule
