.class public final Lcom/android/cglib/dx/a/b/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/d/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/cglib/dx/d/r;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/b/ac;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/s;

.field private b:Lcom/android/cglib/dx/a/b/b;


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/ac;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/s;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->d()Lcom/android/cglib/dx/a/b/af;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/ae;->a(Lcom/android/cglib/dx/c/c/d;)Lcom/android/cglib/dx/a/b/ad;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->b:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/b;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/ac;->b:Lcom/android/cglib/dx/a/b/b;

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/ae;->b(Lcom/android/cglib/dx/c/c/d;)I

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->b:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/b;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      method_idx:      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ac;->b:Lcom/android/cglib/dx/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/ac;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/ac;->a(Lcom/android/cglib/dx/a/b/ac;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/b/ac;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    check-cast p1, Lcom/android/cglib/dx/a/b/ac;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ac;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/s;->hashCode()I

    move-result v0

    return v0
.end method
