module select_encode_tb;
reg [31:0] ir_out;
reg Gra, Grb, Grc;
reg Rin, Rout, BAout;
wire [15:0] all_in;
wire [15:0] all_out;

select_encode SELECT(ir_out, Gra, Grb, Grc, Rin, Rout, BAout, all_in, all_out);

initial begin
ir_out = 32'b11111000100100011000000000000000;
Gra = 1;
Rin = 1;
#10
Gra = 0;
Grb = 1;
Rin = 0;
Rout = 1;
#10
Grb = 0;
Grc = 1;
Rin = 0;
Rout = 0;
BAout = 1;
end


endmodule
	
	