.class Lcom/b/a/a/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/b/a/a/i;

.field private final c:I

.field private final d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Landroid/graphics/Paint;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/b/a/a/i;)V
    .locals 5

    iput-object p1, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/b/a/a/i$a;->c:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i;)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-static {v2}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iput v3, p0, Lcom/b/a/a/i$a;->e:I

    iput v3, p0, Lcom/b/a/a/i$a;->f:I

    iput v3, p0, Lcom/b/a/a/i$a;->g:I

    iput v3, p0, Lcom/b/a/a/i$a;->h:I

    iput v3, p0, Lcom/b/a/a/i$a;->i:I

    iput v3, p0, Lcom/b/a/a/i$a;->j:I

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->a()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/b/a/a/i$a;->c:I

    add-int/2addr v2, v4

    invoke-direct {v1, v0, v3, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/b/a/a/i$a;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->getColorScheme()Lcom/b/a/b/b;

    move-result-object p1

    sget-object v1, Lcom/b/a/b/b$a;->f:Lcom/b/a/b/b$a;

    invoke-virtual {p1, v1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private f()V
    .locals 6

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/a/i$a;->e:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/b/a/a/i$a;->e:I

    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/b/a/a/i$a;->e:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/b/a/a/i$a;->h:I

    iget v3, p0, Lcom/b/a/a/i$a;->f:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/b/a/a/i$a;->f:I

    iget v3, p0, Lcom/b/a/a/i$a;->h:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/b/a/a/i$a;->h:I

    iget v3, p0, Lcom/b/a/a/i$a;->f:I

    :goto_1
    iget-object v4, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    iget-object v4, v4, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/b/a/a/c;->invalidate(IIII)V

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->b()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/a/i$a;->f()V

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/i$a;->b(II)V

    invoke-direct {p0}, Lcom/b/a/a/i$a;->f()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 13

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->a()I

    move-result p2

    iget v0, p0, Lcom/b/a/a/i$a;->e:I

    int-to-float v2, v0

    iget v0, p0, Lcom/b/a/a/i$a;->f:I

    int-to-float v3, v0

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lcom/b/a/a/i$a;->h:I

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/b/a/a/i$a;->e:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/b/a/a/i$a;->f:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/b/a/a/i$a;->c:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/b/a/a/i$a;->g:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v3, p2

    int-to-float p2, v3

    iget v3, p0, Lcom/b/a/a/i$a;->h:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-direct {v8, v0, v1, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v12, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v10, 0x42700000    # 60.0f

    const/4 v11, 0x1

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/b/a/a/i$a;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/b/a/a/i$a;->g:I

    iget-object v3, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/b/a/a/i$a;->h:I

    iget-object v4, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/b/a/a/i$a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/b/a/a/i$a;->g:I

    iget v2, p0, Lcom/b/a/a/i$a;->h:I

    iget v3, p0, Lcom/b/a/a/i$a;->g:I

    iget-object v4, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/b/a/a/i$a;->h:I

    iget-object v5, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    iget-object v1, v1, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1, v0}, Lcom/b/a/a/c;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iput p1, p0, Lcom/b/a/a/i$a;->e:I

    iput p2, p0, Lcom/b/a/a/i$a;->f:I

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->a()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/i$a;->g:I

    iget p1, p0, Lcom/b/a/a/i$a;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/b/a/a/i$a;->h:I

    return-void
.end method

.method public c(II)Lcom/b/a/b/m;
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-virtual {v0, p1}, Lcom/b/a/a/i;->a(I)I

    move-result p1

    iget v0, p0, Lcom/b/a/a/i$a;->i:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/b/a/a/i$a;->a()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    invoke-virtual {v0, p2}, Lcom/b/a/a/i;->b(I)I

    move-result p2

    iget v0, p0, Lcom/b/a/a/i$a;->j:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/b/a/a/i$a;->c:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    new-instance v0, Lcom/b/a/b/m;

    iget-object v1, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    iget-object v1, v1, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1, p1, p2}, Lcom/b/a/a/c;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/i$a;->b:Lcom/b/a/a/i;

    iget-object v2, v2, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2, p1, p2}, Lcom/b/a/a/c;->b(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/b/a/b/m;-><init>(II)V

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/i$a;->i:I

    iput v0, p0, Lcom/b/a/a/i$a;->j:I

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/i$a;->l:Z

    return-void
.end method

.method public d(II)V
    .locals 1

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/b/a/a/i$a;->i:I

    iget p1, p0, Lcom/b/a/a/i$a;->h:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/b/a/a/i$a;->j:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/i$a;->l:Z

    return-void
.end method

.method public e(II)Z
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/a/i$a;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/b/a/a/i$a;->g:I

    iget-object v1, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/b/a/a/i$a;->h:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lcom/b/a/a/i$a;->h:I

    iget-object v0, p0, Lcom/b/a/a/i$a;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
