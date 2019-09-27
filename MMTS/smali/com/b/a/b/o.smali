.class public Lcom/b/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field protected a:[C

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/b/a/b/p;

.field private h:Lcom/b/a/b/r;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/b/a/b/o;->a:[C

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    const/16 v1, 0x32

    const v2, 0xffff

    aput-char v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/b/o;->f:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/b/a/b/o;->b:I

    iput v1, p0, Lcom/b/a/b/o;->c:I

    iput v0, p0, Lcom/b/a/b/o;->d:I

    new-instance v0, Lcom/b/a/b/p;

    invoke-direct {v0}, Lcom/b/a/b/p;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    new-instance v0, Lcom/b/a/b/r;

    invoke-direct {v0, p0}, Lcom/b/a/b/r;-><init>(Lcom/b/a/b/o;)V

    iput-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    return-void
.end method

.method private a(III)I
    .locals 2

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->p(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->o(I)Z

    move-result p3

    const-string v1, "findCharOffsetBackward: Invalid startingOffset given"

    invoke-static {p3, v1}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_2

    iget-object p3, p0, Lcom/b/a/b/o;->a:[C

    array-length p3, p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/b/a/b/o;->a:[C

    aget-char p3, p3, v0

    const/16 v1, 0xa

    if-ne p3, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget p3, p0, Lcom/b/a/b/o;->b:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/b/a/b/o;->c:I

    goto :goto_0

    :cond_2
    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/b/a/b/o;->q(I)I

    move-result p1

    return p1
.end method

.method private a(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/b/a/b/o;->b(I)Lcom/b/a/b/m;

    move-result-object p1

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/b/m;

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/b/a/b/m;->a(I)V

    return-void
.end method

.method private b(III)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->o(I)Z

    move-result v1

    const-string v2, "findCharOffsetBackward: Invalid startOffset given"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->p(I)I

    move-result p3

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, -0x1

    if-le p2, v1, :cond_3

    if-ltz p3, :cond_3

    iget v1, p0, Lcom/b/a/b/o;->c:I

    if-ne p3, v1, :cond_2

    iget p3, p0, Lcom/b/a/b/o;->b:I

    :cond_2
    add-int/2addr p3, v2

    iget-object v1, p0, Lcom/b/a/b/o;->a:[C

    aget-char v1, v1, p3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->q(I)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    return v2

    :cond_4
    const-string p1, "findCharOffsetBackward: Invalid cache entry or line arguments"

    invoke-static {v0, p1}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    return v2
.end method

.method private b(I)Lcom/b/a/b/m;
    .locals 5

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/b/m;

    invoke-virtual {v4}, Lcom/b/a/b/m;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v3, p1, :cond_0

    new-instance p1, Lcom/b/a/b/m;

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Lcom/b/a/b/m;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/b/a/b/m;

    invoke-direct {p1, v1, v1}, Lcom/b/a/b/m;-><init>(II)V

    return-object p1
.end method

.method private b(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/b/o;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/b/o;->f()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/b/a/b/o;->c(I)Lcom/b/a/b/m;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/b/m;

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result p2

    if-le p2, v1, :cond_1

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/b/a/b/m;->a(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/b/a/b/m;->b()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b/m;

    invoke-virtual {v1}, Lcom/b/a/b/m;->a()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-virtual {v1}, Lcom/b/a/b/m;->a()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/b/a/b/m;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    sub-int/2addr p2, p1

    if-lez p2, :cond_5

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result p1

    :goto_1
    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/m;

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result v1

    if-le p2, v1, :cond_4

    sub-int/2addr p2, v1

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/b/a/b/m;->a(I)V

    :cond_5
    return-void
.end method

.method private c(II)I
    .locals 4

    const/4 v0, 0x0

    move v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private c(I)Lcom/b/a/b/m;
    .locals 5

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/b/m;

    invoke-virtual {v4}, Lcom/b/a/b/m;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    new-instance p1, Lcom/b/a/b/m;

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Lcom/b/a/b/m;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/b/a/b/m;

    invoke-direct {p1, v1, v1}, Lcom/b/a/b/m;-><init>(II)V

    return-object p1
.end method

.method public static g(I)I
    .locals 4

    add-int/lit8 p0, p0, 0x32

    add-int/lit8 p0, p0, 0x1

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/b/a/b/o;->b:I

    invoke-direct {p0, v0, p1}, Lcom/b/a/b/o;->a(II)V

    iget v0, p0, Lcom/b/a/b/o;->d:I

    iget v1, p0, Lcom/b/a/b/o;->b:I

    invoke-direct {p0, v1, p1}, Lcom/b/a/b/o;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/b/o;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/b/a/b/o;->b:I

    rsub-int/lit8 v1, p1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/b/o;->b(II)V

    iget v0, p0, Lcom/b/a/b/o;->d:I

    iget v1, p0, Lcom/b/a/b/o;->b:I

    add-int/2addr v1, p1

    neg-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/b/a/b/o;->c(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/b/o;->d:I

    :goto_0
    iget v0, p0, Lcom/b/a/b/o;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/b/a/b/o;->b:I

    iget-object p1, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    iget v0, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/b/a/b/o;->q(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/b/a/b/p;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IIJZ)V
    .locals 0

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p5, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/b/a/b/r;->b(IIJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    add-int p3, p1, p2

    iget p4, p0, Lcom/b/a/b/o;->b:I

    if-eq p3, p4, :cond_2

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->r(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->k(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->l(I)V

    :cond_2
    :goto_1
    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_4

    iget p4, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lcom/b/a/b/o;->b:I

    iget-object p4, p0, Lcom/b/a/b/o;->a:[C

    iget p5, p0, Lcom/b/a/b/o;->b:I

    aget-char p4, p4, p5

    const/16 p5, 0xa

    if-ne p4, p5, :cond_3

    iget p4, p0, Lcom/b/a/b/o;->d:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lcom/b/a/b/o;->d:I

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {p3, p1}, Lcom/b/a/b/p;->c(I)V

    invoke-direct {p0, p1, p2}, Lcom/b/a/b/o;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    return-void
.end method

.method public declared-synchronized a([CII)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/b/a/b/o;->a:[C

    invoke-virtual {p0, p2}, Lcom/b/a/b/o;->m(I)V

    iput p3, p0, Lcom/b/a/b/o;->d:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/b/a/b/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([CIJZ)V
    .locals 1

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p5, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    array-length v0, p1

    invoke-virtual {p5, p2, v0, p3, p4}, Lcom/b/a/b/r;->a(IIJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/b/a/b/o;->p(I)I

    move-result p3

    iget p4, p0, Lcom/b/a/b/o;->c:I

    if-eq p3, p4, :cond_2

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->r(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->k(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->l(I)V

    :cond_2
    :goto_1
    array-length p3, p1

    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result p4

    if-lt p3, p4, :cond_3

    array-length p3, p1

    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/b/a/b/o;->n(I)V

    :cond_3
    const/4 p3, 0x0

    :goto_2
    array-length p4, p1

    if-ge p3, p4, :cond_5

    aget-char p4, p1, p3

    const/16 p5, 0xa

    if-ne p4, p5, :cond_4

    iget p4, p0, Lcom/b/a/b/o;->d:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/b/a/b/o;->d:I

    :cond_4
    iget-object p4, p0, Lcom/b/a/b/o;->a:[C

    iget p5, p0, Lcom/b/a/b/o;->b:I

    aget-char v0, p1, p3

    aput-char v0, p4, p5

    iget p4, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {p3, p2}, Lcom/b/a/b/p;->c(I)V

    array-length p1, p1

    invoke-direct {p0, p2, p1}, Lcom/b/a/b/o;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized charAt(I)C
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->p(I)I

    move-result p1

    aget-char p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    array-length v0, v0

    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final e()I
    .locals 2

    iget v0, p0, Lcom/b/a/b/o;->c:I

    iget v1, p0, Lcom/b/a/b/o;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    new-instance v1, Lcom/b/a/b/m;

    invoke-virtual {p0}, Lcom/b/a/b/o;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/b/o;->e:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized h(I)I
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {v0, p1}, Lcom/b/a/b/p;->a(I)Lcom/b/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/b/a/b/m;->b()I

    move-result v0

    if-le p1, v1, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/b/a/b/o;->a(III)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lcom/b/a/b/o;->b(III)I

    move-result v0

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {v1, p1, v0}, Lcom/b/a/b/p;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {v0}, Lcom/b/a/b/r;->e()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized i(I)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->o(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {v0, p1}, Lcom/b/a/b/p;->b(I)Lcom/b/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/m;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/b/a/b/m;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/b/o;->p(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->p(I)I

    move-result p1

    const/16 v3, 0xa

    if-le p1, v0, :cond_3

    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_7

    iget-object v6, p0, Lcom/b/a/b/o;->a:[C

    array-length v6, v6

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lcom/b/a/b/o;->a:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_2

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v0}, Lcom/b/a/b/o;->q(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v6, p0, Lcom/b/a/b/o;->b:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/b/a/b/o;->c:I

    goto :goto_0

    :cond_3
    if-ge p1, v0, :cond_6

    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_4
    :goto_1
    if-le v0, p1, :cond_7

    if-lez v0, :cond_7

    iget v6, p0, Lcom/b/a/b/o;->c:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lcom/b/a/b/o;->b:I

    :cond_5
    add-int/2addr v0, v1

    iget-object v6, p0, Lcom/b/a/b/o;->a:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/b/a/b/o;->q(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v5, -0x1

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_1

    :cond_6
    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_7
    if-ne v0, p1, :cond_9

    if-eq v2, v1, :cond_8

    iget-object p1, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/p;

    invoke-virtual {p1, v2, v4}, Lcom/b/a/b/p;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return v5

    :cond_9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {v0}, Lcom/b/a/b/r;->f()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {v0}, Lcom/b/a/b/r;->g()V

    return-void
.end method

.method j(I)[C
    .locals 4

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    iget v3, p0, Lcom/b/a/b/o;->b:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {v0}, Lcom/b/a/b/r;->a()I

    move-result v0

    return v0
.end method

.method protected final k(I)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/b/a/b/o;->b:I

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/b/a/b/o;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/b/o;->c:I

    iget v0, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/b/o;->b:I

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    iget v1, p0, Lcom/b/a/b/o;->c:I

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    iget v3, p0, Lcom/b/a/b/o;->b:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/o;->h:Lcom/b/a/b/r;

    invoke-virtual {v0}, Lcom/b/a/b/r;->b()I

    move-result v0

    return v0
.end method

.method protected final l(I)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/b/a/b/o;->c:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    iget v1, p0, Lcom/b/a/b/o;->b:I

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    iget v3, p0, Lcom/b/a/b/o;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget v0, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/o;->b:I

    iget v0, p0, Lcom/b/a/b/o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/o;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/b/o;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected m(I)V
    .locals 5

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/b/a/b/o;->a:[C

    add-int/lit8 v2, v0, -0x1

    const v3, 0xffff

    aput-char v3, v1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    add-int/lit8 v1, v2, -0x1

    iget-object v3, p0, Lcom/b/a/b/o;->a:[C

    add-int/lit8 v4, p1, -0x1

    aget-char p1, v3, p1

    aput-char p1, v0, v2

    move v2, v1

    move p1, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/b/a/b/o;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/b/a/b/o;->c:I

    return-void
.end method

.method protected n(I)V
    .locals 4

    iget v0, p0, Lcom/b/a/b/o;->f:I

    mul-int/lit8 v0, v0, 0x32

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/b/a/b/o;->a:[C

    array-length v0, v0

    add-int/2addr v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/b/a/b/o;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    aget-char v2, v2, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/b/a/b/o;->c:I

    :goto_1
    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p1

    iget-object v3, p0, Lcom/b/a/b/o;->a:[C

    aget-char v3, v3, v1

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/b/a/b/o;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/b/a/b/o;->c:I

    iput-object v0, p0, Lcom/b/a/b/o;->a:[C

    iget p1, p0, Lcom/b/a/b/o;->f:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/b/a/b/o;->f:I

    return-void
.end method

.method public final declared-synchronized o(I)Z
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/b/o;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method protected final p(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method protected final q(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/b/o;->e()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method protected final r(I)Z
    .locals 1

    iget v0, p0, Lcom/b/a/b/o;->b:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->o(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/b/a/b/o;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/b/o;->d()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/b/a/b/o;->p(I)I

    move-result p1

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/b/a/b/o;->a:[C

    aget-char v2, v2, p1

    aput-char v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lcom/b/a/b/o;->b:I

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/b/a/b/o;->c:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/b/a/b/o;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/b/a/b/o;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method
