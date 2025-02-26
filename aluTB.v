`timescale 1ns/1ns
module aluTB{
reg[31:0]A,
reg[31:0]B,
reg[2:0] SEL,
input clk,
wire[31:0] R,
reg flag
};

alunb AluNB{
	.sel(SEL);
	.a(A);
	.b(B);
	.r(R);
	.clk(CLK);
	.zf(flag);
}
initial begin
	SEL = 3'd0;
	A = 32'd567;
	B= 32'd435;
	#100;
	SEL = 3'd1;
	A = 32'd2342;
	B= 32'd45;
	#100;
	SEL = 3'd2;
	A = 32'd1234;
	B= 32'd908;
	#100;
	SEL = 3'd3;
	A = 32'd786;
	B= 32'd6534;
	#100;
	SEL = 3'd4;
	A = 32'd7890;
	B= 32'd4567;
	#100;
	SEL = 3'd5;
	A = 32'd289;
	B= 32'd7890;
	#100;