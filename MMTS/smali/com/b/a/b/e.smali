.class public Lcom/b/a/b/e;
.super Lcom/b/a/b/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/e$a;
    }
.end annotation


# instance fields
.field private f:Z

.field private g:Lcom/b/a/b/e$a;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/b/e$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/o;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b/e;->f:Z

    iput-object p1, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    invoke-direct {p0}, Lcom/b/a/b/e;->m()V

    return-void
.end method

.method private a(II)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 2

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    sub-int v1, p2, p3

    invoke-direct {p0, p1, v1}, Lcom/b/a/b/e;->a(II)V

    invoke-direct {p0, p1, p3}, Lcom/b/a/b/e;->b(II)V

    invoke-direct {p0, p1, v0, p2}, Lcom/b/a/b/e;->b(III)V

    return-void
.end method

.method private b(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(III)V
    .locals 11

    iget-boolean v0, p0, Lcom/b/a/b/e;->f:Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/b/a/b/e;->p(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/b/a/b/e;->p(I)I

    move-result p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    iget v3, p0, Lcom/b/a/b/e;->b:I

    if-ne p2, v3, :cond_0

    iget p2, p0, Lcom/b/a/b/e;->c:I

    :cond_0
    iget-object v3, p0, Lcom/b/a/b/e;->a:[C

    aget-char v3, v3, p2

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/b/a/b/e;->q(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/b/a/b/e;->n()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Not enough space to do word wrap"

    invoke-static {p1}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/b/a/b/e;->p(I)I

    move-result v3

    invoke-virtual {p0, p3}, Lcom/b/a/b/e;->p(I)I

    move-result p3

    iget-object v4, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    invoke-interface {v4}, Lcom/b/a/b/e$a;->getRowWidth()I

    move-result v4

    const/4 v5, 0x0

    move v8, p2

    move v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v3, p3, :cond_11

    iget v9, p0, Lcom/b/a/b/e;->b:I

    if-ne v3, v9, :cond_5

    iget v3, p0, Lcom/b/a/b/e;->c:I

    :cond_5
    iget-object v9, p0, Lcom/b/a/b/e;->a:[C

    aget-char v9, v9, v3

    iget-object v10, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    invoke-interface {v10, v9}, Lcom/b/a/b/e$a;->getAdvance(C)I

    move-result v10

    add-int/2addr v6, v10

    const/16 v10, 0x20

    if-eq v9, v10, :cond_7

    const/16 v10, 0x9

    if-eq v9, v10, :cond_7

    if-eq v9, v1, :cond_7

    const v10, 0xffff

    if-ne v9, v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_f

    if-gt v6, v7, :cond_8

    sub-int/2addr v7, v6

    goto :goto_6

    :cond_8
    if-le v6, v4, :cond_d

    invoke-virtual {p0, v8}, Lcom/b/a/b/e;->p(I)I

    move-result v6

    if-eq v8, p2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v8, v7, :cond_a

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v7, v4

    :goto_4
    if-gt v6, v3, :cond_e

    iget v8, p0, Lcom/b/a/b/e;->b:I

    if-ne v6, v8, :cond_b

    iget v6, p0, Lcom/b/a/b/e;->c:I

    :cond_b
    iget-object v8, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    iget-object v10, p0, Lcom/b/a/b/e;->a:[C

    aget-char v10, v10, v6

    invoke-interface {v8, v10}, Lcom/b/a/b/e$a;->getAdvance(C)I

    move-result v8

    if-le v8, v7, :cond_c

    invoke-virtual {p0, v6}, Lcom/b/a/b/e;->q(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v7, v4, v8

    goto :goto_5

    :cond_c
    sub-int/2addr v7, v8

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v6, v4, v6

    move v7, v6

    :cond_e
    :goto_6
    invoke-virtual {p0, v3}, Lcom/b/a/b/e;->q(I)I

    move-result v6

    add-int/2addr v6, v2

    move v8, v6

    const/4 v6, 0x0

    :cond_f
    if-ne v9, v1, :cond_10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object p2, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method private m()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private n()Z
    .locals 3

    iget-object v0, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    invoke-interface {v0}, Lcom/b/a/b/e$a;->getRowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    const/16 v2, 0x4d

    invoke-interface {v1, v2}, Lcom/b/a/b/e$a;->getAdvance(C)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->p(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/b/a/b/e;->a:[C

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/b/a/b/e;->b:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/b/a/b/e;->c:I

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->a:[C

    aget-char v0, v0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/b/a/b/e;->a:[C

    aget-char v0, v0, p1

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->q(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/b/a/b/o;->a(I)V

    if-eqz p1, :cond_1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/b/a/b/e;->b:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/b/a/b/e;->b:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/b/a/b/e;->e(I)I

    move-result v0

    iget v1, p0, Lcom/b/a/b/e;->b:I

    invoke-direct {p0, v1}, Lcom/b/a/b/e;->s(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/b/a/b/e;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IIJZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/b/a/b/o;->a(IIJZ)V

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->e(I)I

    move-result p3

    invoke-direct {p0, p1}, Lcom/b/a/b/e;->s(I)I

    move-result p1

    neg-int p2, p2

    invoke-direct {p0, p3, p1, p2}, Lcom/b/a/b/e;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/b/o;->g(I)I

    move-result v1

    new-array v1, v1, [C

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v1, v3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0, v2}, Lcom/b/a/b/e;->a([CII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/b/a/b/e;->f:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/b/a/b/e;->f:Z

    invoke-virtual {p0}, Lcom/b/a/b/e;->b()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/b/a/b/e;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized a([CIJZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/b/a/b/o;->a([CIJZ)V

    invoke-virtual {p0, p2}, Lcom/b/a/b/e;->e(I)I

    move-result p3

    array-length p4, p1

    add-int/2addr p2, p4

    invoke-direct {p0, p2}, Lcom/b/a/b/e;->s(I)I

    move-result p2

    array-length p1, p1

    invoke-direct {p0, p3, p2, p1}, Lcom/b/a/b/e;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/b/e;->f:Z

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/b/e;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    invoke-direct {p0}, Lcom/b/a/b/e;->m()V

    iget-boolean v0, p0, Lcom/b/a/b/e;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/b/e;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/e;->g:Lcom/b/a/b/e$a;

    invoke-interface {v0}, Lcom/b/a/b/e$a;->getRowWidth()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Text field has non-zero width but still too small for word wrap"

    invoke-static {v0}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/b/a/b/e;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/b/a/b/e;->b(III)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/b/e;->d()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/b/e;->d()I

    move-result v5

    :goto_1
    iget-object v6, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt p1, v6, :cond_2

    if-ge p1, v5, :cond_2

    return v3

    :cond_2
    if-lt p1, v5, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method protected f(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/b/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
