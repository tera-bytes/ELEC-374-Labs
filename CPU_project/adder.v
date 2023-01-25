//Ripple Carryv Adder

`timescale 1ns/10ps
module adder(A, B, C);
input [31:0] A, B;
output reg [31:0] C;
reg [32:0] localCarry;
integer i;
always@(A or B)
	begin
		localCarry = 33'd0;
		for(i=0; i<8; i = i +1)
		begin
			C[i] = A[i]^B[i]^localCarry[i];
			localCarry[i+1] = (A[i]&B[i])|(localCarry[i]&(A[i]|B[i]));
		end
	end
endmodule