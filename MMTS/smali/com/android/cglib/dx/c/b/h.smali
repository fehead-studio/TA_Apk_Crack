.class public Lcom/android/cglib/dx/c/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/v;

.field private final b:Lcom/android/cglib/dx/c/c/v;


# direct methods
.method private static a(Lcom/android/cglib/dx/c/c/v;Lcom/android/cglib/dx/c/c/v;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/c/v;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/h;)I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    iget-object v1, p1, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/b/h;->a(Lcom/android/cglib/dx/c/c/v;Lcom/android/cglib/dx/c/c/v;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-static {v0, p1}, Lcom/android/cglib/dx/c/b/h;->a(Lcom/android/cglib/dx/c/c/v;Lcom/android/cglib/dx/c/c/v;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/h;->a(Lcom/android/cglib/dx/c/b/h;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/h;->a(Lcom/android/cglib/dx/c/b/h;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/v;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/h;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/h;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
