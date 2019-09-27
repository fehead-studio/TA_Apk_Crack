.class public final Lcom/android/cglib/dx/c/c/i;
.super Lcom/android/cglib/dx/c/c/r;


# instance fields
.field private a:Lcom/android/cglib/dx/c/c/j;


# virtual methods
.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/i;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enum"

    return-object v0
.end method

.method public f()Lcom/android/cglib/dx/c/c/j;
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/i;->a:Lcom/android/cglib/dx/c/c/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/i;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/i;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/c/c/j;-><init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V

    iput-object v0, p0, Lcom/android/cglib/dx/c/c/i;->a:Lcom/android/cglib/dx/c/c/j;

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/c/i;->a:Lcom/android/cglib/dx/c/c/j;

    return-object v0
.end method
