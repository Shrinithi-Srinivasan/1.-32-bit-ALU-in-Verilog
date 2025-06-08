module ALU_32bit_tb;
    reg [31:0] A, B;
    reg [2:0] ALU_Sel;
    wire [31:0] ALU_Out;
    wire Zero;
    ALU_32bit uut (.A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out), .Zero(Zero));
    initial begin
        $dumpfile("dumpfile.vcd");
    	$dumpvars(1);
        // Test for Addition
        A = 32'h0000000A; B = 32'h00000005; ALU_Sel = 3'b000;
        #10;
        // Test for Subtraction
        A = 32'h0000000A; B = 32'h00000005; ALU_Sel = 3'b001;
        #10;
        // Test for AND
        A = 32'h0000000F; B = 32'h000000F0; ALU_Sel = 3'b010;
        #10;
        // Test for OR
        A = 32'h0000000F; B = 32'h000000F0; ALU_Sel = 3'b011;
        #10;
      // Test for XOR
        A = 32'h0000000F; B = 32'h000000F0; ALU_Sel = 3'b100;
        #10;
      // Test for NOR
        A = 32'h0000000F; B = 32'h000000F0; ALU_Sel = 3'b101;
        #10;
        // Finish
        $finish;
    end
endmodule
