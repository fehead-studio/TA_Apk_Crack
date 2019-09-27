.class public final Lcom/android/cglib/dx/a/b/b;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/a/c;

.field private final b:[Lcom/android/cglib/dx/a/b/a;


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/b;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->a:Lcom/android/cglib/dx/c/a/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/b;->a:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/a/c;->a(Lcom/android/cglib/dx/c/a/c;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->k:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method protected a(Lcom/android/cglib/dx/a/b/ak;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/a;->a([Lcom/android/cglib/dx/a/b/a;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->n()Lcom/android/cglib/dx/a/b/af;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/a;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 6

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/a;->e()I

    move-result v3

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/b;->b:[Lcom/android/cglib/dx/a/b/a;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/cglib/dx/a/b/a;->a(Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/a;->d(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->a:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->a:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/c;->hashCode()I

    move-result v0

    return v0
.end method
