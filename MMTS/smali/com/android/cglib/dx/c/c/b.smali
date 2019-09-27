.class public final Lcom/android/cglib/dx/c/c/b;
.super Lcom/android/cglib/dx/c/c/a;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/a/a;


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    check-cast p1, Lcom/android/cglib/dx/c/c/b;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/a/a;->a(Lcom/android/cglib/dx/c/a/a;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/android/cglib/dx/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "annotation"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/c/c/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    check-cast p1, Lcom/android/cglib/dx/c/c/b;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/b;->a:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
