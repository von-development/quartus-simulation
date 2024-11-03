// File: Dec4_16.v
module Dec4_16 (
    input wire E1,       // Active high enable
    input wire E0_L,     // Active low enable
    input wire [3:0] X,  // Data inputs X3 to X0
    output wire [15:0] Y // Outputs Y15 to Y0
);

// Internal enable signals for low-level decoders
wire [3:0] EN;

// High-level 2:4 decoder instance
Dec2_4 high_decoder (
    .E1(E1),
    .E0_L(E0_L),
    .X1(X[3]),
    .X0(X[2]),
    .Y3(EN[3]),
    .Y2(EN[2]),
    .Y1(EN[1]),
    .Y0(EN[0])
);

// Low-level 2:4 decoder instances
// Decoder for Y[3:0]
Dec2_4 low_decoder0 (
    .E1(EN[0]),
    .E0_L(1'b0),  // Active low enable tied to ground (active)
    .X1(X[1]),
    .X0(X[0]),
    .Y3(Y[3]),
    .Y2(Y[2]),
    .Y1(Y[1]),
    .Y0(Y[0])
);

// Decoder for Y[7:4]
Dec2_4 low_decoder1 (
    .E1(EN[1]),
    .E0_L(1'b0),
    .X1(X[1]),
    .X0(X[0]),
    .Y3(Y[7]),
    .Y2(Y[6]),
    .Y1(Y[5]),
    .Y0(Y[4])
);

// Decoder for Y[11:8]
Dec2_4 low_decoder2 (
    .E1(EN[2]),
    .E0_L(1'b0),
    .X1(X[1]),
    .X0(X[0]),
    .Y3(Y[11]),
    .Y2(Y[10]),
    .Y1(Y[9]),
    .Y0(Y[8])
);

// Decoder for Y[15:12]
Dec2_4 low_decoder3 (
    .E1(EN[3]),
    .E0_L(1'b0),
    .X1(X[1]),
    .X0(X[0]),
    .Y3(Y[15]),
    .Y2(Y[14]),
    .Y1(Y[13]),
    .Y0(Y[12])
);

endmodule
