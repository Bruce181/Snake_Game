module Snake_Wrapper(
    input CLK,
    input RESET,
    input BTNU,
    input BTND,
    input BTNL,
    input BTNR,
    input Pause,
    input Wall,
    input Time_Limit,
    input Accelerator,
    input Resolution,
    output [11:0] COLOUR_OUT,
    output HS,
    output VS,
    output [7:0] HEX_OUT,        // 7-segment display output (a-g + dp)
    output [3:0] SEG_SELECT_OUT, // 4-digit enable signal
    output [7:0] OUT
);

    // State Machine Signals
    wire [1:0] MSM_State; // Master state (e.g., PLAY, WIN, LOST)
    wire [1:0] NAV_State; // Navigation state (e.g., UP, DOWN, LEFT, RIGHT)

    // VGA Signals
    wire [11:0] Snake_Colour;
    wire [11:0] COLOUR_TRANS;
    wire [9:0] ADDRH;     // Horizontal address for VGA
    wire [8:0] ADDRV;     // Vertical address for VGA

    // Random Number Signals
    wire [7:0] TARGET_ADDRH; // Target horizontal coordinate
    wire [6:0] TARGET_ADDRV; // Target vertical coordinate

    // Game Status Signals
    wire LOSER;
    wire TARGET_REACHED; // Trigger for target updates
    wire WALL_REACHED;
    wire WIN;            // Win signal
    wire LOST;           // Lose signal

    // Navigation State Machine
    Navigation_State_Machine NAV(
        .CLK(CLK),
        .BTNU(BTNU),
        .BTND(BTND),
        .BTNL(BTNL),
        .BTNR(BTNR),
        .RESET(RESET),
        .NAV_State(NAV_State) // Navigation state output
    );

    // Master State Machine
    Master_State_Machine Master(
        .CLK(CLK),
        .BTNU(BTNU),
        .BTND(BTND),
        .BTNL(BTNL),
        .BTNR(BTNR),
        .RESET(RESET),
        .WIN(WIN),            // Win signal
        .LOST(LOST),          // Lose signal
        .MSM_State(MSM_State) // Master state output
    );

    Random_Num APPLE(
        .RESET(RESET),                    // Connect RESET to wrapper's RESET
        .CLK(CLK),                        // Connect CLK to wrapper's CLK
        .TARGET_REACHED(TARGET_REACHED),  // Connect TARGET_REACHED from Snake_Control
        .WALL_REACHED(WALL_REACHED),
        .TARGET_ADDRH(TARGET_ADDRH),      // Connect wrapper signal TARGET_ADDRH
        .TARGET_ADDRV(TARGET_ADDRV)       // Connect wrapper signal TARGET_ADDRV
    );

    // Score Counter
    Score_Counter MARK(
        .CLK(CLK),
        .LOSER(LOSER),
        .RESET(RESET),
        .PAUSE(Pause),
        .Time_Limit(Time_Limit),
        .TARGET_REACHED(TARGET_REACHED), // Increment score on target reached
        .MSM_State(MSM_State),           // Master state input
        .SEG_SELECT_OUT(SEG_SELECT_OUT), // 7-segment display digit enable
        .HEX_OUT(HEX_OUT),               // 7-segment display output
        .LOST(LOST),                     // Lose signal
        .WIN(WIN)                        // Win signal
    );

    // VGA Interface
    VGA_Interface VGA(
        .CLK(CLK),
        .COLOUR_IN(COLOUR_TRANS),
        .ADDRH(ADDRH),
        .ADDRV(ADDRV),
        .COLOUR_OUT(COLOUR_OUT),
        .HS(HS),
        .VS(VS)
    );
    // the colour of snake
    Random_Colour Appearance(
        .CLK(CLK),
        .RESET(RESET),
        .TARGET_REACHED(TARGET_REACHED),
        .snake_color(Snake_Colour)
        );

    // Snake Control Module
    Snake_Control Snake_C(
        .CLK(CLK),
        .Snake_Colour(Snake_Colour),
        .RESET(RESET),
        .PAUSE(Pause),
        .WALL(Wall),
        .Accelerator(Accelerator),
        .Resolution(Resolution),
        .MSM_State(MSM_State),           // Connect Master State Machine state
        .NAV_State(NAV_State),           // Connect Navigation State Machine state
        .ADDRH(ADDRH),                   // Horizontal address from VGA
        .ADDRV(ADDRV),                   // Vertical address from VGA
        .TARGET_ADDRH(TARGET_ADDRH),     // Target horizontal coordinate
        .TARGET_ADDRV(TARGET_ADDRV),     // Target vertical coordinate
        .TARGET_REACHED(TARGET_REACHED), // Output to Random_Num and Score_Counter
        .WALL_REACHED(WALL_REACHED),
        .LOST(LOST),                     // Lose signal
        .WIN(WIN),  
        .LOSER(LOSER),                     // Win signal
        .COLOUR_OUT(COLOUR_TRANS),        // Pass color data to VGA
        .OUT(OUT)
    );

endmodule
