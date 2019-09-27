.class public final Lcom/android/cglib/dx/c/b/o;
.super Lcom/android/cglib/dx/d/o;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/b/o;


# instance fields
.field private final b:[Lcom/android/cglib/dx/c/b/m;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/o;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/c/b/o;->a:Lcom/android/cglib/dx/c/b/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/cglib/dx/d/o;-><init>(Z)V

    new-array p1, p1, [Lcom/android/cglib/dx/c/b/m;

    iput-object p1, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    iput v0, p0, Lcom/android/cglib/dx/c/b/o;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lcom/android/cglib/dx/c/b/m;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/c/b/m;->b(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/o;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/o;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/o;->c(Lcom/android/cglib/dx/c/b/m;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()I
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/c/b/o;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/cglib/dx/c/b/o;->c:I

    move v0, v2

    :cond_2
    return v0
.end method

.method public b(I)Lcom/android/cglib/dx/c/b/o;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    new-instance v1, Lcom/android/cglib/dx/c/b/o;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Lcom/android/cglib/dx/c/b/o;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/c/b/m;->c(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/cglib/dx/c/b/o;->c(Lcom/android/cglib/dx/c/b/m;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/cglib/dx/c/b/o;->c:I

    iput p1, v1, Lcom/android/cglib/dx/c/b/o;->c:I

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/o;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/o;->e()V

    :cond_2
    return-object v1
.end method

.method public b(Lcom/android/cglib/dx/c/b/m;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/c/b/o;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/android/cglib/dx/c/b/m;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/o;->h()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cglib/dx/c/b/o;->c:I

    :try_start_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aput-object p1, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aput-object v1, v4, v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    add-int/lit8 v0, v0, 0x1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/b/o;

    iget-object v0, p1, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/o;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/o;->b()I

    move-result p1

    if-eq v3, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_5

    iget-object v3, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v3, v3, p1

    aget-object v4, v0, p1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Lcom/android/cglib/dx/c/b/m;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->hashCode()I

    move-result v4

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/o;->b:[Lcom/android/cglib/dx/c/b/m;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
