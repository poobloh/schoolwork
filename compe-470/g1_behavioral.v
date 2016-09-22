`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:03 09/21/2016 
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
module g1_behavioral(
    input [3:0] x,
    output [1:0] y
    );

	assign y[0] = !(x[1] & x[0] & !x[2]);
	assign y[1] = !(x[3] & x[2]);

endmodule
