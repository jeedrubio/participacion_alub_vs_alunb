module alunb(
	input [31:0] a, b,
	input [2:0] sel,
	input clk,
	output reg [31:0] r,
	output reg zf
);
	always @(posedge clk)
	begin
		case (sel)
			3'd0: r <= a + b;
			3'd1: r<= a & b;
			3'd2: r <= a | b;
			3'd3: r <= a * b;
			3'd4: r <= a - b;
			3'd5: r <= a < b ? 32'b1 : 32'b0;
			default: r <= 32'b0;
		endcase
	end
	assign zf = !r;
endmodule
