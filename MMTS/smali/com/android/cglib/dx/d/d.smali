.class public final Lcom/android/cglib/dx/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/d/a;
.implements Lcom/android/cglib/dx/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/d/d$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-array p1, p1, [B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/d/d;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/d/d;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-boolean p2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    iput-object p1, p0, Lcom/android/cglib/dx/d/d;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    iput-boolean p1, p0, Lcom/android/cglib/dx/d/d;->d:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/cglib/dx/d/d;->f:I

    iput p1, p0, Lcom/android/cglib/dx/d/d;->g:I

    return-void
.end method

.method private static i()V
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->b:[B

    iget v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/android/cglib/dx/d/d;->b:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/android/cglib/dx/d/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/cglib/dx/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/d/d;->c()V

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/d/d$a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d$a;->b()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    :cond_2
    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/cglib/dx/d/d$a;

    add-int/2addr p1, v0

    invoke-direct {v2, v0, p1, p2}, Lcom/android/cglib/dx/d/d$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "annotationWidth < 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v0, p1, -0x7

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    const/16 v1, 0xa

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    const/16 v0, 0xa

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/cglib/dx/d/d;->f:I

    iput v0, p0, Lcom/android/cglib/dx/d/d;->g:I

    iput-boolean p2, p0, Lcom/android/cglib/dx/d/d;->d:Z

    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "cannot enable annotations"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/d/c;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/c;->a()I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    invoke-virtual {p1, v2, v1}, Lcom/android/cglib/dx/d/c;->a([BI)V

    iput v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void
.end method

.method public a(Ljava/io/Writer;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/d;->d()I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/d/d;->f:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/android/cglib/dx/d/s;

    const-string v3, "|"

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/android/cglib/dx/d/s;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/cglib/dx/d/s;->a()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/cglib/dx/d/s;->b()Ljava/io/Writer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v4, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-ge v7, v4, :cond_1

    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/d/d$a;

    invoke-virtual {v4}, Lcom/android/cglib/dx/d/d$a;->a()I

    move-result v5

    if-ge v7, v5, :cond_0

    const-string v4, ""

    move v10, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/cglib/dx/d/d$a;->b()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/cglib/dx/d/d$a;->c()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move v10, v5

    move v5, v6

    :goto_1
    iget-object v7, p0, Lcom/android/cglib/dx/d/d;->b:[B

    sub-int v9, v5, v10

    iget v11, p0, Lcom/android/cglib/dx/d/d;->g:I

    const/4 v12, 0x6

    move v8, v10

    invoke-static/range {v7 .. v12}, Lcom/android/cglib/dx/d/i;->a([BIIIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/cglib/dx/d/s;->c()V

    move v7, v5

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-ge v7, v4, :cond_2

    iget-object v4, p0, Lcom/android/cglib/dx/d/d;->b:[B

    iget v5, p0, Lcom/android/cglib/dx/d/d;->c:I

    sub-int v6, v5, v7

    iget v8, p0, Lcom/android/cglib/dx/d/d;->g:I

    const/4 v9, 0x6

    move v5, v7

    invoke-static/range {v4 .. v9}, Lcom/android/cglib/dx/d/i;->a([BIIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-ge v3, v1, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/d/d$a;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/cglib/dx/d/s;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/d/d;->c()V

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/cglib/dx/d/d$a;

    iget v2, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-direct {v1, v2, p1}, Lcom/android/cglib/dx/d/d$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/cglib/dx/d/d;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int v1, v0, p3

    add-int v2, p2, p3

    or-int v3, p2, p3

    or-int/2addr v3, v1

    if-ltz v3, :cond_3

    array-length v3, p1

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void

    :cond_3
    :goto_1
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes.length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "..!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/d;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/d/d$a;

    iget v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d$a;->a(I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/d/d;->g:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/android/cglib/dx/d/d;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/cglib/dx/d/d;->f:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public d(I)V
    .locals 5

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/android/cglib/dx/d/d;->b:[B

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void
.end method

.method public e(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/d;->i(I)V

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-static {p0, p1}, Lcom/android/cglib/dx/d/n;->a(Lcom/android/cglib/dx/d/e;I)V

    iget p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->b:[B

    return-object v0
.end method

.method public f(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/d;->i(I)V

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-static {p0, p1}, Lcom/android/cglib/dx/d/n;->b(Lcom/android/cglib/dx/d/e;I)V

    iget p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public f()[B
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->b:[B

    iget v2, p0, Lcom/android/cglib/dx/d/d;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    return v0
.end method

.method public g(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length p1, p1

    if-le v0, p1, :cond_2

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void
.end method

.method public h()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/d;->c()V

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/d/d$a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d$a;->a()I

    move-result v3

    iget v4, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-le v3, v4, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/d/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d$a;->b()I

    move-result v0

    iget v2, p0, Lcom/android/cglib/dx/d/d;->c:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/android/cglib/dx/d/d;->c:I

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/d/d$a;->b(I)V

    :cond_1
    return-void
.end method

.method public h(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_3

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/cglib/dx/d/d;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/d;->i(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/d/d;->b:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    invoke-static {}, Lcom/android/cglib/dx/d/d;->i()V

    return-void

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/cglib/dx/d/d;->c:I

    return-void

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
