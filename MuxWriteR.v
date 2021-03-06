	
module MuxWriteR( input wire [1:0] RegDst, input wire [4:0] FioVinte, input wire [4:0] FioQuinze, output reg [4:0] RegWriteFio);
	
	
	always begin 
	
		case(RegDst)
			
			2'b00:
			begin
				RegWriteFio <= FioVinte;
			
			end	
		
			2'b01:
			begin
				RegWriteFio <= FioQuinze;
			
			end
		
			2'b10:
			begin
			//31
				RegWriteFio <= 5'b11111;
			
			end
		
			2'b11:
			begin
			//29
				RegWriteFio <= 5'b11101;
			
			end
		
		endcase

	end
		

endmodule 
