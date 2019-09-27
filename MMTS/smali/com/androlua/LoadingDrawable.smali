.class public Lcom/androlua/LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->d:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/androlua/LoadingDrawable;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/LoadingDrawable;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LoadingDrawable;->a:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lcom/androlua/LoadingDrawable;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    const v0, -0x77777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->a:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/androlua/LoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    int-to-float v2, v2

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    invoke-direct {v6, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    const/4 v2, -0x6

    const/16 v3, 0x8

    const/16 v11, 0x168

    if-lt v1, v11, :cond_0

    iget v1, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v1, :cond_0

    iput v3, p0, Lcom/androlua/LoadingDrawable;->g:I

    iput v2, p0, Lcom/androlua/LoadingDrawable;->f:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    const/4 v5, 0x6

    if-gt v1, v5, :cond_1

    iput v5, p0, Lcom/androlua/LoadingDrawable;->f:I

    iput v4, p0, Lcom/androlua/LoadingDrawable;->g:I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-lt v1, v11, :cond_2

    iget v1, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v5, p0, Lcom/androlua/LoadingDrawable;->f:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v5, p0, Lcom/androlua/LoadingDrawable;->g:I

    :goto_1
    add-int/2addr v1, v5

    iput v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    rem-int/2addr v1, v11

    iput v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v5, p0, Lcom/androlua/LoadingDrawable;->f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iput v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v5, p0, Lcom/androlua/LoadingDrawable;->g:I

    mul-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    iget v1, p0, Lcom/androlua/LoadingDrawable;->c:I

    int-to-float v7, v1

    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    int-to-float v8, v1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-lt v1, v11, :cond_6

    iput v2, p0, Lcom/androlua/LoadingDrawable;->f:I

    iput v3, p0, Lcom/androlua/LoadingDrawable;->g:I

    iget v1, p0, Lcom/androlua/LoadingDrawable;->i:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    const v5, 0x3f333333    # 0.7f

    if-ne v1, v2, :cond_5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const v4, 0x3e99999a    # 0.3f

    mul-float v2, v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const v4, 0x3ee66666    # 0.45f

    mul-float v2, v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/androlua/LoadingDrawable;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v4

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v8, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v4

    int-to-float v9, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v2, 0x3f266666    # 0.65f

    mul-float v10, v1, v2

    iget-object v11, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v4

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float v8, v1, v5

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v4

    int-to-float v9, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v10, v0, v3

    iget-object v11, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/androlua/LoadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LoadingDrawable;->i:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
