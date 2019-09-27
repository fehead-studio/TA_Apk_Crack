.class public final Lcom/android/cglib/dx/a/b/c;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private a:Lcom/android/cglib/dx/a/b/b;


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->v:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->d()Lcom/android/cglib/dx/a/b/af;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->a:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/b;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/c;->a:Lcom/android/cglib/dx/a/b/b;

    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/c;->a:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/b;->e()I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  annotations_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->a:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
