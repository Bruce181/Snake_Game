module Score_Counter(
    input CLK,
    input RESET,
    input LOSER,
    input TARGET_REACHED,
    input PAUSE,
    input Time_Limit,
    input [1:0] MSM_State,
    output reg [3:0] SEG_SELECT_OUT, // 7-segment digit enable signal
    output reg [7:0] HEX_OUT,        // 7-segment segment data (a-g + dp)
    output reg LOST,
    output reg WIN
);

    // Internal Registers
    reg [27:0] COUNTER;     // Timing counter for display refresh
    reg [13:0] SUM = 0;     // Score counter
    reg [3:0] digit;        // Current digit to display
    reg [1:0] digit_sel;    // Selected digit for display
    reg [6:0] segment_data; // 7-segment encoding data
    reg ADD_State;
    reg [9:0] Time;

    initial begin
        WIN <= 0;
        LOST <= 0;
        Time <= 60;
    end

    // Score Counter Logic
    always @(posedge CLK or posedge RESET) begin
        ADD_State <= 0;
        if (RESET) begin
            SUM <= 0;        // Reset score
            ADD_State <= 0;
            WIN <= 0;
        end else if (TARGET_REACHED && !ADD_State) begin
            SUM <= SUM + 1;  // Increment score when the target is reached
            ADD_State <= 1;
            if (SUM == 9)
                WIN <= 1;
        end
    end
    
    always@ (posedge CLK or posedge RESET) begin
        if (RESET) begin
            Time <= 60;
            COUNTER <= 0;
            LOST <= 0;
        end else
        if(MSM_State == 2'b01 && Time_Limit && !PAUSE) begin          
            if (COUNTER == 100000000) begin
                COUNTER <= 0;
                if (Time > 0) begin
                    Time <= Time - 1;
                end
            end else begin
                COUNTER <= COUNTER + 1;
            end
            
            if (Time == 0 && SUM < 10)
                LOST <= 1;
            else
                LOST <= 0;
        end else if (LOSER == 1)
            LOST <= 1;
        else
            LOST <= 0;
    end
   
    // Digit Selection and Refresh
    reg [18:0] refresh_counter = 0; // Counter for refreshing the display
    always @(posedge CLK) begin
        refresh_counter <= refresh_counter + 1;
    end
    always @(*) begin
        digit_sel = refresh_counter[18:17]; // Use top 2 bits to select digit
    end

    // Extract Current Digit Based on `digit_sel`
    always @(*) begin
        case (digit_sel)
            2'b00: digit = SUM % 10;           // Ones place marks
            2'b01: digit = (SUM / 10) % 10;    // Tens place marks
            2'b10: digit = Time % 10;   // Ones place for CLK
            2'b11: digit = (Time / 10) % 10;  // Tens place for CLK
            default: digit = 4'd0;
        endcase
    end

    // 7-Segment Encoding for the Current Digit
    always @(*) begin
        case (digit)
            4'd0: segment_data = 7'b1000000; // 0
            4'd1: segment_data = 7'b1111001; // 1
            4'd2: segment_data = 7'b0100100; // 2
            4'd3: segment_data = 7'b0110000; // 3
            4'd4: segment_data = 7'b0011001; // 4
            4'd5: segment_data = 7'b0010010; // 5
            4'd6: segment_data = 7'b0000010; // 6
            4'd7: segment_data = 7'b1111000; // 7
            4'd8: segment_data = 7'b0000000; // 8
            4'd9: segment_data = 7'b0010000; // 9
            default: segment_data = 7'b1111111; // Turn off display
        endcase
        
        if (Time_Limit && digit_sel == 2'b10)
            HEX_OUT = {1'b0, segment_data};  // turn on the dot
        else
            HEX_OUT = {1'b1, segment_data};  // turn off the dot
    end

    // Enable the Selected 7-Segment Digit
    always @(*) begin
        if (Time_Limit) begin
            // Enable all 4 digits
            case (digit_sel)
                2'b00: SEG_SELECT_OUT = 4'b1110; // Enable digit 0
                2'b01: SEG_SELECT_OUT = 4'b1101; // Enable digit 1
                2'b10: SEG_SELECT_OUT = 4'b1011; // Enable digit 2
                2'b11: SEG_SELECT_OUT = 4'b0111; // Enable digit 3
                default: SEG_SELECT_OUT = 4'b1111; // Disable all digits
            endcase
        end else begin
            // Enable only the first 2 digits
            case (digit_sel)
                2'b00: SEG_SELECT_OUT = 4'b1110; // Enable digit 0
                2'b01: SEG_SELECT_OUT = 4'b1101; // Enable digit 1
                default: SEG_SELECT_OUT = 4'b1111; // Disable all digits
            endcase
        end
    end


endmodule
