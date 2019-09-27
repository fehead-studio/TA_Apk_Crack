.class public abstract Lcom/android/cglib/dx/a/b/ag;
.super Lcom/android/cglib/dx/a/b/x;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/a/b/x;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/b/ag;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:Lcom/android/cglib/dx/a/b/ak;

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/x;-><init>()V

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/ak;->a(I)V

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "writeSize < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput p1, p0, Lcom/android/cglib/dx/a/b/ag;->a:I

    iput p2, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/ag;->c:Lcom/android/cglib/dx/a/b/ak;

    iput v0, p0, Lcom/android/cglib/dx/a/b/ag;->d:I

    return-void
.end method

.method public static b(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ag;->e()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    if-ltz v0, :cond_1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writeSize already set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    return-void
.end method

.method protected a(Lcom/android/cglib/dx/a/b/ak;I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->a:I

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->h(I)V

    :try_start_0
    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writeSize is unknown"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ag;->e()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/ag;->a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object p1

    throw p1
.end method

.method protected abstract a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
.end method

.method public final b(Lcom/android/cglib/dx/a/b/ak;I)I
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addedTo == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ag;->c:Lcom/android/cglib/dx/a/b/ak;

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already written"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/ag;->c:Lcom/android/cglib/dx/a/b/ak;

    iput p2, p0, Lcom/android/cglib/dx/a/b/ag;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/ag;->a(Lcom/android/cglib/dx/a/b/ak;I)V

    return p2
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b_()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->b:I

    return v0
.end method

.method public final c(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/y;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/ag;->a(Lcom/android/cglib/dx/a/b/ag;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/ag;->c(Lcom/android/cglib/dx/a/b/ag;)I

    move-result p1

    return p1
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ag;->c:Lcom/android/cglib/dx/a/b/ak;

    iget v1, p0, Lcom/android/cglib/dx/a/b/ag;->d:I

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/ak;->c(I)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/ag;->a(Lcom/android/cglib/dx/a/b/ag;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/b/ag;->a:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ag;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
