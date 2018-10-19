module Controle(input wire [5:0] Opcode, 
input wire [5:0] func,
input wire [0:0] ULA,
input wire [0:0] Divisor,
input wire [0:0] Multiplicador,
output wire [0:0] PCWrite,
output wire [0:0] PCWriteCond,
output wire [1:0] PCWriteCondMux,
output wire [2:0] MuxBranch,
output wire [2:0] MuxMemoriaEnd,
output wire [0:0] IRWrite,
output wire [0:0] RegWrite,
output wire [1:0] RegDst,
output wire [2:0] MuxULA1,
output wire [2:0] AluControl,
output wire [2:0] ALUOutControl,
output wire [0:0] DivControl,
output wire [2:0] MuxULA2,
output wire [1:0] MuxMemoriaDado,
output wire [0:0] AControl,
output wire [0:0] BControl,
output wire [0:0] EPCCont,
output wire [0:0] MultControl,
output wire [2:0] RDControl,
output wire [0:0] MuxRD,
output wire [0:0] MuxSaidaLO,
output wire [0:0] MuxSaidaHI,
output wire [0:0] ContShifts,
output wire [2:0] MuxWriteData,
output wire [0:0] MuxHILO,
output wire [0:0] LuiControl,
output wire [0:0] MuxMDR,
output wire [2:0] ControleBits,
output wire [0:0] CHi,
output wire [0:0] CLo);

parameter wire [32:0] signal;