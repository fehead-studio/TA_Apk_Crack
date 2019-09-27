.class public final Lcom/android/cglib/dx/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/v;

.field private final b:Lcom/android/cglib/dx/c/c/a;


# virtual methods
.method public a(Lcom/android/cglib/dx/c/a/d;)I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    iget-object v1, p1, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/v;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    iget-object p1, p1, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/a/d;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/a/d;->a(Lcom/android/cglib/dx/c/a/d;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/c/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/a/d;

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    iget-object v2, p1, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/c/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    iget-object p1, p1, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/d;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/d;->b:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
