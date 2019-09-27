.class public final Lcom/android/cglib/dx/c/a/a;
.super Lcom/android/cglib/dx/d/o;

# interfaces
.implements Lcom/android/cglib/dx/d/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/d/o;",
        "Lcom/android/cglib/dx/d/r;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/w;

.field private final b:Lcom/android/cglib/dx/c/a/b;

.field private final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/cglib/dx/c/c/v;",
            "Lcom/android/cglib/dx/c/a/d;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/android/cglib/dx/c/a/a;)I
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    iget-object v1, p1, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    iget-object v1, p1, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/a/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/a/d;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/a/d;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/c/a/d;->a(Lcom/android/cglib/dx/c/a/d;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public a_()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/b;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/c/a/d;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Lcom/android/cglib/dx/c/a/d;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/a/d;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public c()Lcom/android/cglib/dx/c/a/b;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/a/a;->a(Lcom/android/cglib/dx/c/a/a;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/cglib/dx/c/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/c/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/a/a;

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    iget-object v2, p1, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/c/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    iget-object v2, p1, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    iget-object p1, p1, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/a/a;->b:Lcom/android/cglib/dx/c/a/b;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/a/a;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
