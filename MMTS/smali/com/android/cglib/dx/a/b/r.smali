.class public final Lcom/android/cglib/dx/a/b/r;
.super Lcom/android/cglib/dx/a/b/aa;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/aa;-><init>(Lcom/android/cglib/dx/c/c/r;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->e:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/aa;->a(Lcom/android/cglib/dx/a/b/l;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/r;->c()Lcom/android/cglib/dx/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/j;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/ap;

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/l;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/r;->c()Lcom/android/cglib/dx/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/j;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/d/c;)I

    move-result p1

    return p1
.end method

.method public c()Lcom/android/cglib/dx/c/c/j;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/r;->j()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/j;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "type_idx"

    return-object v0
.end method
