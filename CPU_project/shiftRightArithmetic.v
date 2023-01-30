`timescale 1ns/10ps
module shiftRightArithmetic(A, B, C);
input [31:0] A, B;
output reg [31:0] C;
always@(A or B)
	begin
	
	C = {A[31],(A[30:0] >> B)};
	end
endmodule