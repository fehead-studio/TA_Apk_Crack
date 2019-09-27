.class public final Lcom/android/cglib/dx/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/d/l;


# instance fields
.field private final a:I

.field private final b:Lcom/android/cglib/dx/c/b/g;

.field private final c:Lcom/android/cglib/dx/d/k;

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/android/cglib/dx/c/b/g;Lcom/android/cglib/dx/d/k;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/g;->i()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/g;->a()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_3

    invoke-virtual {p2, v1}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/f;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insns["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is a branch or can throw"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/f;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :try_start_1
    invoke-virtual {p3}, Lcom/android/cglib/dx/d/k;->i()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-ge p4, v0, :cond_5

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-ltz p4, :cond_6

    invoke-virtual {p3, p4}, Lcom/android/cglib/dx/d/k;->f(I)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "primarySuccessor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not in successors "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iput p1, p0, Lcom/android/cglib/dx/c/b/b;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/c/b/b;->b:Lcom/android/cglib/dx/c/b/g;

    iput-object p3, p0, Lcom/android/cglib/dx/c/b/b;->c:Lcom/android/cglib/dx/d/k;

    iput p4, p0, Lcom/android/cglib/dx/c/b/b;->d:I

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/b;->a:I

    return v0
.end method

.method public b()Lcom/android/cglib/dx/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->b:Lcom/android/cglib/dx/c/b/g;

    return-object v0
.end method

.method public c()Lcom/android/cglib/dx/d/k;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->c:Lcom/android/cglib/dx/d/k;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/b;->d:I

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->c:Lcom/android/cglib/dx/d/k;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/k;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->c:Lcom/android/cglib/dx/d/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/k;->a(I)I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/c/b/b;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->c:Lcom/android/cglib/dx/d/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/k;->a(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Lcom/android/cglib/dx/c/b/f;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->b:Lcom/android/cglib/dx/c/b/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/g;->b()Lcom/android/cglib/dx/c/b/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/b;->b:Lcom/android/cglib/dx/c/b/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/g;->b()Lcom/android/cglib/dx/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/f;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/cglib/dx/c/b/b;->a:I

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
