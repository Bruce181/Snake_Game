module Navigation_State_Machine(
    input CLK,
    input BTNU,
    input BTND,
    input BTNL,
    input BTNR,
    input RESET,
    output [1:0] NAV_State
    );

    parameter UP = 2'b00;
    parameter DOWN = 2'b01;
    parameter LEFT = 2'b10;
    parameter RIGHT = 2'b11;
    
    reg [1:0] Curr_State;
    reg [1:0] Next_State;
    
    assign NAV_State = Curr_State;
    
    always@ (posedge CLK or posedge RESET) begin
        if (RESET)
            Curr_State <= UP;
        else
            Curr_State <= Next_State;
    end
    
    always@ (Curr_State or BTNL or BTNR or BTNU or BTND) begin
        case (Curr_State)
            UP: begin
                if (BTNL)
                    Next_State <= 2'b10;
                else if (BTNR)
                    Next_State <= 2'b11;
                else
                    Next_State <= Curr_State;    
            end
            
            DOWN: begin
                if (BTNL)
                    Next_State <= 2'b10;
                else if (BTNR)
                    Next_State <= 2'b11;
                else
                    Next_State <= Curr_State;    
            end
            
            LEFT: begin
                if (BTNU)
                    Next_State <= 2'b00;
                else if (BTND)
                    Next_State <= 2'b01;
                else
                    Next_State <= Curr_State;    
            end
            
            RIGHT: begin
                if (BTNU)
                    Next_State <= 2'b00;
                else if (BTND)
                    Next_State <= 2'b01;
                else
                    Next_State <= Curr_State;    
            end
        endcase
    end
endmodule