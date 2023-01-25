module 32_reg #(parameter qInitial = 0)(
	input wire clock, 
	input wire clear,
	input wire enable,
	input wire [31:0] d,
	output reg [31:0] q
);
		
	
	initial q = qInitial;
	always@(posedge clock) 
	begin
		if (clear) begin
			q[31:0] = 32'b0;
		end
		else if(enable) begin
			q[31:0] = d[31:0];
		end 
	end
endmodule