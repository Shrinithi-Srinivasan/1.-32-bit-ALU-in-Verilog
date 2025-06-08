module ALU_32bit(
    input [31:0] A, B,
    input [2:0] ALU_Sel,
    output reg [31:0] ALU_Out,
    output Zero
);    
    assign Zero = (ALU_Out == 32'b0);    
    always @(*) begin
        case (ALU_Sel)
            3'b000: ALU_Out = A + B; // Addition
            3'b001: ALU_Out = A - B; // Subtraction
            3'b010: ALU_Out = A & B; // AND
            3'b011: ALU_Out = A | B; // OR
            3'b100: ALU_Out = A ^ B; // XOR
            3'b101: ALU_Out = ~(A | B); // NOR
            default: ALU_Out = 32'b0; // Default case
        endcase
    end
endmodule
