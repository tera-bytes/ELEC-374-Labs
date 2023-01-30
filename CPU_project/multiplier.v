`timescale 1ns/10ps
module multiplier(A, B, C);
input [31:0] A, B;
output reg [31:0] C;
integer i;
reg [33:0] Bsign_ext;
always@(A or B)
	begin
	C = 32'b0;
	Bsign_ext = {B[31], B[31:0], 1'b0};
	for(i=0; i<31; i=i+1) begin 
		case(Bsign_ext[i +: 3])
			{1'b0, 1'b0, 1'b1} : C = C + (A << i);
			{1'b0, 1'b1, 1'b0} : C = C + (A << i);
			{1'b0, 1'b1, 1'b1} : C = C + (A << i+1);
			{1'b1, 1'b0, 1'b0} : C = C - (A << i+1);
			{1'b1, 1'b0, 1'b1} : C = C - (A << i);
			{1'b1, 1'b1, 1'b0} : C = C - (A << i);
			default : C = C;
		endcase
	end
	end
endmodule