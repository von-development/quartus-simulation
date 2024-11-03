// File: Dec2_4.v
module Dec2_4 (
    input wire E1,       // Active high enable
    input wire E0_L,     // Active low enable
    input wire X1,
    input wire X0,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
);

// Internal signals for inverted inputs
wire E0;    // Inverted E0_L
wire X1_L;  // Inverted X1
wire X0_L;  // Inverted X0

// Invert active low enable
assign E0 = ~E0_L;

// Invert inputs
assign X1_L = ~X1;
assign X0_L = ~X0;

// Output equations based on the truth table
assign Y0 = E1 & E0 & X1_L & X0_L;
assign Y1 = E1 & E0 & X1_L & X0;
assign Y2 = E1 & E0 & X1 & X0_L;
assign Y3 = E1 & E0 & X1 & X0;

endmodule
