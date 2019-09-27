.class synthetic Lcom/b/a/b/k$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/androlua/LuaTokenTypes;->values()[Lcom/androlua/LuaTokenTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/b/a/b/k$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->TRUE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->FALSE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DO:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->NOT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->AND:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->OR:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->IF:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->THEN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->ELSEIF:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->ELSE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->WHILE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->FOR:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->IN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->RETURN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->BREAK:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->REPEAT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->UNTIL:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->END:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->NIL:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->SWITCH:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->CASE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DEFAULT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->CONTINUE:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LAMBDA:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DEFER:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->WHEN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LCURLY:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->RCURLY:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LPAREN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->RPAREN:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LBRACK:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->RBRACK:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->COMMA:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->LONG_STRING:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->NAME:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->SHORT_COMMENT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->BLOCK_COMMENT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DOC_COMMENT:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/b/a/b/k$1;->a:[I

    sget-object v1, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;

    invoke-virtual {v1}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
