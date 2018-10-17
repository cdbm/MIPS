

module MuxMemoriaEndereco( input wire [2:0] MuxMemoriaEnd, input wire [31:0] SaidaPCFio, input wire [31:0] ALUOutFio, 
input wire [31:0] Fio255, input wire [31:0] Fio254, 
input wire [31:0] Fio253, input wire[31:0] RDFio, output reg [31:0] MuxMemFio);
	
	
	always begin 
	
		case(MuxMemoriaEnd)
			
			3'b000:
			begin
				MuxMemFio <= SaidaPCFio;
			
			end
		
		
			3'b001:
			begin
				MuxMemFio <= ALUOutFio;
			
			end
		
			3'b010:
			begin
				MuxMemFio <= Fio255;
			
			end
		
			3'b100:
			begin
				MuxMemFio <= Fio254;
			
			end
		
			3'b101:
			begin
				MuxMemFio <= Fio253;
			
			end
		
			3'b110:
			begin
				MuxMemFio <= RDFio;
			
			end
		
		endcase

	end
		

endmodule 
