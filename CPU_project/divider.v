//Ripple Carryv Adder

`timescale 1ns/10ps
module divider(A, B, C);
input [31:0] A, B; //A is Quotient, B is Divisor M
output reg [31:0] C;
reg [63:0] temp;
integer i;
always@(A or B)
	begin
	temp = {32'b0, A};
	
		for (i=0;i<31;i=i+1) begin
			temp = temp << 1;
			temp[63:32] = temp[63:32] - B;
			
			if (temp[63] == 1) begin
				temp[0] = 0;
				temp[63:32] = temp[63:32] + B;
			end else begin
				temp[0] = 1;
			end
		end
		
		C = temp[31:0];
		//remainder = temp[63:32]
	end
endmodule