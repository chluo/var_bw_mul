// variable bit-width adders
//
// TT

// Modified full adder
// control signal can zero out carry out
// no carry out
module MFA_nco
(
    input   a,
    input   b,
    input   ci,
    input   control,
    output  s,
    output  co
);

    wire    orig_carry;

    assign {orig_carry, s} = a + b + ci;
    assign co = (control == 1'b1) ? orig_carry : 1'b0;

endmodule

// Modified full adder
// control signal can zore out carry in
// no carry in
module MFA_nci
(
    input   a,
    input   b,
    input   ci,
    input   control,
    output  s,
    output  co
);

    assign w1 = a & b;
    assign w2 = a | b;
    assign w3 = ~w1;
    assign w4 = w3 & w2;
    assign w5 = w4 & control;
    assign w6 = w5 & ci;
    assign w7 = w5 | ci;
    assign w8 = ~w6;
    assign w9 = w8 & w7;
    assign s = control ? w9 : w4;
    assign co = w6 | w1;

endmodule

// ordinary adder
// with parameterized width
module adder
#(
    parameter WIDTH = 7
)
(
    input   [WIDTH-1:0]     a,
    input   [WIDTH-1:0]     b,
    input                   ci,
    output  [WIDTH-1:0]     s,
    output                  co
);

    assign {co, s} = a + b + ci;

endmodule

// parameterized adder
// leading FA (MSB) is a MFA_nco
// rest adders are ordinary adders
module adder_nco
#(
    parameter WIDTH = 8
)
(
    input   [WIDTH-1:0]     a,
    input   [WIDTH-1:0]     b,
    input                   ci,
    input                   control,
    output  [WIDTH-1:0]     s,
    output                  co
);

    wire    internal_carry;

    adder #(WIDTH-1) adder_inst
    (
        a[WIDTH-2:0],
        b[WIDTH-2:0],
        ci,
        s[WIDTH-2:0],
        internal_carry
    );

    MFA_nco mfa_inst
    (
        a[WIDTH-1],
        b[WIDTH-1],
        internal_carry,
        control,
        s[WIDTH-1],
        co
    );

endmodule

// parameterized adder
// tailing FA (LSB) is a MFA_nci
// rest adders are ordinary adders
module adder_nci
#(
    parameter WIDTH = 8
)
(
    input   [WIDTH-1:0]     a,
    input   [WIDTH-1:0]     b,
    input                   ci,
    input                   control,
    output  [WIDTH-1:0]     s,
    output                  co
);

    wire internal_carry;

    MFA_nci mfa_inst
    (
        a[0],
        b[0],
        ci,
        control,
        s[0],
        internal_carry
    );

    adder #(WIDTH-1) adder_inst
    (
        a[WIDTH-1:1],
        b[WIDTH-1:1],
        internal_carry,
        s[WIDTH-1:1],
        co
    );

endmodule

// vbw adder written in pure behavior code
// used as the reference for functional verification
module vbw_adder_bhv
(
    input   [63:0]      a,
    input   [63:0]      b,
    input               ci,
    input   [1:0]       control,
    output  reg     [63:0]      s,
    output  reg                 co
);

    always @(*) begin
        case (control)
            2'b00: {co, s} = a + b + ci;
            2'b01: begin
                s[63:32] = a[63:32] + b[63:32];
                s[31:0] = a[31:0] + b[31:0];
                co = 1'b0;
            end
            2'b10: begin
                s[63:48] = a[63:48] + b[63:48];
                s[47:32] = a[47:32] + b[47:32];
                s[31:16] = a[31:16] + b[31:16];
                s[15:0] = a[15:0] + b[15:0];
                co = 1'b0;
            end
            2'b11: begin
                s[63:56] = a[63:56] + b[63:56];
                s[55:48] = a[55:48] + b[55:48];
                s[47:40] = a[47:40] + b[47:40];
                s[39:32] = a[39:32] + b[39:32];
                s[31:24] = a[31:24] + b[31:24];
                s[23:16] = a[23:16] + b[23:16];
                s[15:8] = a[15:8] + b[15:8];
                s[7:0] = a[7:0] + b[7:0];
                co = 1'b0;
            end
        endcase
    end

