.class public Lcom/android/cglib/dx/a/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/w;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptionType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p2, p0, Lcom/android/cglib/dx/a/a/c$a;->b:I

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/c$a;->a:Lcom/android/cglib/dx/c/c/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/c$a;)I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/a/c$a;->b:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/c$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/c$a;->b:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/c$a;->b:I

    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/c$a;->a:Lcom/android/cglib/dx/c/c/w;

    iget-object p1, p1, Lcom/android/cglib/dx/a/a/c$a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/c$a;->a:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/c$a;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/c$a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/c$a;->a(Lcom/android/cglib/dx/a/a/c$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/a/a/c$a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/c$a;->a(Lcom/android/cglib/dx/a/a/c$a;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/a/c$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/c$a;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/w;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
