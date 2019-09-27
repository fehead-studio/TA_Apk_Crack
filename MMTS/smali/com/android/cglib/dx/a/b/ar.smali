.class public final Lcom/android/cglib/dx/a/b/ar;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/d/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/d/e;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    check-cast p1, Lcom/android/cglib/dx/a/b/ar;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v0, p1}, Lcom/android/cglib/dx/c/d/b;->a(Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->i:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v2, v1}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/ap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ar;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v3, v1}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/d/c;)I

    move-result v4

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/c;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v5, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v1, v2}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/d/c;)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ar;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v0}, Lcom/android/cglib/dx/c/d/b;->b(Lcom/android/cglib/dx/c/d/e;)I

    move-result v0

    return v0
.end method
