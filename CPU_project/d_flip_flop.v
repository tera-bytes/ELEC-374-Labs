module d_flip_flop(
input d,
input clk,
//input reset,
output reg q
);

//wire qn;
//assign qn = !q;

always @ (clk) begin
	q = d;
end
endmodule
