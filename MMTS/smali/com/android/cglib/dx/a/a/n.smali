.class public abstract Lcom/android/cglib/dx/a/a/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/c/b/n;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/android/cglib/dx/c/c/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p0, Lcom/android/cglib/dx/c/c/m;

    if-eqz v1, :cond_0

    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/p;->a_()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/android/cglib/dx/c/c/p;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v1, p0, Lcom/android/cglib/dx/c/c/o;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/cglib/dx/c/c/o;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/o;->h()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/p;->g()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-eq p1, p0, :cond_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1, v2}, Lcom/android/cglib/dx/d/i;->a(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->f(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(II)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit16 v0, p1, 0xff

    if-eq v0, p1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method protected static a(IIII)S
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-eq v0, p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n0 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 v0, p1, 0xf

    if-eq v0, p1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n1 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p2, 0xf

    if-eq v0, p2, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n2 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    and-int/lit8 v0, p3, 0xf

    if-eq v0, p3, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n3 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method protected static a(Lcom/android/cglib/dx/a/a/h;I)S
    .locals 1

    and-int/lit16 v0, p1, 0xff

    if-eq v0, p1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/j;->a()I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    if-eq v0, p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;S)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SI)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SSS)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SIS)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SSSS)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SISS)V
    .locals 6

    int-to-short v2, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short v3, p2

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SSSSS)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SJ)V
    .locals 7

    long-to-int v0, p2

    int-to-short v3, v0

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-short v4, v0

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-short v5, v0

    const/16 v0, 0x30

    shr-long/2addr p2, v0

    long-to-int p2, p2

    int-to-short v6, p2

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SSSSS)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SS)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/android/cglib/dx/d/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SSS)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/android/cglib/dx/d/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p4}, Lcom/android/cglib/dx/d/a;->c(I)V

    return-void
.end method

.method protected static a(Lcom/android/cglib/dx/d/a;SSSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p2}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p3}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p4}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p0, p5}, Lcom/android/cglib/dx/d/a;->c(I)V

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static b(II)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-eq v0, p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 v0, p1, 0xf

    if-eq v0, p1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0
.end method

.method protected static b(Lcom/android/cglib/dx/c/b/n;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/m;->c(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_2
    :pswitch_1
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static b(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static c(I)Z
    .locals 1

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static c(Lcom/android/cglib/dx/c/b/n;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v6

    if-eq v6, v4, :cond_1

    return v2

    :cond_1
    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected static d(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->c()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static d(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static e(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->d()I

    move-result p0

    int-to-short v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->h(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static e(I)Z
    .locals 1

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p0

    instance-of v0, p0, Lcom/android/cglib/dx/c/c/v;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static f(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static g(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 2

    check-cast p0, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 p0, 0x10000

    if-ge v1, p0, :cond_1

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static h(Lcom/android/cglib/dx/a/a/h;)S
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/j;->a()I

    move-result p0

    const/16 v0, 0xff

    if-lt p0, v0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-short p0, p0

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extended opcode out of range 255..65535"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
.end method

.method public final a(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/a/n;->b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
.end method

.method public a(Lcom/android/cglib/dx/a/a/z;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
.end method

.method public abstract b(Lcom/android/cglib/dx/a/a/h;)Z
.end method

.method public c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;
    .locals 0

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method
