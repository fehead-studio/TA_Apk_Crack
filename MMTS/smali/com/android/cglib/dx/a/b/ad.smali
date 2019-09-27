.class public final Lcom/android/cglib/dx/a/b/ad;
.super Lcom/android/cglib/dx/a/b/aa;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/aa;-><init>(Lcom/android/cglib/dx/c/c/r;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->f:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/aa;->a(Lcom/android/cglib/dx/a/b/l;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->k()Lcom/android/cglib/dx/a/b/aj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ad;->c()Lcom/android/cglib/dx/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/d;->f()Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/aj;->a(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/a/b/ai;

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/l;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->k()Lcom/android/cglib/dx/a/b/aj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ad;->c()Lcom/android/cglib/dx/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/d;->f()Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/aj;->b(Lcom/android/cglib/dx/c/d/a;)I

    move-result p1

    return p1
.end method

.method public c()Lcom/android/cglib/dx/c/c/d;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ad;->j()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/d;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method
