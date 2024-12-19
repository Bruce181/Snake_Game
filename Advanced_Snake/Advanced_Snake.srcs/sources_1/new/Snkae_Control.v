    module Snake_Control(
        input CLK,
        input RESET,
        input Accelerator,
        input Resolution,
        input [1:0] MSM_State,
        input [1:0] NAV_State,
        input [9:0] ADDRH,
        input [8:0] ADDRV,
        input [7:0] TARGET_ADDRH,
        input [6:0] TARGET_ADDRV,
        input LOST,
        input WIN,
        input PAUSE,
        input WALL,
        input [11:0] Snake_Colour,
        output reg TARGET_REACHED,
        output reg WALL_REACHED,
        output reg LOSER,
        output reg [11:0] COLOUR_OUT,
        output reg [7:0] OUT
        );
        parameter BOUNDARY_THICKNESS = 1;
        parameter SnakeLength = 100;
        parameter Ini_Length = 8;
        
        reg [7:0] MaxX;
        reg [6:0] MaxY;
        // Adjust MaxX and MaxY dynamically based on the resolution
        always @(*) begin
            if (Resolution) begin
                MaxX = 79;  // Lower resolution boundary
                MaxY = 59;
            end else begin
                MaxX = 159; // Full resolution boundary
                MaxY = 119;
            end
        end
        
        reg [7:0] SnakeState_X [0: SnakeLength - 1];
        reg [6:0] SnakeState_Y [0: SnakeLength - 1];
        reg [4:0] Curr_Snake;
        reg [15:0] FrameCount;
        reg [7:0] TARGET_SIZE;
        reg [3:0] WAIT;
        
        wire [11:0] COLOUR_IN;       
        reg [27:0] TIME_Counter;
        reg Toggle;
        reg IS_Snake;
        reg ADD_State;
        reg STATE_1; //use to decide the state of resolution
        reg STATE_0;
        reg Shield;
        
        // Determine scaled addresses
        wire [9:0] SCALED_ADDRH = Resolution ? ADDRH[9:3] : ADDRH[9:2]; // Divide ADDRH by 4 if Resolution is active
        wire [8:0] SCALED_ADDRV = Resolution ? ADDRV[8:3] : ADDRV[8:2]; // Divide ADDRV by 4 if Resolution is active
        
        // Adjust target position for collision detection based on resolution
        wire [7:0] SCALED_TARGET_ADDRH = Resolution ? TARGET_ADDRH[7:1] : TARGET_ADDRH[7:0];
        wire [6:0] SCALED_TARGET_ADDRV = Resolution ? TARGET_ADDRV[6:1] : TARGET_ADDRV[6:0];
       
        integer i;
        
        initial begin
            TARGET_REACHED <= 0;
            Curr_Snake <= Ini_Length;
        end
        
        reg [23:0] speed_counter = 0; // Counter for controlling speed
        reg TRIG_1;                   // Trigger signal for snake movement
        
        // The logics of changes the speed of snake
        always @(posedge CLK or posedge RESET) begin
            if (RESET) begin
                speed_counter <= 0;
                TRIG_1 <= 0;
            end else begin
                // Check if counter has reached the dynamic max value
                if (speed_counter >= (Accelerator ? 24'd3000000 : 24'd5000000)) begin
                    speed_counter <= 0; // Reset counter
                    TRIG_1 <= 1;        // Generate trigger for snake movement
                end else begin
                    speed_counter <= speed_counter + 1; // Increment counter
                    TRIG_1 <= 0;        // Reset trigger
                    OUT <= SnakeState_X[0];
                end
            end
        end
     
        Generic_counter # (.COUNTER_WIDTH(23),
                           .COUNTER_MAX(3500000)
                           )
                           Cycle_Counter (
                           .CLK(CLK),
                           .ENABLE(1'b1),
                           .RESET(1'b0),
                           .TRIG_OUT(TRIGC)
                           );  
    
        Generic_counter # (.COUNTER_WIDTH(12),
                           .COUNTER_MAX(4094)
                           )
                           Colour_Counter (
                           .CLK(TRIGC),
                           .ENABLE(1'b1),
                           .RESET(1'b0),
                           .COUNT(COLOUR_IN)
                           );  
    
        // The logics of colour changes in each second
        always @ (posedge CLK) begin
            if (TIME_Counter >= 50000000) begin  // frequency
                TIME_Counter <= 0;
                Toggle <= ~Toggle;  // inverse the colour
            end else begin
                TIME_Counter <= TIME_Counter + 1;
            end
        end
        
        always@(posedge CLK) begin
            case (MSM_State)
            
                2'b00: begin
                    WAIT <= 0; 
                    LOSER <= 0; 
                    TARGET_SIZE <= 1;
                    ADD_State <= 0;
                    TARGET_REACHED <= 0;
                    Curr_Snake <= Ini_Length;
                    if (((ADDRH > 160 && ADDRH < 175) && (ADDRV > 120 && ADDRV < 360)) ||  // P vertical line
                        ((ADDRH > 175 && ADDRH < 215) && (ADDRV > 120 && ADDRV < 140)) ||  // P horizontal top line
                        ((ADDRH > 175 && ADDRH < 215) && (ADDRV > 225 && ADDRV < 245)) ||  // P horizontal bottom line
                        ((ADDRH > 215 && ADDRH < 230) && (ADDRV > 120 && ADDRV < 245)) ||  // P middle right vertical line
                        // Check if current scan position is within letter L area
                        ((ADDRH > 245 && ADDRH < 260) && (ADDRV > 120 && ADDRV < 360)) ||  // L vertical line
                        ((ADDRH > 260 && ADDRH < 310) && (ADDRV > 340 && ADDRV < 360)) ||  // L bottom horizontal line
                        // Check if current scan position is within letter A area
                        ((ADDRH > 330 && ADDRH < 345) && (ADDRV > 120 && ADDRV < 360)) ||  // A left line
                        ((ADDRH > 380 && ADDRH < 395) && (ADDRV > 120 && ADDRV < 360)) ||  // A right line
                        ((ADDRH > 345 && ADDRH < 380) && (ADDRV > 225 && ADDRV < 245)) ||  // A middle bottom line
                        ((ADDRH > 345 && ADDRH < 380) && (ADDRV > 120 && ADDRV < 140)) ||  // A middle top line
                        // Check if current scan position is within letter Y area
                        ((ADDRH > 415 && ADDRH < 430) && (ADDRV > 120 && ADDRV < 225)) ||  // Y left upper line
                        ((ADDRH > 465 && ADDRH < 480) && (ADDRV > 120 && ADDRV < 225)) ||  // Y right upper line
                        ((ADDRH > 440 && ADDRH < 455) && (ADDRV > 225 && ADDRV < 360)))    // Y lower line
                    begin
                        COLOUR_OUT <= Toggle ? 12'hF00 : 12'h00F;  // Toggle color
                    end else
                        COLOUR_OUT <= 12'hFFF;  // White background
                end
         
                2'b01: begin
                    if (RESET || LOSER) begin
                        ADD_State <= 0;
                        TARGET_REACHED <= 0;
                        WALL_REACHED <= 0;
                        Curr_Snake <= Ini_Length;
                        TARGET_SIZE <= 1; // Reset target size to default
                        WAIT <= 0;        // Reset WAIT counter
                        LOSER <= 0;
                        Shield <= 0;
                    end
        
                    // Initialize background color
                    COLOUR_OUT <= 12'hF00; // Default blue background
                    
                   if (WALL) begin
                        // Render boundary
                        if (SCALED_ADDRH < BOUNDARY_THICKNESS || SCALED_ADDRH >= MaxX - BOUNDARY_THICKNESS + 1 ||
                            SCALED_ADDRV < BOUNDARY_THICKNESS || SCALED_ADDRV >= MaxY - BOUNDARY_THICKNESS + 1) begin
                            COLOUR_OUT <= 12'hFFF; // Red boundary color
                        end
                        else if  // Check if the snake's head collides with the boundary
                            (SnakeState_X[0] < BOUNDARY_THICKNESS || SnakeState_X[0] >= MaxX - BOUNDARY_THICKNESS + 1 ||
                             SnakeState_Y[0] < BOUNDARY_THICKNESS || SnakeState_Y[0] >= MaxY - BOUNDARY_THICKNESS + 1) begin
                            LOSER <= 1; // Snake hits the boundary, game is lost
                        end
                    end
                    
                    if (Resolution && !Shield) begin
                        LOSER <= 0;
                        Shield <= 1;
                    end else if (!Resolution && Shield) begin
                        LOSER <= 0;
                        Shield <= 0;
                    end
                         
                    // Render target (size dynamically adjusted by TARGET_SIZE)
                    if ((SCALED_ADDRH >= SCALED_TARGET_ADDRH && SCALED_ADDRH < SCALED_TARGET_ADDRH + TARGET_SIZE) &&
                        (SCALED_ADDRV >= SCALED_TARGET_ADDRV && SCALED_ADDRV < SCALED_TARGET_ADDRV + TARGET_SIZE)) begin
                        COLOUR_OUT <= 12'h00F; // Target color
                    end else begin
                        // Render snake
                        IS_Snake <= 0;
                        for (i = 0; i < Curr_Snake; i = i + 1) begin
                                if (SCALED_ADDRH == SnakeState_X[i] && SCALED_ADDRV == SnakeState_Y[i]) begin
                                    IS_Snake <= 1;
                                end
                        end
                        if (IS_Snake) begin
                            COLOUR_OUT <= Snake_Colour; // Snake color
                        end
                    end
                
                    
                    // Check if snake head reached the target
                    if ((SnakeState_X[0] >= SCALED_TARGET_ADDRH && SnakeState_X[0] < SCALED_TARGET_ADDRH + TARGET_SIZE) &&
                        (SnakeState_Y[0] >= SCALED_TARGET_ADDRV && SnakeState_Y[0] < SCALED_TARGET_ADDRV + TARGET_SIZE)) begin
                        TARGET_REACHED <= 1;
                        
                        if (TARGET_REACHED) begin
                            // Increment WAIT and adjust TARGET_SIZE
                            WAIT <= WAIT + 1;
                            if (WAIT == 2) 
                                TARGET_SIZE <= 2; // Increment target size
                            else if (WAIT == 3) begin
                                WAIT <= 1;
                                TARGET_SIZE <= 1;
                            end
                        end
                    end else begin
                        TARGET_REACHED <= 0;
                    end
                    
                    // Prevent `TARGET_SIZE` from being zero
                    if (TARGET_SIZE == 0) begin
                        TARGET_SIZE <= 1; // Ensure it has a valid minimum size
                    end
                    
                    // Check for collision
                    for (i = 1; i < Curr_Snake; i = i + 1) begin
                        if ((SnakeState_X[0] == SnakeState_X[i]) && (SnakeState_Y[0] == SnakeState_Y[i])) begin
                            LOSER <= 1; // Set to lost if collision is detected
                        end
                    end
                    
                    // Check if the target overlaps with the wall (boundary)
                    if (WALL) begin
                        if ((SCALED_TARGET_ADDRH < BOUNDARY_THICKNESS || 
                             SCALED_TARGET_ADDRH + TARGET_SIZE > (MaxX - BOUNDARY_THICKNESS)) || // Right edge of the target
                            (SCALED_TARGET_ADDRV < BOUNDARY_THICKNESS || 
                             SCALED_TARGET_ADDRV + TARGET_SIZE > (MaxY - BOUNDARY_THICKNESS))) begin
                            WALL_REACHED <= 1;
                        end else
                            WALL_REACHED <= 0;
                    end
                
                    // Handle target reached logic
                    if (TARGET_REACHED && !ADD_State && Curr_Snake < SnakeLength) begin
                        if (TARGET_SIZE == 2)
                            Curr_Snake <= Curr_Snake + 4;
                        else
                            Curr_Snake <= Curr_Snake + 2;
                        ADD_State <= 1; // Prevent multiple increments for the same target
                    end else if (!TARGET_REACHED) begin
                        ADD_State <= 0; // Reset ADD_State when target is not reached
                    end
                end
       
                2'b10: begin
                    WAIT <= 0;  
                    LOSER <= 0;
                    TARGET_SIZE <= 1;
                    ADD_State <= 0;
                    TARGET_REACHED <= 0;
                    Curr_Snake <= Ini_Length;
                    if(ADDRV == 479) 
                        FrameCount <= FrameCount + 1;                              
                    if(ADDRV > 240) begin
                        if(ADDRH > 320)
                            COLOUR_OUT <= FrameCount[15:8] + ADDRV[7:0] + ADDRH[7:0] -240 - 320;
                        else
                            COLOUR_OUT <= FrameCount[15:8] + ADDRV[7:0] - ADDRH[7:0] -240 + 320;
                    end
                    else begin
                        if(ADDRH > 320)
                            COLOUR_OUT <= FrameCount[15:8] - ADDRV[7:0] + ADDRH[7:0] + 240 - 320;
                        else
                            COLOUR_OUT <= FrameCount[15:8] - ADDRV[7:0] - ADDRH[7:0] + 240 + 320;
                    end          
                end
                
                2'b11: begin
                    WAIT <= 0;
                    LOSER <= 0;
                    TARGET_SIZE <= 1;
                    ADD_State <= 0;
                    TARGET_REACHED <= 0;
                    Curr_Snake <= Ini_Length;
                    if (((ADDRH > 160 && ADDRH < 175) && (ADDRV > 120 && ADDRV < 360)) ||  // L vertical line
                        ((ADDRH > 175 && ADDRH < 225) && (ADDRV > 340 && ADDRV < 360)) ||  // L bottom horizontal line
                        // Check if current scan position is within letter O area
                        ((ADDRH > 245 && ADDRH < 260) && (ADDRV > 120 && ADDRV < 360)) ||  // O left vertical line
                        ((ADDRH > 260 && ADDRH < 295) && (ADDRV > 120 && ADDRV < 140)) ||  // O horizontal top line
                        ((ADDRH > 260 && ADDRH < 295) && (ADDRV > 340 && ADDRV < 360)) ||  // O horizontal bottom line
                        ((ADDRH > 295 && ADDRH < 310) && (ADDRV > 120 && ADDRV < 360)) ||  // O right vertical line
                        // Check if current scan position is within letter S area
                        ((ADDRH > 345 && ADDRH < 395) && (ADDRV > 120 && ADDRV < 140)) ||  // S top horizontal line
                        ((ADDRH > 330 && ADDRH < 345) && (ADDRV > 120 && ADDRV < 250)) ||  // S upper left vertical line
                        ((ADDRH > 345 && ADDRH < 380) && (ADDRV > 230 && ADDRV < 250)) ||  // S middle horizontal line
                        ((ADDRH > 380 && ADDRH < 395) && (ADDRV > 230 && ADDRV < 360)) ||  // S lower right vertical line
                        ((ADDRH > 330 && ADDRH < 380) && (ADDRV > 340 && ADDRV < 360)) ||  // S bottom horizontal line
                        // Check if current scan position is within letter T area
                        ((ADDRH > 415 && ADDRH < 480) && (ADDRV > 120 && ADDRV < 140)) ||  // T top horizontal line
                        ((ADDRH > 440 && ADDRH < 455) && (ADDRV > 140 && ADDRV < 360)))    // T vertical line
                    begin
                        COLOUR_OUT <= 12'hFFF;  // Change color every second
                    end else
                        COLOUR_OUT <= 12'h000;  // Black background
                end       
            endcase
        end
                        
        
        genvar PixNo;
        generate
            for (PixNo = 0; PixNo < SnakeLength - 1; PixNo = PixNo + 1)
            begin: PixShift
                always@ (posedge CLK) begin
                    if (RESET) begin
                        SnakeState_X [PixNo + 1] <= 80;
                        SnakeState_Y [PixNo + 1] <= 100;
                    end
                    else if (!PAUSE && TRIG_1 == 1) begin
                        SnakeState_X [PixNo + 1] <= SnakeState_X [PixNo];
                        SnakeState_Y [PixNo + 1] <= SnakeState_Y [PixNo];
                    end
                end
            end
        endgenerate
        
        always@ (posedge CLK) begin
            if (RESET) begin
                SnakeState_X [0] <= 80;
                SnakeState_Y [0] <= 100;
                STATE_1 = 0;
                STATE_0 = 1;
            end else if (Resolution && !STATE_1 && STATE_0) begin
                // Switch to lower resolution
                if (SnakeState_X[0] > 1) SnakeState_X[0] <= SnakeState_X[0] / 2;
                if (SnakeState_Y[0] > 1) SnakeState_Y[0] <= SnakeState_Y[0] / 2;
                STATE_1 = 1;  // Mark lower resolution state
                STATE_0 = 0;
            end else if (!Resolution && STATE_1 && !STATE_0) begin
                // Switch to higher resolution
                SnakeState_X[0] <= SnakeState_X[0] * 2;
                SnakeState_Y[0] <= SnakeState_Y[0] * 2;
                STATE_1 = 0;  // Mark higher resolution state
                STATE_0 = 1;
            end else if (!PAUSE && TRIG_1 == 1) begin
                    // Move the head of the snake based on navigation   
                case (NAV_State)
                    2'b00 :begin // UP
                        if (SnakeState_Y[0] == 0)
                            SnakeState_Y[0] <= MaxY;
                        else
                            SnakeState_Y[0] <= SnakeState_Y[0] - 1;
                    end
                    
                    2'b01 :begin // DOWN
                        if(SnakeState_Y[0] == MaxY)
                            SnakeState_Y[0] <= 0;
                        else
                            SnakeState_Y[0] <= SnakeState_Y[0] + 1;
                    end
                    
                    2'b10 : begin // LEFT
                       if(SnakeState_X[0] == 0)
                           SnakeState_X[0] <= MaxX;
                       else
                           SnakeState_X[0] <= SnakeState_X[0] - 1;
                    end
                     
                    2'b11 : begin
                        if(SnakeState_X[0] == MaxX)
                            SnakeState_X[0] <= 0;
                        else
                            SnakeState_X[0] <= SnakeState_X[0] + 1;
                    end
                endcase
            end 
        end
    endmodule