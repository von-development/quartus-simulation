// File: DecoderDemo2.v
module DecoderDemo2 (
    input wire E1,         // Active high enable
    input wire E0_L,       // Active low enable
    input wire [3:0] X,    // Data inputs X3 to X0
    output wire [15:0] Y   // Outputs Y15 to Y0
);

// Instantiate the Dec4_16 module
Dec4_16 decoder_instance (
    .E1(E1),
    .E0_L(E0_L),
    .X(X),
    .Y(Y)
);

endmodule
