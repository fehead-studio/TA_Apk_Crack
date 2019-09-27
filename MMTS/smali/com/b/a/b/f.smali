.class public Lcom/b/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:I

.field private final b:Lcom/b/a/b/e;


# direct methods
.method public constructor <init>(Lcom/b/a/b/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/f;->a:I

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0, p1}, Lcom/b/a/b/e;-><init>(Lcom/b/a/b/e$a;)V

    iput-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/f;->a:I

    iput-object p1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/f;->a:I

    iget-object p1, p1, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    iput-object p1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(CIJ)V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p2}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    aput-char p1, v2, v0

    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    const/4 v6, 0x1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/e;->a([CIJZ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/e;->a(IIJZ)V

    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    const/4 v3, 0x1

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/e;->a(IIJZ)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->a(Z)V

    return-void
.end method

.method public a([CIJ)V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p2}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/e;->a([CIJZ)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/b/a/b/f;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/b/a/b/f;->a:I

    iget-object v1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v1}, Lcom/b/a/b/e;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()C
    .locals 2

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    iget v1, p0, Lcom/b/a/b/f;->a:I

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->charAt(I)C

    move-result v0

    iget v1, p0, Lcom/b/a/b/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/b/f;->a:I

    return v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->e(I)I

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->i(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->h()Z

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->d(I)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->i()V

    return-void
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->h(I)I

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->j()V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->c()I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/b/a/b/f;->a:I

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/b/a/b/f;->a:I

    return p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()I

    move-result v0

    return v0
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->c(I)I

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->f()V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->a()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->b()V

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->k()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->length()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->l()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/b/e;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
