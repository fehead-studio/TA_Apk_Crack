.class public final Lcom/android/cglib/dx/a/a/f;
.super Lcom/android/cglib/dx/a/a/l;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/a/l;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    if-nez p4, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p4, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    iput p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/cglib/dx/a/a/f;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/f;->a(I)V

    :cond_0
    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/f;->b(I)V

    :cond_1
    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/a/a/f;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/f;->a(I)V

    :cond_0
    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/f;->b(I)V

    :cond_1
    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    if-ltz v0, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    return-void
.end method

.method public b()Lcom/android/cglib/dx/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    if-ltz v0, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/android/cglib/dx/a/a/f;->c:I

    return-void
.end method

.method public c()I
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index not yet set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/f;->a:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/f;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
