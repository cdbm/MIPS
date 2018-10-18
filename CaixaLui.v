module CaixaLui( input wire [0:0] LuiControl, input wire [15:0] OffsetFio, output wire [31:0] LuiFio);

assign LuiFio = (LuiControl) ? {OffsetFio,16'd0} : LuiFio;

endmodule 