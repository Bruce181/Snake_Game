`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 21:38:39
// Design Name: 
// Module Name: Generic_counter
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
module Generic_counter (
        CLK,
        RESET,
        ENABLE,
        TRIG_OUT,
        COUNT
);
    parameter COUNTER_WIDTH = 4;      // 默认位宽为 17 位
    parameter COUNTER_MAX = 9;      // 默认最大计数值为 99,999

    input CLK;                    // 时钟输入
    input RESET;                  // 复位输入
    input ENABLE;                 // 使能输入
    output TRIG_OUT;     // 当前计数值输出
    output [COUNTER_WIDTH-1:0] COUNT;                // 计数到达最大值时触发输出

    reg [COUNTER_WIDTH-1:0] count_value;
    reg Trigger_out;
    
    always@(posedge CLK) begin
        if (RESET)
            count_value <= 0;
        else begin
            if (ENABLE) begin
                if (count_value == COUNTER_MAX)
                    count_value <= 0;
                else
                    count_value <= count_value + 1;
            end
        end
    end
    
    always@(posedge CLK) begin
        if (RESET)
            Trigger_out <= 0;
        else begin
            if (ENABLE && count_value == COUNTER_MAX)
                Trigger_out <= 1;
            else
                Trigger_out <= 0;
        end
    end
    
    assign COUNT = count_value;
    assign TRIG_OUT = Trigger_out;
            
endmodule