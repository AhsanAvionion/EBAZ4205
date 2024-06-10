`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2024 03:20:23 PM
// Design Name: 
// Module Name: pps
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


module pps(
        input iclk,
        output reg pps
    );
    
    reg [31:0] counter;
    reg enCounter;
    
    initial begin
        pps <= 0;
        counter <= 0;
    end
    always @(posedge iclk) begin
        if(counter == 49999999) begin
            counter <= 0;
            pps <= ~pps;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
