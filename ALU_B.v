module ALU (
    input  [31:0] A,     
    input  [31:0] B,      
    input  [2:0] SEL,  
	input CLK,
    output reg [31:0] R,     
	output reg FLAG
);

    always @(posedge CLK) begin
        case (SEL)
            3'b000: R <= A & B;    
            3'b001: R = A | B;      
            3'b010: R = A + B;      
            3'b011: R = A - B;      
            3'b100: R = A * B;  
			3'b101: R = A < B?1:0;
            default: R = 32'b0;     
        endcase
		
		if (R == 32'b0) begin
            flag = 1;   
        end else begin
            flag = 0;    
        end
    end

endmodule
