.class public Lcom/android/cglib/dx/a/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/a/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/android/cglib/dx/a/a/c;


# direct methods
.method public constructor <init>(IILcom/android/cglib/dx/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gt p2, p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p3}, Lcom/android/cglib/dx/a/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput p1, p0, Lcom/android/cglib/dx/a/a/d$a;->a:I

    iput p2, p0, Lcom/android/cglib/dx/a/a/d$a;->b:I

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/d$a;->c:Lcom/android/cglib/dx/a/a/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->a:I

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/d$a;)I
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->a:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/d$a;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->a:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/d$a;->a:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->b:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/d$a;->b:I

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->b:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/d$a;->b:I

    if-le v0, v1, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/d$a;->c:Lcom/android/cglib/dx/a/a/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/a/d$a;->c:Lcom/android/cglib/dx/a/a/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/c;->a(Lcom/android/cglib/dx/a/a/c;)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->b:I

    return v0
.end method

.method public c()Lcom/android/cglib/dx/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/d$a;->c:Lcom/android/cglib/dx/a/a/c;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/d$a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/d$a;->a(Lcom/android/cglib/dx/a/a/d$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/d$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/a/a/d$a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/d$a;->a(Lcom/android/cglib/dx/a/a/d$a;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/a/d$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/cglib/dx/a/a/d$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/d$a;->c:Lcom/android/cglib/dx/a/a/c;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
