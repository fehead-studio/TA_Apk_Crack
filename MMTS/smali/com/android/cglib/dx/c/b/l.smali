.class public final Lcom/android/cglib/dx/c/b/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "fill-array-data"

    return-object p0

    :pswitch_2
    const-string p0, "move-result-pseudo"

    return-object p0

    :pswitch_3
    const-string p0, "move-result"

    return-object p0

    :pswitch_4
    const-string p0, "invoke-interface"

    return-object p0

    :pswitch_5
    const-string p0, "invoke-direct"

    return-object p0

    :pswitch_6
    const-string p0, "invoke-super"

    return-object p0

    :pswitch_7
    const-string p0, "invoke-virtual"

    return-object p0

    :pswitch_8
    const-string p0, "invoke-static"

    return-object p0

    :pswitch_9
    const-string p0, "put-static"

    return-object p0

    :pswitch_a
    const-string p0, "put-field"

    return-object p0

    :pswitch_b
    const-string p0, "get-static"

    return-object p0

    :pswitch_c
    const-string p0, "get-field"

    return-object p0

    :pswitch_d
    const-string p0, "instance-of"

    return-object p0

    :pswitch_e
    const-string p0, "check-cast"

    return-object p0

    :pswitch_f
    const-string p0, "filled-new-array"

    return-object p0

    :pswitch_10
    const-string p0, "new-array"

    return-object p0

    :pswitch_11
    const-string p0, "new-instance"

    return-object p0

    :pswitch_12
    const-string p0, "aput"

    return-object p0

    :pswitch_13
    const-string p0, "aget"

    return-object p0

    :pswitch_14
    const-string p0, "monitor-exit"

    return-object p0

    :pswitch_15
    const-string p0, "monitor-enter"

    return-object p0

    :pswitch_16
    const-string p0, "throw"

    return-object p0

    :pswitch_17
    const-string p0, "array-length"

    return-object p0

    :pswitch_18
    const-string p0, "return"

    return-object p0

    :pswitch_19
    const-string p0, "to-short"

    return-object p0

    :pswitch_1a
    const-string p0, "to-char"

    return-object p0

    :pswitch_1b
    const-string p0, "to-byte"

    return-object p0

    :pswitch_1c
    const-string p0, "conv"

    return-object p0

    :pswitch_1d
    const-string p0, "cmpg"

    return-object p0

    :pswitch_1e
    const-string p0, "cmpl"

    return-object p0

    :pswitch_1f
    const-string p0, "not"

    return-object p0

    :pswitch_20
    const-string p0, "ushr"

    return-object p0

    :pswitch_21
    const-string p0, "shr"

    return-object p0

    :pswitch_22
    const-string p0, "shl"

    return-object p0

    :pswitch_23
    const-string p0, "xor"

    return-object p0

    :pswitch_24
    const-string p0, "or"

    return-object p0

    :pswitch_25
    const-string p0, "and"

    return-object p0

    :pswitch_26
    const-string p0, "neg"

    return-object p0

    :pswitch_27
    const-string p0, "rem"

    return-object p0

    :pswitch_28
    const-string p0, "div"

    return-object p0

    :pswitch_29
    const-string p0, "mul"

    return-object p0

    :pswitch_2a
    const-string p0, "sub"

    return-object p0

    :pswitch_2b
    const-string p0, "add"

    return-object p0

    :pswitch_2c
    const-string p0, "switch"

    return-object p0

    :pswitch_2d
    const-string p0, "if-gt"

    return-object p0

    :pswitch_2e
    const-string p0, "if-le"

    return-object p0

    :pswitch_2f
    const-string p0, "if-ge"

    return-object p0

    :pswitch_30
    const-string p0, "if-lt"

    return-object p0

    :pswitch_31
    const-string p0, "if-ne"

    return-object p0

    :pswitch_32
    const-string p0, "if-eq"

    return-object p0

    :pswitch_33
    const-string p0, "goto"

    return-object p0

    :pswitch_34
    const-string p0, "const"

    return-object p0

    :pswitch_35
    const-string p0, "move-exception"

    return-object p0

    :pswitch_36
    const-string p0, "move-param"

    return-object p0

    :pswitch_37
    const-string p0, "move"

    return-object p0

    :pswitch_38
    const-string p0, "nop"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
