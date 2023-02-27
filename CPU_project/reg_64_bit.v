//64-bit register, currently unused
module reg_64_bit #(parameter qInitial = 0)(
	input wire clock, 
	input wire clear,
	input wire enable,
	input wire [63:0] d,
	output reg [63:0] q
);
		
	
	initial q = qInitial;
	always@(posedge clock) 
	begin
		if (clear) begin
			q[63:0] = 63'b0;
		end
		else if(enable) begin
			q[63:0] = d[63:0];
		end 
	end
endmodule