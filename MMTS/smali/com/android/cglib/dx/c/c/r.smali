.class public abstract Lcom/android/cglib/dx/c/c/r;
.super Lcom/android/cglib/dx/c/c/x;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/w;

.field private final b:Lcom/android/cglib/dx/c/c/t;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/c/x;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    iput-object p2, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/t;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 2

    check-cast p1, Lcom/android/cglib/dx/c/c/r;

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    iget-object v1, p1, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/t;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/t;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/v;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/c/r;

    iget-object v1, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    iget-object v2, p1, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/c/c/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/c/c/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final g()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public final h()Lcom/android/cglib/dx/c/c/t;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/r;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/c/r;->b:Lcom/android/cglib/dx/c/c/t;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/t;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/r;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
