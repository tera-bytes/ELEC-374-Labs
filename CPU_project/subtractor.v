`timescale 1ns/10ps
module subtractor(A, B, C);
input [31:0] A, B;
output wire [31:0] C;
reg [31:0] temp;
always@(A or B)
	begin
	temp <= !B + 1;
	end
adder add(A, temp, C);

endmodule