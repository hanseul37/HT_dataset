
// It implements X^20 + X^13 + X^9 + X^5 + 1
module lfsr_counter (
	input rst, clk, 
	input [63:0] data, 
   output [19:0] lfsr 
	);

	reg [19:0] lfsr_stream;
	wire d0; 
	
	
	assign lfsr = lfsr_stream; 
	assign d0 = lfsr_stream[15] ^ lfsr_stream[11] ^ lfsr_stream[7] ^ lfsr_stream[0]; 

	always @(posedge clk)
		if (rst == 1) begin
			lfsr_stream <= data[19:0];
		end else begin
			lfsr_stream <= {d0,lfsr_stream[19:1]}; 
		end
		
endmodule