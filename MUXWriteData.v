module MUXWriteData (input wire [2:0] MuxWriteData, input wire [31:0] AluOutFio , input wire [31:0] EPCFio , input wire [31:0] MDRFio,
						input wire [31:0] Menor , input wire [31:0] RegDeslFio , input wire [31:0] SaidaPCFio, 
		    				input wire [31:0] MuxHiLoFio, 
						output reg [31:0] WriteDataFio);	
		
	always begin
		case(MuxWriteData)
			3'b000:
			begin
			WriteDataFio <= AluOutFio;
			end
			
			3'b001:
			begin
			WriteDataFio <= EPCFio;
			end
			
			3'b010:
			begin
			WriteDataFio <= MDRFio;
			end
			
			3'b011:
			begin
			WriteDataFio <= Menor;
			end
			
			3'b100:
			begin
			WriteDataFio <= RegDeslFio;
			end
			
			3'b101:
			begin
			WriteDataFio <= SaidaPCFio;
			end
			
			3'b110:
			begin
			WriteDataFio <= MuxHiLoFio;
			end
			
			3'b111:
			begin
			WriteDataFio <= {24'b0,8'b11100011};
			end
			
			
		endcase
	end				
		
		
		
						
endmodule
