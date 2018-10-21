module Mult(input wire [0:0] MultControl, input wire [31:0] AFio, input wire [31:0] BFio, output wire [31:0] MultLoFio, output wire [31:0] MultHiFio);

assign MultLoFio = AFio;
assign MultHiFio = BFio;

endmodule
