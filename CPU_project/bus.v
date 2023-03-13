module bus(

input wire clock, clear,

input wire Gra, Grb, Grc,
input wire Rin, Rout, BAout, CON_in,

input wire HIin, LOin, Zhighin, Zlowin,
	PCin, MDRin, OutPortin, MARin, IRin, Yin, //register enables

	
input wire HIout, LOout, ZHIout, 
	ZLOout, PCout, MDRout, Inportout, Cout,
	//Controls register outputs, encoder inputs
	
input wire IncPC, write, read,
	
input wire [4:0] operation,

output CON_out

);

	wire R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in,
		R10in, R11in, R12in, R13in, R14in, R15in;
	
	wire R0out, R1out, R2out, R3out, 
		R4out, R5out, R6out, R7out, R8out, 
		R9out, R10out, R11out, R12out, R13out, 
		R14out, R15out;

	wire [31:0] busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R,
		busMuxIn_4R, busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C, Y_data_out, ir_out;
	
	wire [63:0] z_data_out;
	
	wire [31:0] Muxout;
	wire [31:0] OutPortData;
	reg [31:0] InPortData;
	
	wire [31:0] encodein;
	wire [4:0] encodeout;
	
	mux_MDR MDRmux(Muxout, Mdatain, read, MDR_mux_out);

	 mux_32_1 mux (busMuxIn_0R, busMuxIn_1R, busMuxIn_2R, busMuxIn_3R, busMuxIn_4R,
		busMuxIn_5R, busMuxIn_6R, busMuxIn_7R, busMuxIn_8R, 
		busMuxIn_9R, busMuxIn_10R, busMuxIn_11R, busMuxIn_12R, busMuxIn_13R, 
		busMuxIn_14R, busMuxIn_15R, busMuxIn_HI, busMuxIn_LO, busMuxIn_ZHI, 
		busMuxIn_ZLO, busMuxIn_PC, busMuxIn_MDR, busMuxIn_InPort, busMuxIn_C, 
		encodeout, Muxout);
		
	
	
	encoder_32_5 encoder (R0out, R1out, R2out, R3out, 
	R4out, R5out, R6out, R7out, R8out, 
	R9out, R10out, R11out, R12out, R13out, 
	R14out, R15out, HIout, LOout, ZHIout, 
	ZLOout, PCout, MDRout, Inportout, Cout, encodeout);
	
	
	zero_register reg_0(clock, clear, R0in, BAout, Muxout, busMuxIn_0R);
	register register1 (clock, clear, R1in, Muxout, busMuxIn_1R);
	register register2 (clock, clear, R2in, Muxout, busMuxIn_2R);
	register register3 (clock, clear, R3in, Muxout, busMuxIn_3R);
	register register4 (clock, clear, R4in, Muxout, busMuxIn_4R);
	register register5 (clock, clear, R5in, Muxout, busMuxIn_5R);
	register register6 (clock, clear, R6in, Muxout, busMuxIn_6R);
	register register7 (clock, clear, R7in, Muxout, busMuxIn_7R);
	register register8 (clock, clear, R8in, Muxout, busMuxIn_8R);
	register register9 (clock, clear, R9in, Muxout, busMuxIn_9R);
	register register10 (clock, clear, R10in, Muxout, busMuxIn_10R);
	register register11 (clock, clear, R11in, Muxout, busMuxIn_11R);
	register register12 (clock, clear, R12in, Muxout, busMuxIn_12R);
	register register13 (clock, clear, R13in, Muxout, busMuxIn_13R);
	register register14 (clock, clear, R14in, Muxout, busMuxIn_14R);
	register register15 (clock, clear, R15in, Muxout, busMuxIn_15R);
	register registerHI (clock, clear, HIin, Muxout, busMuxIn_HI);
	register registerLO (clock, clear, LOin, Muxout, busMuxIn_LO);
	register registerZHI (clock, clear, Zhighin, z_data_out[63:32], busMuxIn_ZHI);
	register registerZLO (clock, clear, Zlowin, z_data_out[31:0], busMuxIn_ZLO);
	
	pc_32_bit registerPC (clock, clear, IncPC, PCin, Muxout, busMuxIn_PC);
	
	register registerMDR (clock, clear, MDRin, MDR_mux_out, busMuxIn_MDR);
	
	//Outport
	register regOutPort(clock, clear, OutPortin, Muxout, OutPortData); 
	//Inport
	register registerInPort (clock, clear, Inportout, InPortData, busMuxIn_InPort);
	
	
	assign busMuxIn_C = ir_out[18] ? {{13{1'b1}},ir_out[17:0]} : {{13{1'b0}},ir_out[17:0]};
	
	register registerIR (clock, clear, IRin, Muxout, ir_out);
	
	register registerMAR (clock, clear, MARin, Muxout, ram_address);
	
	register registerY (clock, clear, Yin, Muxout, Y_data_out);
	
	alu this_alu(Y_data_out, Muxout, operation, z_data_out);
	
	wire [31:0] ram_address;
	
	Ram this_ram(busMuxIn_MDR, ram_address[8:0], write, read, clock, Mdatain);
	

	select_encode this_select_encode(ir_out, Gra, Grb, Grc, Rin, Rout, BAout, 
	{R15in, R14in, R13in, R12in, R11in, R10in, R9in, 
	R8in, R7in, R6in, R5in, R4in, R3in, R2in, R1in, R0in}, 
	{R15out, R14out, R13out, R12out, R11out, R10out, R9out, R8out, R7out, 
	R6out, R5out, R4out, R3out, R2out, R1out, R0out}
		);
		
	CON_FF this_con_ff(Muxout, ir_out[20:19], CON_in, CON_out);
	
endmodule