endmodule

// Baseline design
// uses adders in different bit widths and muxes
module vbw_adder_bsln
(
    input   [63:0]      a,
    input   [63:0]      b,
    input               ci,
    input   [1:0]       control,
    output  reg     [63:0]      s,
    output              co
);

    wire    [63:0]      s64, s32, s16, s8;
    wire                controlled_ci;
    wire                controlled_co;

    assign controlled_ci = (control==2'b00)?ci:1'b0;
    assign co = (control==2'b00)?controlled_co:1'b0;

    // 1x 64bit
    adder #(64) add64(a, b, controlled_ci, s64, controlled_co);

    // 2x 32bit
    adder #(32) add32_1(a[63:32], b[63:32], 1'b0, s32[63:32], );

    // 4x 16bit
    adder #(16) add16_3(a[63:48], b[63:48], 1'b0, s16[63:48], );
    adder #(16) add16_2(a[47:32], b[47:32], 1'b0, s16[47:32], );
    adder #(16) add16_1(a[31:16], b[31:16], 1'b0, s16[31:16], );

    // 8x 8bit
    adder #(8) add8_7(a[63:56], b[63:56], 1'b0, s8[63:56], );
    adder #(8) add8_6(a[55:48], b[55:48], 1'b0, s8[55:48], );
    adder #(8) add8_5(a[47:40], b[47:40], 1'b0, s8[47:40], );
    adder #(8) add8_4(a[39:32], b[39:32], 1'b0, s8[39:32], );
    adder #(8) add8_3(a[31:24], b[31:24], 1'b0, s8[31:24], );
    adder #(8) add8_2(a[23:16], b[23:16], 1'b0, s8[23:16], );
    adder #(8) add8_1(a[15:8], b[15:8], 1'b0, s8[15:8], );

    always @(*) begin
        case (control)
            2'b00: s = s64;
            2'b01: s = {s32[63:32], s64[31:0]};
            2'b10: s = {s16[63:16], s64[15:0]};
            2'b11: s = {s8[63:8], s64[7:0]};
        endcase
    end

endmodule

// vbw adder built with "no carry out" adders
module vbw_adder_nco
(
    input   [63:0]      a,
    input   [63:0]      b,
    input               ci,
    input   [1:0]       control,
    output  [63:0]      s,
    output              co
);

    wire    [8:0]   internal_carry;
    reg     [7:0]   internal_control;

    always @(*) begin
        case (control)
            2'b00: internal_control = 8'b1111_1111;
            2'b01: internal_control = 8'b1111_0111;
            2'b10: internal_control = 8'b0101_0101;
            2'b11: internal_control = 8'b0000_0000;
        endcase
    end

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            adder_nco #(8) adder_inst
            (
                a[i*8+7:i*8],
                b[i*8+7:i*8],
                internal_carry[i],
                internal_control[i],
                s[i*8+7:i*8],
                internal_carry[i+1]
            );
        end
    endgenerate

    assign internal_carry[0] = (control == 2'b00)? ci : 1'b0;
    assign co = (control == 2'b00)? internal_carry[8] : 1'b0;

endmodule

// vbw adder built with "no carry in" adders
module vbw_adder_nci
(
    input   [63:0]      a,
    input   [63:0]      b,
    input               ci,
    input   [1:0]       control,
    output  [63:0]      s,
    output              co
);

    wire    [8:0]   internal_carry;
    reg     [7:0]   internal_control;

    always @(*) begin
        case (control)
            2'b00: internal_control = 8'b1111_1111;
            2'b01: internal_control = 8'b1110_1111;
            2'b10: internal_control = 8'b1010_1010;
            2'b11: internal_control = 8'b0000_0000;
        endcase
    end

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            adder_nci #(8) adder_inst
            (
                a[i*8+7:i*8],
                b[i*8+7:i*8],
                internal_carry[i],
                internal_control[i],
                s[i*8+7:i*8],
                internal_carry[i+1]
            );
        end
    endgenerate

    assign internal_carry[0] = (control == 2'b00)? ci : 1'b0;
    assign co = (control == 2'b00)? internal_carry[8] : 1'b0;

endmodule
