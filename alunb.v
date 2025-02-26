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
			3'b000:
			begin
				r <= a + b;
			end
			3'b001:
			begin
				r <= a & b;
			end
			3'b010:
			begin
				r <= a | b;
			end
			3'b011:
			begin
				r <= a * b;
			end
			3'b100:
			begin
				r <= a - b;
			end
			3'b101:
			begin
				r <= a < b ? 1 : 0;
			end
			default:
			begin
				r <= 32'b0;
			end
		endcase
		zf <= r ? 0 : 1;
	end
endmodule
