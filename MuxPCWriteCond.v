module MuxPCWriteCond( input wire [1:0]PCWriteCondMux, input wire [0:0] NotZeroFio, input wire [0:0] ZeroFio, input wire [0:0] MaiorFio,
input wire [0:0] OuFio, output reg [31:0] PCWriteFio);
	
	
	always begin 
	
		case(PCWriteCondMux)
			
			2'b00:
			begin
				PCWriteFio <= NotZeroFio;
			
			end	
		
			2'b01:
			begin
				PCWriteFio <= ZeroFio;
			
			end
		
			2'b10:
			begin
				PCWriteFio <= MaiorFio;
			
			end
		
			2'b11:
			begin
				PCWriteFio <= OuFio;
			
			end
		
		endcase

	end
		

endmodule 
