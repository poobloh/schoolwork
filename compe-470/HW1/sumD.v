`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:43 09/28/2016 
// Design Name: 
// Module Name:    sumD 
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
module sumD(input[3:0] a, input[3:0] b, input Cin, output[3:0] sumD, output cout);

	wire[3:0] carry;
	
	assign carry[0] = a[0] & b[0] | Cin & (a[0] ^ b[0]);
	assign sumD[0] = Cin^a[0]^b[0];

	assign carry[1] = a[1] & b[1] | carry [0] & (a[1] ^ b[1]);
	assign sumD[1] = carry[0]^a[1]^b[1];

	assign carry[2] = a[2] & b[2] | carry[1] &(a[2]^b[2]);
	assign sumD[2] = carry[1]^a[2]^b[2]; 

	assign cout = a[3] & b[3] | carry[2] &(a[3]^b[3]);
	assign sumD[3] = carry[2]^a[3]^b[3];

endmodule
