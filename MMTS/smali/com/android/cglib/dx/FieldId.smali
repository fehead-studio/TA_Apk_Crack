.class public final Lcom/android/cglib/dx/FieldId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "V:",
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
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field final d:Lcom/android/cglib/dx/c/c/t;

.field final e:Lcom/android/cglib/dx/c/c/j;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "TD;>;",
            "Lcom/android/cglib/dx/TypeId<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    iput-object p2, p0, Lcom/android/cglib/dx/FieldId;->b:Lcom/android/cglib/dx/TypeId;

    iput-object p3, p0, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    new-instance v0, Lcom/android/cglib/dx/c/c/t;

    new-instance v1, Lcom/android/cglib/dx/c/c/v;

    invoke-direct {v1, p3}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/android/cglib/dx/c/c/v;

    iget-object p2, p2, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-direct {p3, p2}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lcom/android/cglib/dx/c/c/t;-><init>(Lcom/android/cglib/dx/c/c/v;Lcom/android/cglib/dx/c/c/v;)V

    iput-object v0, p0, Lcom/android/cglib/dx/FieldId;->d:Lcom/android/cglib/dx/c/c/t;

    new-instance p2, Lcom/android/cglib/dx/c/c/j;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    iget-object p3, p0, Lcom/android/cglib/dx/FieldId;->d:Lcom/android/cglib/dx/c/c/t;

    invoke-direct {p2, p1, p3}, Lcom/android/cglib/dx/c/c/j;-><init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V

    iput-object p2, p0, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/FieldId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/FieldId;

    iget-object v0, p1, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, p0, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/cglib/dx/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/cglib/dx/TypeId<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/FieldId;->b:Lcom/android/cglib/dx/TypeId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0}, Lcom/android/cglib/dx/TypeId;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/FieldId;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
