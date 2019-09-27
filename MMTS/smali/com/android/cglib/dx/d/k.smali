.class public final Lcom/android/cglib/dx/d/k;
.super Lcom/android/cglib/dx/d/o;


# static fields
.field public static final a:Lcom/android/cglib/dx/d/k;


# instance fields
.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/d/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/d/k;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/d/k;->a:Lcom/android/cglib/dx/d/k;

    sget-object v0, Lcom/android/cglib/dx/d/k;->a:Lcom/android/cglib/dx/d/k;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/k;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/o;-><init>(Z)V

    :try_start_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/cglib/dx/d/k;->b:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/cglib/dx/d/k;->c:I

    iput-boolean v0, p0, Lcom/android/cglib/dx/d/k;->d:Z

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    iget-object v1, p0, Lcom/android/cglib/dx/d/k;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/cglib/dx/d/k;->b:[I

    iget v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    return v0
.end method

.method public a(I)I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-lt p1, v0, :cond_0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/k;->h()V

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-lt p1, v0, :cond_0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "n >= size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aput p2, v0, p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/cglib/dx/d/k;->d:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/k;->h()V

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/k;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cglib/dx/d/k;->d:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/k;->h()V

    invoke-direct {p0}, Lcom/android/cglib/dx/d/k;->c()V

    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    iget v1, p0, Lcom/android/cglib/dx/d/k;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    aput p1, v0, v1

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/k;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    iget v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    add-int/lit8 v2, v2, -0x2

    aget v0, v0, v2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/cglib/dx/d/k;->d:Z

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-le p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize > size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/cglib/dx/d/k;->h()V

    iput p1, p0, Lcom/android/cglib/dx/d/k;->c:I

    return-void
.end method

.method public d(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/d/k;->e(I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e(I)I
    .locals 5

    iget v0, p0, Lcom/android/cglib/dx/d/k;->c:I

    iget-boolean v1, p0, Lcom/android/cglib/dx/d/k;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    neg-int p1, v0

    return p1

    :cond_2
    const/4 v1, -0x1

    move v1, v0

    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_4

    sub-int v3, v1, v2

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    neg-int p1, v1

    add-int/lit8 v1, p1, -0x1

    return v1

    :cond_6
    neg-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/cglib/dx/d/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/d/k;

    iget-boolean v1, p0, Lcom/android/cglib/dx/d/k;->d:Z

    iget-boolean v3, p1, Lcom/android/cglib/dx/d/k;->d:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/cglib/dx/d/k;->c:I

    iget v3, p1, Lcom/android/cglib/dx/d/k;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/cglib/dx/d/k;->b:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public f(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/d/k;->d(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/cglib/dx/d/k;->c:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/cglib/dx/d/k;->c:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/k;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
