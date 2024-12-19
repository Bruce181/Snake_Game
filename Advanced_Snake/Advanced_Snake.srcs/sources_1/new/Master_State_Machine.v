module Master_State_Machine(
    input CLK,
    input BTNU,
    input BTND,
    input BTNL,
    input BTNR,
    input RESET,
    input WIN,             // Correct input name
    input LOST,            // Correct input name
    output [1:0] MSM_State
    );
    
    parameter START = 2'b00;
    parameter PLAY = 2'b01;
    parameter WINNER = 2'b10;
    parameter LOSER = 2'b11;
    
    reg [1:0] Curr_State;
    reg [1:0] Next_State;
    
    initial begin
        Curr_State <= START; // Ensure correct initialization
    end
    
    assign MSM_State = Curr_State; // Output the current state
    
    // Update the current state on each clock cycle
    always @(posedge CLK or posedge RESET) begin
        if (RESET)
            Curr_State <= START; // Go to START state on reset
        else
            Curr_State <= Next_State; // Transition to the next state
    end
    
    // Determine the next state based on the current state and inputs
    always @(*) begin
        case (Curr_State)
            START: begin
                if (BTNU || BTND || BTNL || BTNR) // Transition on button press
                    Next_State <= PLAY;
                else
                    Next_State <= Curr_State; // Stay in START
            end
            
            PLAY: begin
                if (WIN) // Transition to WINNER state on WIN
                    Next_State <= WINNER;
                else if (LOST) // Transition to LOSER state on LOST
                    Next_State <= LOSER;
                else
                    Next_State <= Curr_State; // Stay in PLAY
            end
            
            WINNER: begin
                if (RESET) // Reset back to START state
                    Next_State <= START;
                else
                    Next_State <= Curr_State; // Stay in WINNER
            end
            
            LOSER: begin
                if (RESET) // Reset back to START state
                    Next_State <= START;
                else
                    Next_State <= Curr_State; // Stay in LOSER
            end
            
            default:
                Next_State <= START; // Default to START state
        endcase
    end
    
endmodule