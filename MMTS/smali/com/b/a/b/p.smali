.class public Lcom/b/a/b/p;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/b/a/b/m;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/b/a/b/m;

    iput-object v1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    iget-object v1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    new-instance v2, Lcom/b/a/b/m;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/b/a/b/m;-><init>(II)V

    aput-object v2, v1, v3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    new-instance v3, Lcom/b/a/b/m;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lcom/b/a/b/m;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/b/a/b/m;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lcom/b/a/b/m;->b(I)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(II)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/b/a/b/p;->d(I)V

    iget-object v0, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    new-instance v1, Lcom/b/a/b/m;

    invoke-direct {v1, p1, p2}, Lcom/b/a/b/m;-><init>(II)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    return-void
.end method

.method private d(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    iget-object v2, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aput-object v0, p1, v1

    return-void
.end method


# virtual methods
.method public a(I)Lcom/b/a/b/m;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/b/a/b/m;->a()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    move v2, v0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object p1, p1, v2

    invoke-direct {p0, v2}, Lcom/b/a/b/p;->d(I)V

    return-object p1
.end method

.method public a(II)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/p;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/b/a/b/p;->c(II)V

    :cond_1
    return-void
.end method

.method public b(I)Lcom/b/a/b/m;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/b/a/b/m;->b()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    move v2, v0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object p1, p1, v2

    invoke-direct {p0, v2}, Lcom/b/a/b/p;->d(I)V

    return-object p1
.end method

.method protected final c(I)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/b/a/b/m;->b()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/b/a/b/p;->a:[Lcom/b/a/b/m;

    new-instance v2, Lcom/b/a/b/m;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lcom/b/a/b/m;-><init>(II)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
