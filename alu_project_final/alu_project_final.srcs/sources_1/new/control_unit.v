`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2021 08:24:50 PM
// Design Name: 
// Module Name: control_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module control_unit(
    input wire clk,
    input wire rst,
    output reg [1:0]state
    );

parameter idle=0,fetch=1,decode=2,execute=3;
always@(posedge clk)
if(rst==1) begin state<=idle; end
else if(state==idle) begin state<=fetch; end
else if(state==fetch) begin state<=decode; end
else if(state==decode) begin state<=execute; end
else if(state==execute) begin state<=fetch; end
endmodule

