`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:59 09/28/2016 
// Design Name: 
// Module Name:    g3_structural 
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
module g3_structural(input a,b,c,d,e,f, output z);

	wire m, n; //m is y1, n is y2

	g1_behavioral DUT1(.x3(a), .x2(b), .x1(c), .x0(d), .y0(m), .y1(n));
	g2_behavioral DUT2(.x3(m), .x2(n), .x1(e), .x0(f), .y0(z));

endmodule
