module MuxPCWriteCond( input wire [1:0]PCWriteCondMux, input wire [0:0] ZeroFio, input wire [0:0] MaiorFio,input wire [0:0] MenorFio, input wire [0:0] IgualFio, output reg [0:0] MuxPCWriteCondFio);
	
	wire [0:0] NotZero;
	wire [0:0] OuFio;
	assign NotZero = ~ ZeroFio;
	
	always begin 
	
		case(PCWriteCondMux)
			
			2'b00:
			begin
				MuxPCWriteCondFio <= NotZero;
			
			end	
		
			2'b01:
			begin
				MuxPCWriteCondFio <= ZeroFio;
			
			end
		
			2'b10:
			begin
				MuxPCWriteCondFio <= MaiorFio;
			
			end
		
			2'b11:
			begin
				MuxPCWriteCondFio <= MenorFio | IgualFio;
			
			end
		
		endcase

	end
		

endmodule 
