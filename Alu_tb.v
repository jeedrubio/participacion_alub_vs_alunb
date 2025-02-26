module Alu_tb;

reg [2:0] SEL_tb;
reg [31:0] A_tb,B_tb;
input clk_tb;
wire [31:0] R_tb;
reg flag;

ALU alu(
	.SEL(SEL_tb),
	.A(A_tb)
	.B(B_tb),
	.clk(clk_tb),
	.R(R_tb)
	.FLAG(flag)
};

initial begin
	SEL_tb = 3'b000; 
	A_tb = 32'h00000000;
	B_tb = 32'h00000000;
	
	integer i, j;
	for(j=0;j<1;j=j+1) begin
		for(i=0;i<6;i=i+1) begin	
			SEL_tb=i[2:0];
		end
	end

end

endmodule
