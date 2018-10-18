module MuxPCWriteCond( input wire [1:0]PCWriteCondMux, input wire [0:0] NotZeroFio, input wire [0:0] ZeroFio, input wire [0:0] MaiorFio,
input wire [0:0] OuFio, output reg [31:0] MuxPCWriteCondFio);
	
	
	always begin 
	
		case(PCWriteCondMux)
			
			2'b00:
			begin
				MuxPCWriteCondFio <= NotZeroFio;
			
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
				MuxPCWriteCondFio <= OuFio;
			
			end
		
		endcase

	end
		

endmodule 
