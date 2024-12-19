`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 00:34:34
// Design Name: 
// Module Name: VGA_Interface
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


module VGA_Interface(
    input CLK,       // 时钟信号
    input [11:0] COLOUR_IN,
    output reg [11:0] COLOUR_OUT, // 输出颜色
    output reg [9:0] ADDRH,
    output reg [8:0] ADDRV,
    output reg HS,  // 水平同步信号
    output reg VS   // 垂直同步信号
    );
    
    parameter VertTimeToPulseWidthEnd = 10'd2;
    parameter VertTimeToBackPorchEnd = 10'd31;
    parameter VertTimeToDisplayTimeEnd = 10'd511;
    parameter VertTimeToFrontPorchEnd = 10'd521;
    
    parameter HorzTimeToPulseWidthEnd = 10'd96;
    parameter HorzTimeToBackPorchEnd = 10'd144;
    parameter HorzTimeToDisplayTimeEnd = 10'd784;
    parameter HorzTimeToFrontPorchEnd = 10'd800;
    
    wire [9:0] h_counter;
    wire [8:0] v_counter;
    
    Generic_counter # (.COUNTER_WIDTH(2),
                       .COUNTER_MAX(3)
                       )
                       Counte0 (
                       .CLK (CLK),
                       .RESET(1'b0),
                       .ENABLE (1'b1),
                       .TRIG_OUT (Count0trig)
                       );
    
    Generic_counter # (.COUNTER_WIDTH(10),
                       .COUNTER_MAX(799)
                       )
                       Counter_H (
                       .CLK (CLK),
                       .RESET(1'b0),
                       .ENABLE (Count0trig),
                       .TRIG_OUT (Counter_H_OUT),
                       .COUNT(h_counter)
                       );
    
    Generic_counter # (.COUNTER_WIDTH(9),
                       .COUNTER_MAX(520)
                       )
                       Counter_V (
                       .CLK (CLK),
                       .RESET(1'b0),
                       .ENABLE (Counter_H_OUT),
                       .TRIG_OUT (Counter_V_OUT),
                       .COUNT(v_counter)
                       );
    
    // 生成同步信号
    always@ (posedge CLK) begin
        if (h_counter < HorzTimeToPulseWidthEnd)
            HS <= 0;
        else
            HS <= 1;
    
        if (v_counter < VertTimeToPulseWidthEnd)
            VS <= 0;
        else
            VS <= 1;
    end
    
    // 生成纯色背景
    always @(posedge CLK) begin
        if (h_counter < HorzTimeToDisplayTimeEnd && h_counter >= HorzTimeToBackPorchEnd &&
            v_counter < VertTimeToDisplayTimeEnd && v_counter >= VertTimeToBackPorchEnd) begin
            COLOUR_OUT <= COLOUR_IN;  // 背景
        end else begin
            COLOUR_OUT <= 12'b000;  // 黑色背景
        end
    end
    
    always@ (posedge CLK) begin
        if (v_counter < VertTimeToDisplayTimeEnd && v_counter > VertTimeToBackPorchEnd) 
            ADDRV <= v_counter - VertTimeToBackPorchEnd;
        else
            ADDRV <= 0;
        
        if (h_counter < HorzTimeToDisplayTimeEnd && h_counter > HorzTimeToBackPorchEnd) 
            ADDRH <= h_counter - HorzTimeToBackPorchEnd;
        else
            ADDRH <= 0;    
    end        

endmodule