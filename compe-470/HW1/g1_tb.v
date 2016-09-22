`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:23 09/21/2016 
// Design Name: 
// Module Name:    g1_tb 
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
module g1_tb(
    );
	 
	 reg [3:0] in;
	 wire [1:0] out;
	 
	 g1_behavioral DUT(.x(in), .y(out));
	 
	 initial begin
			in = (4'b0000);
			#50
			in = (4'b1011);
			#50
			in = (4'b0101);
			#50
			in = (4'b1110);
	 end

endmodule
