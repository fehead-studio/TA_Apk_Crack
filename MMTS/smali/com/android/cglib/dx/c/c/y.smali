.class public final Lcom/android/cglib/dx/c/c/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/c/a;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/c;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no zero for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/c;->a_()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/android/cglib/dx/c/c/m;->a:Lcom/android/cglib/dx/c/c/m;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/cglib/dx/c/c/u;->a:Lcom/android/cglib/dx/c/c/u;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/cglib/dx/c/c/q;->a:Lcom/android/cglib/dx/c/c/q;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/cglib/dx/c/c/l;->b:Lcom/android/cglib/dx/c/c/l;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/cglib/dx/c/c/k;->a:Lcom/android/cglib/dx/c/c/k;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/cglib/dx/c/c/h;->a:Lcom/android/cglib/dx/c/c/h;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/cglib/dx/c/c/g;->a:Lcom/android/cglib/dx/c/c/g;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/cglib/dx/c/c/f;->a:Lcom/android/cglib/dx/c/c/f;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/cglib/dx/c/c/e;->a:Lcom/android/cglib/dx/c/c/e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
