`timescale 1ns/10ps
module Not(A, B);
input [31:0] A;
output reg [31:0] B;
always@(A)
	begin
	B = not A;
	end
endmodule
