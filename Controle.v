module Controle(input wire [5:0] Opcode, 
input wire [5:0] func,
input wire [0:0] ULA,
input wire [0:0] Divisor,
input wire [0:0] Multiplicador,
output reg [0:0] PCWrite,
output reg [0:0] PCWriteCond,
output reg [1:0] PCWriteCondMux,
output reg [2:0] MuxBranch,
output reg [2:0] MuxMemoriaEnd,
output reg [0:0] IRWrite,
output reg [0:0] RegWrite,
output reg [1:0] RegDst,
output reg [2:0] MuxULA1,
output reg [2:0] ALUControl,
output reg [2:0] ALUOutControl,
output reg [0:0] DivControl,
output reg [2:0] MuxULA2,
output reg [1:0] MuxMemoriaDado,
output reg [0:0] AControl,
output reg [0:0] BControl,
output reg [0:0] EPCCont,
output reg [0:0] MultControl,
output reg [2:0] RDControl,
output reg [0:0] MuxRD,
output reg [0:0] MuxSaidaLO,
output reg [0:0] MuxSaidaHI,
output reg [0:0] ContShifts,
output reg [2:0] MuxWriteData,
output reg [0:0] MuxHILO,
output reg [0:0] LuiControl,
output reg [0:0] MuxMDR,
output reg [2:0] ControleBits,
output reg [0:0] CHi,
output reg [0:0] CLo,
output reg [0:0] PCReset,
output reg [0:0] InstRegReset,
output reg [0:0] BancoRegReset,
output reg [0:0] AReset,
output reg [0:0] BReset,
output reg [0:0] ALUOutReset,
output reg [0:0] HiReset,
output reg [0:0] LoReset,
output reg [0:0] MemRead);

reg [31:0] state;

	always begin

		case(state)
			
			32'b00000000000000000000000000000000:
			begin
				AReset <= 1'b1;
				PCReset <= 1'b1;
				InstRegReset <= 1'b1;
				BancoRegReset <= 1'b1;
				BReset <= 1'b1;
				ALUOutReset <= 1'b1;
				HiReset <= 1'b1;
				LoReset <= 1'b1;
				state <= 32'b00000000000000000000000000000001;
			end
			32'b00000000000000000000000000000001:
			begin
				MuxULA1 <= 3'b000;
				MuxULA2 <= 3'b001;
				MuxMemoriaEnd <= 3'b000;
				ALUControl <= 3'b001;
				MemRead <= 3'b000;
				state <= 32'b00000000000000000000000000000010;
			end
			32'b00000000000000000000000000000010:
			begin
				PCWrite <= 1'b0;
				state <= 32'b00000000000000000000000000000011;
			end
			32'b00000000000000000000000000000011:
			begin
				IRWrite <= 1'b1;
				state <= 32'b00000000000000000000000000000100;
			end
			
		endcase

	end

endmodule 