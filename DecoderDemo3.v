// File: DecoderDemo3.v
module DecoderDemo3 (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire f
);

wire [3:0] X;          // Inputs to the decoder
wire [15:0] Y;         // Outputs from the decoder

// Assign inputs to bus X
assign X = {A, B, C, D};

// Instantiate the Dec4_16 decoder
Dec4_16 decoder_instance (
    .E1(1'b1),         // Enable active high
    .E0_L(1'b0),       // Enable active low
    .X(X),
    .Y(Y)
);

// Implement the Boolean function using the decoder outputs
assign f = Y[4] | Y[5] | Y[6] | Y[7] | Y[12] | Y[13] | Y[14] | Y[15];

endmodule
