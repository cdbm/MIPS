module MUXWriteData (input wire [2:0] MuxWriteData, input wire [31:0] AluOutFio , input wire [31:0] EPCFio , input wire [31:0] MDRFio,
						input wire [31:0] Menor , input wire [31:0] RegDeslFio , input wire [31:0] SaidaPCFio, 
		    				input wire [31:0] MuxHiLoFio, input wire [4:0] R227,
						output reg [31:0] WriteDataFio);	
		
	always begin
		case(MuxWriteData)
			2'b000:
			begin
			WriteDataFio <= AluOutFio;
			end
			
			2'b001:
			begin
			WriteDataFio <= EPCFio;
			end
			
			2'b010:
			begin
			WriteDataFio <= MDRFio;
			end
			
			2'b011:
			begin
			WriteDataFio <= Menor;
			end
			
			2'b100:
			begin
			WriteDataFio <= RegDeslFio;
			end
			
			2'b101:
			begin
			WriteDataFio <= SaidaPCFio;
			end
			
			2'b110:
			begin
			WriteDataFio <= MuxHiLoFio;
			end
			
			2'b111:
			begin
			WriteDataFio <= {26'b0,R227};
			end
			
			
		endcase
	end				
		
		
		
						
endmodule
