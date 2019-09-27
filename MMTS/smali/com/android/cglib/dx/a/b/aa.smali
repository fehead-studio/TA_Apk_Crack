.class public abstract Lcom/android/cglib/dx/a/b/aa;
.super Lcom/android/cglib/dx/a/b/v;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/r;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/r;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/r;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/v;-><init>(Lcom/android/cglib/dx/c/c/w;)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/aa;->a:Lcom/android/cglib/dx/c/c/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/v;->a(Lcom/android/cglib/dx/a/b/l;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/aa;->j()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/t;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/ao;->a(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/an;

    return-void
.end method

.method public final a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/aa;->a:Lcom/android/cglib/dx/c/c/r;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/r;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/aa;->e()Lcom/android/cglib/dx/c/c/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result v0

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/t;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/c/c/v;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/aa;->b(Lcom/android/cglib/dx/a/b/l;)I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/aa;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/aa;->a:Lcom/android/cglib/dx/c/c/r;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/r;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const-string v2, "  %-10s %s"

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/aa;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  name_idx:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method protected abstract b(Lcom/android/cglib/dx/a/b/l;)I
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final j()Lcom/android/cglib/dx/c/c/r;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->a:Lcom/android/cglib/dx/c/c/r;

    return-object v0
.end method
