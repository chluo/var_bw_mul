// Variable bit-width carry lookahead adders
//
// TT

module MFA
(
    input   a,
    input   b,
    input   ci,
    output  p,
    output  g,
    output  s
);

    assign g = a & b;
    assign p = a ^ b;
    assign s = p ^ ci;

endmodule

module LA4
(
    input   [3:0]   g,
    input   [3:0]   p,
    input           ci,
    output          G,
    output          P,
    output  [3:0]   co
);

    assign P = &p;
    assign G = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]);
    assign co[0] = ci;
    assign co[1] = g[0] | (p[0] & ci);
    assign co[2] = g[1] | (g[0] & p[1]) | (p[0] & p[1] & ci);
    assign co[3] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (p[0] & p[1] & p[2] & ci);

endmodule

module LA2
(
    input   [1:0]   g,
    input   [1:0]   p,
    input           ci,
    output          G,
    output          P,
    output  [1:0]   co
);

    assign P = &p;
    assign G = g[1] | (g[0] & p[1]);
    assign co[0] = ci;
    assign co[1] = g[0] | (p[0] & ci);

endmodule

module cla_adder
#(
    parameter WIDTH = 64
)
(
    input   [WIDTH-1:0]     a,
    input   [WIDTH-1:0]     b,
    input                   ci,
    output  [WIDTH-1:0]     s,
    output                  co
);

    wire    [WIDTH-1:0]     p, g;
    wire    [WIDTH-1:0]     internal_ci;

    MFA mfa_inst [WIDTH-1:0] (a, b, internal_ci, p, g, s);

    generate
        if (WIDTH == 64) begin
            wire    [15:0]      p1, g1, ci1;
            wire    [3:0]       p2, g2, ci2;
            wire                p3, g3;
            
            LA4 layer1 [15:0]   (g, p, ci1, g1, p1, internal_ci);
            LA4 layer2 [3:0]    (g1, p1, ci2, g2, p2, ci1);
            LA4 layer3          (g2, p2, ci, g3, p3, ci2);

            assign co = g3 | (p3 & ci);
        end
        else if (WIDTH == 32) begin
            wire    [7:0]       p1, g1, ci1;
            wire    [1:0]       p2, g2, ci2;
            wire                p3, g3;
            
            LA4 layer1 [7:0]    (g, p, ci1, g1, p1, internal_ci);
            LA4 layer2 [1:0]    (g1, p1, ci2, g2, p2, ci1);
            LA2 layer3          (g2, p2, ci, g3, p3, ci2);

            assign co = g3 | (p3 & ci);
        end
        else if (WIDTH == 16) begin
            wire    [3:0]       p1, g1, ci1;
            wire                p2, g2;
            
            LA4 layer1 [3:0]    (g, p, ci1, g1, p1, internal_ci);
            LA4 layer2          (g1, p1, ci, g2, p2, ci1);
            assign co = g2 | (p2 & ci);
        end
        else if (WIDTH == 8) begin
            wire    [1:0]       p1, g1, ci1;
            wire                p2, g2;
            
            LA4 layer1 [1:0]    (g, p, ci1, g1, p1, internal_ci);
            LA2 layer2          (g1, p1, ci, g2, p2, ci1);
            assign co = g2 | (p2 & ci);
        end
    endgenerate

endmodule

