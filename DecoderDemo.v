// File: DecoderDemo.v
module DecoderDemo (
    input wire E1,
    input wire E0_L,
    input wire X1,
    input wire X0,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
);

// Instantiate the Dec2_4 module
Dec2_4 decoder_inst (
    .E1(E1),
    .E0_L(E0_L),
    .X1(X1),
    .X0(X0),
    .Y3(Y3),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0)
);

endmodule
