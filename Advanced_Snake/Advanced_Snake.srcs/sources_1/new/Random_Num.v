module Random_Num(
    input RESET,             // Reset signal to initialize the system
    input CLK,               // Clock signal
    input TARGET_REACHED,    // Signal indicating the target has been reached
    input WALL_REACHED,
    output reg [7:0] TARGET_ADDRH, // Horizontal target coordinate
    output reg [6:0] TARGET_ADDRV  // Vertical target coordinate
);

    // Feedback logic for LFSR_1 (8-bit) and LFSR_2 (7-bit)
    wire R_IN1 = (LFSR_1[3] ~^ (LFSR_1[4] ~^ (LFSR_1[5] ~^ LFSR_1[7])));
    wire R_IN2 = LFSR_2[6] ~^ LFSR_2[5];

    // Registers representing the LFSRs
    reg [7:0] LFSR_1; // LFSR for horizontal coordinate generation
    reg [6:0] LFSR_2; // LFSR for vertical coordinate generation

    // Counter for cycling randomness
    reg [13:0] seed_counter; // Reduced width for efficiency

    // Edge detection for TARGET_REACHED
    reg target_reached_d;
    reg wall_reached_d;
    wire target_reached_edge = TARGET_REACHED & ~target_reached_d;
    wire wall_reached_edge = WALL_REACHED & ~wall_reached_d;

    // Initialization
    initial begin
        LFSR_1 = 8'b10101010;        // Initial seed for LFSR_1
        TARGET_ADDRH = 8'b01010000;  // Initial horizontal target (centered)
        LFSR_2 = 7'b1010101;         // Initial seed for LFSR_2
        TARGET_ADDRV = 7'b0111100;   // Initial vertical target (centered)
        seed_counter = 14'd0;        // Start with a zero counter
        target_reached_d = 1'b0;
        wall_reached_d = 1'b0;
    end

    // Random seed cycling
    always @(posedge CLK) begin
        if (RESET) begin
            seed_counter <= 14'd0;
        end else begin
            seed_counter <= seed_counter + 1; // Increment the seed counter
        end
    end

    // Edge detection for TARGET_REACHED
    always @(posedge CLK) begin
        target_reached_d <= TARGET_REACHED;
        wall_reached_d <= WALL_REACHED;
    end

    // Update LFSRs on each clock cycle
    always @(posedge CLK) begin
        if (RESET) begin
            // Reinitialize LFSRs with default seeds
            LFSR_1 <= 8'b00000000 ^ seed_counter[7:0];
            LFSR_2 <= 7'b0000000 ^ seed_counter[13:7];
        end else begin
            // Shift LFSR_1 and insert feedback bit
            LFSR_1 <= {LFSR_1[6:0], R_IN1 ^ seed_counter[0]};

            // Shift LFSR_2 and insert feedback bit
            LFSR_2 <= {LFSR_2[5:0], R_IN2 ^ seed_counter[1]};
        end
    end

    // Generate random target coordinates when the target is reached
    always @(posedge CLK) begin
        if (RESET) begin
            TARGET_ADDRH <= 80; // Centered horizontal target
            TARGET_ADDRV <= 60; // Centered vertical target
        end else if (target_reached_edge || wall_reached_edge) begin
            // Generate horizontal coordinate
            TARGET_ADDRH <= LFSR_1 < 160 ? LFSR_1 : seed_counter[7:0] & 8'd159;

            // Generate vertical coordinate
            TARGET_ADDRV <= LFSR_2 < 120 ? LFSR_2 : seed_counter[13:7] & 7'd119;
        end
    end

endmodule