// Baseline design
// uses adders in different bit widths and muxes
module vbw_cla_bsln
(
    input       [63:0]  a,
    input       [63:0]  b,
    input               ci,
    input       [1:0]   control,
    output  reg [63:0]  s,
    output              co
);

    wire    [63:0]      s64, s32, s16, s8;
    wire                controlled_ci;
    wire                controlled_co;

    assign controlled_ci = (control==2'b00)?ci:1'b0;
    assign co = (control==2'b00)?controlled_co:1'b0;

    // 1x 64bit
    cla_adder #(64) add64(a, b, controlled_ci, s64, controlled_co);

    // 2x 32bit
    cla_adder #(32) add32_1(a[63:32], b[63:32], 1'b0, s32[63:32], );

    // 4x 16bit
    cla_adder #(16) add16_3(a[63:48], b[63:48], 1'b0, s16[63:48], );
    cla_adder #(16) add16_2(a[47:32], b[47:32], 1'b0, s16[47:32], );
    cla_adder #(16) add16_1(a[31:16], b[31:16], 1'b0, s16[31:16], );

    // 8x 8bit
    cla_adder #(8) add8_7(a[63:56], b[63:56], 1'b0, s8[63:56], );
    cla_adder #(8) add8_6(a[55:48], b[55:48], 1'b0, s8[55:48], );
    cla_adder #(8) add8_5(a[47:40], b[47:40], 1'b0, s8[47:40], );
    cla_adder #(8) add8_4(a[39:32], b[39:32], 1'b0, s8[39:32], );
    cla_adder #(8) add8_3(a[31:24], b[31:24], 1'b0, s8[31:24], );
    cla_adder #(8) add8_2(a[23:16], b[23:16], 1'b0, s8[23:16], );
    cla_adder #(8) add8_1(a[15:8], b[15:8], 1'b0, s8[15:8], );

    always @(*) begin
        case (control)
            2'b00: s = s64;
            2'b01: s = {s32[63:32], s64[31:0]};
            2'b10: s = {s16[63:16], s64[15:0]};
            2'b11: s = {s8[63:8], s64[7:0]};
        endcase
    end

endmodule

// Baseline design
// uses adders in different bit widths and muxes
module vbw_cla_kill
(
    input       [63:0]  a,
    input       [63:0]  b,
    input               ci,
    input       [1:0]   control,
    output      [63:0]  s,
    output              co
);
    wire    [63:0]      p, g;
    wire    [63:0]      p_controlled, g_controlled;
    wire    [63:0]      internal_ci;
    wire    [15:0]      p1, g1, ci1;
    wire    [3:0]       p2, g2, ci2;
    wire                p3, g3;
    reg     [63:0]      internal_control;
    wire                ci_controlled, co_controlled;

    always @(*) begin
        case (control)
            2'b00: internal_control = 64'hffff_ffff_ffff_ffff;
            2'b01: internal_control = 64'hffff_ffff_7fff_ffff;
            2'b10: internal_control = 64'h7fff_7fff_7fff_7fff;
            2'b11: internal_control = 64'h7f7f_7f7f_7f7f_7f7f;
        endcase
    end

    MFA mfa_inst [63:0] (a, b, internal_ci, p, g, s);

    assign p_controlled = p & internal_control;
    assign g_controlled = g & internal_control;

    LA4 layer1 [15:0]   (g_controlled, p_controlled, ci1, g1, p1, internal_ci);
    LA4 layer2 [3:0]    (g1, p1, ci2, g2, p2, ci1);
    LA4 layer3          (g2, p2, ci_controlled, g3, p3, ci2);

    assign co_controlled = g3 | (p3 & ci_controlled);

    assign ci_controlled = (control == 2'b00)? ci : 1'b0;
    assign co = (control == 2'b00)? co_controlled : 1'b0;

endmodule

module vbw_cla_nci
(
    input       [63:0]  a,
    input       [63:0]  b,
    input               ci,
    input       [1:0]   control,
    output      [63:0]  s,
    output              co
);

    wire    [63:0]  p1, g1, ci1;
    wire    [31:0]  p2, g2, ci2;
    wire    [15:0]  p3, g3, ci3;
    wire    [7:0]   p4, g4, ci4, ci4_controlled;
    wire    [3:0]   p5, g5, ci5, ci5_controlled;
    wire    [1:0]   p6, g6, ci6, ci6_controlled;
    wire            p7, g7;
    wire            ci_controlled, co_controlled;

    MFA mfa_inst [63:0] (a, b, ci1, p1, g1, s);

    LA2 layer1 [31:0] (g1, p1, ci2, g2, p2, ci1);
    LA2 layer2 [15:0] (g2, p2, ci3, g3, p3, ci2);
    LA2 layer3 [7:0]  (g3, p3, ci4_controlled, g4, p4, ci3);
    LA2 layer4 [3:0]  (g4, p4, ci5_controlled, g5, p5, ci4);
    LA2 layer5 [1:0]  (g5, p5, ci6_controlled, g6, p6, ci5);
    LA2 layer6        (g6, p6, ci_controlled, g7, p7, ci6);

    assign co_controlled = g7 | (p7 & ci);

    assign ci6_controlled = (control == 2'b01)? 2'b0 : ci6;
    assign ci5_controlled = (control == 2'b10)? 4'b0 : ci5;
    assign ci4_controlled = (control == 2'b11)? 8'b0 : ci4;

    assign ci_controlled = (control == 2'b00)? ci: 1'b0;
    assign co = (control == 2'b00)? co_controlled : 1'b0;

endmodule
