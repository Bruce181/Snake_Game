module Random_Colour(
    input CLK,
    input RESET,
    input TARGET_REACHED,    // Trigger to change color
    output reg [11:0] snake_color  // Snake color
    );

    // LFSR for generating random colors
    reg [11:0] LFSR; // 12-bit register for random color generation

    // Initialize the LFSR
    initial begin
        LFSR = 12'hFFF; // Default starting value
        snake_color = 12'h0FF; // Default snake color
    end

    // Update LFSR for random number generation
    always @(posedge CLK or posedge RESET) begin
        if (RESET) begin
            LFSR <= 12'hFFF; // Reset to default
        end else begin
            LFSR[11] <= LFSR[10];
            LFSR[10] <= LFSR[9];
            LFSR[9]  <= LFSR[8];
            LFSR[8]  <= LFSR[7] ^ LFSR[11]; // Feedback tap
            LFSR[7]  <= LFSR[6];
            LFSR[6]  <= LFSR[5];
            LFSR[5]  <= LFSR[4];
            LFSR[4]  <= LFSR[3];
            LFSR[3]  <= LFSR[2];
            LFSR[2]  <= LFSR[1] ^ LFSR[11];
            LFSR[1]  <= LFSR[0];
            LFSR[0]  <= LFSR[11]; // Rotate bits
        end
    end

    // Change snake color when TARGET_REACHED
    always @(posedge CLK or posedge RESET) begin
        if (RESET) begin
            snake_color <= 12'h0FF; // Reset to default color
        end else if (TARGET_REACHED) begin
            // Generate a new random color and ensure it's not a restricted value
            if (LFSR != 12'hF00 && LFSR != 12'h00F)
                snake_color <= LFSR; // Assign new valid color
            else
                snake_color <= ~12'hFFF; // Modify color if it conflicts
        end
    end
endmodule
