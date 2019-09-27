.class public final Lcom/android/cglib/dx/MethodId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "TD;>;"
        }
    .end annotation
.end field

.field final b:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field final d:Lcom/android/cglib/dx/TypeList;

.field final e:Lcom/android/cglib/dx/c/c/t;

.field final f:Lcom/android/cglib/dx/c/c/s;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/String;Lcom/android/cglib/dx/TypeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "TD;>;",
            "Lcom/android/cglib/dx/TypeId<",
            "TR;>;",
            "Ljava/lang/String;",
            "Lcom/android/cglib/dx/TypeList;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    iput-object p2, p0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    iput-object p3, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    new-instance p2, Lcom/android/cglib/dx/c/c/t;

    new-instance p4, Lcom/android/cglib/dx/c/c/v;

    invoke-direct {p4, p3}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/android/cglib/dx/c/c/v;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/MethodId;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p4, p3}, Lcom/android/cglib/dx/c/c/t;-><init>(Lcom/android/cglib/dx/c/c/v;Lcom/android/cglib/dx/c/c/v;)V

    iput-object p2, p0, Lcom/android/cglib/dx/MethodId;->e:Lcom/android/cglib/dx/c/c/t;

    new-instance p2, Lcom/android/cglib/dx/c/c/s;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    iget-object p3, p0, Lcom/android/cglib/dx/MethodId;->e:Lcom/android/cglib/dx/c/c/t;

    invoke-direct {p2, p1, p3}, Lcom/android/cglib/dx/c/c/s;-><init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V

    iput-object p2, p0, Lcom/android/cglib/dx/MethodId;->f:Lcom/android/cglib/dx/c/c/s;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeList;->a:[Lcom/android/cglib/dx/TypeId;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Z)Lcom/android/cglib/dx/c/d/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/MethodId;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/d/a;->a(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/MethodId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/MethodId;

    iget-object v0, p1, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/TypeList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDeclaringType()Lcom/android/cglib/dx/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/cglib/dx/TypeId<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    invoke-virtual {v0}, Lcom/android/cglib/dx/TypeList;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/android/cglib/dx/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/cglib/dx/TypeId<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0}, Lcom/android/cglib/dx/TypeId;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    invoke-virtual {v0}, Lcom/android/cglib/dx/TypeList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0}, Lcom/android/cglib/dx/TypeId;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isConstructor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
