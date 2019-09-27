.class public abstract Lcom/android/cglib/dx/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Lcom/android/cglib/dx/a/a/j;

.field private final c:Lcom/android/cglib/dx/c/b/s;

.field private final d:Lcom/android/cglib/dx/c/b/n;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/h;->b:Lcom/android/cglib/dx/a/a/j;

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/h;->c:Lcom/android/cglib/dx/c/b/s;

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/a/a/x;
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->j()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->i:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->c:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->f:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->j:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->d:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->g:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->k:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->e:Lcom/android/cglib/dx/a/a/j;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->h:Lcom/android/cglib/dx/a/a/j;

    :goto_1
    new-instance v1, Lcom/android/cglib/dx/a/a/x;

    invoke-static {p1, p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/util/BitSet;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v3, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v4, v0}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
.end method

.method public abstract a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/cglib/dx/a/a/h;->a(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    :goto_0
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Lcom/android/cglib/dx/d/s;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method public abstract a(Lcom/android/cglib/dx/d/a;)V
.end method

.method public b(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/n;->a(Ljava/util/BitSet;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/cglib/dx/a/a/m;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/h;->c:Lcom/android/cglib/dx/c/b/s;

    invoke-direct {p1, v1, v0}, Lcom/android/cglib/dx/a/a/m;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-object p1
.end method

.method public c(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/h;->c:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/c/b/m;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/a/a/x;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput p1, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    return-void
.end method

.method public abstract d(I)Lcom/android/cglib/dx/a/a/h;
.end method

.method public d(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/cglib/dx/c/b/n;->a(IZLjava/util/BitSet;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    return v0
.end method

.method public final g()Lcom/android/cglib/dx/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->b:Lcom/android/cglib/dx/a/a/j;

    return-object v0
.end method

.method public final h()Lcom/android/cglib/dx/c/b/s;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->c:Lcom/android/cglib/dx/c/b/s;

    return-object v0
.end method

.method public final i()Lcom/android/cglib/dx/c/b/n;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->b:Lcom/android/cglib/dx/a/a/j;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->d()Z

    move-result v0

    return v0
.end method

.method public k()Lcom/android/cglib/dx/a/a/h;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->j()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/cglib/dx/c/b/n;->a(IZLjava/util/BitSet;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/cglib/dx/a/a/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->n()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract n()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/h;->c:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/h;->b:Lcom/android/cglib/dx/a/a/j;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/h;->d:Lcom/android/cglib/dx/c/b/n;

    const-string v3, " "

    const-string v4, ", "

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/cglib/dx/c/b/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
