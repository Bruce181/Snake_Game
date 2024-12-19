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
    input CLK,       // ʱ���ź�
    input [11:0] COLOUR_IN,
    output reg [11:0] COLOUR_OUT, // �����ɫ
    output reg [9:0] ADDRH,
    output reg [8:0] ADDRV,
    output reg HS,  // ˮƽͬ���ź�
    output reg VS   // ��ֱͬ���ź�
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
    
    // ����ͬ���ź�
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
    
    // ���ɴ�ɫ����
    always @(posedge CLK) begin
        if (h_counter < HorzTimeToDisplayTimeEnd && h_counter >= HorzTimeToBackPorchEnd &&
            v_counter < VertTimeToDisplayTimeEnd && v_counter >= VertTimeToBackPorchEnd) begin
            COLOUR_OUT <= COLOUR_IN;  // ����
        end else begin
            COLOUR_OUT <= 12'b000;  // ��ɫ����
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