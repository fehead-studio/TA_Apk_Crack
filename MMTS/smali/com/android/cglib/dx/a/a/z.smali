.class public final Lcom/android/cglib/dx/a/a/z;
.super Lcom/android/cglib/dx/a/a/l;


# instance fields
.field private a:Lcom/android/cglib/dx/a/a/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/a/l;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    if-nez p4, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p4, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/e;)Lcom/android/cglib/dx/a/a/z;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V

    return-object v1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    if-nez v0, :cond_0

    const-string v0, "????"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/e;->f()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/e;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
