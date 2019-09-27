.class public abstract Lcom/android/cglib/dx/a/b/as;
.super Lcom/android/cglib/dx/a/b/ak;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/b/ak;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/cglib/dx/a/b/x;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/w;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/w;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/w;->b_()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/b/as;->c(I)I

    move-result p1

    return p1
.end method

.method protected final a_(Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {v3, v0, p1}, Lcom/android/cglib/dx/a/b/x;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/a;->h(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method protected final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->b()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {v2, v0}, Lcom/android/cglib/dx/a/b/x;->a(Lcom/android/cglib/dx/a/b/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c_()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/as;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/x;->b_()I

    move-result v0

    mul-int v1, v1, v0

    return v1
.end method
