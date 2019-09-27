.class Landroid/widget/PullingLayout$LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingDrawable"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field final synthetic b:Landroid/widget/PullingLayout;

.field private c:I


# direct methods
.method constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/PullingLayout$LoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, v1

    const v4, 0x3f59999a    # 0.85f

    mul-float v1, v1, v4

    invoke-direct {v3, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v1

    const/4 v8, -0x6

    const/16 v9, 0x8

    const/16 v10, 0x168

    const/4 v11, 0x2

    if-lt v1, v10, :cond_0

    iget v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v9}, Landroid/widget/PullingLayout;->c(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v8}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;I)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v2}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v11}, Landroid/widget/PullingLayout;->c(Landroid/widget/PullingLayout;I)I

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v1

    if-lt v1, v10, :cond_2

    iget v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    if-nez v1, :cond_4

    :cond_2
    iget v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    iget-object v2, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v4}, Landroid/widget/PullingLayout;->o(Landroid/widget/PullingLayout;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Landroid/widget/PullingLayout;->d(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    iget-object v2, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->p(Landroid/widget/PullingLayout;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v4}, Landroid/widget/PullingLayout;->q(Landroid/widget/PullingLayout;)I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    invoke-static {v1, v2}, Landroid/widget/PullingLayout;->e(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    iget-object v2, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->p(Landroid/widget/PullingLayout;)I

    move-result v2

    rem-int/2addr v2, v10

    invoke-static {v1, v2}, Landroid/widget/PullingLayout;->e(Landroid/widget/PullingLayout;I)I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    iget-object v2, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v4}, Landroid/widget/PullingLayout;->o(Landroid/widget/PullingLayout;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Landroid/widget/PullingLayout;->d(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    iget-object v2, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->p(Landroid/widget/PullingLayout;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v4}, Landroid/widget/PullingLayout;->q(Landroid/widget/PullingLayout;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->p(Landroid/widget/PullingLayout;)I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)I

    move-result v1

    if-lt v1, v10, :cond_6

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v8}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;I)I

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->b:Landroid/widget/PullingLayout;

    invoke-static {v1, v9}, Landroid/widget/PullingLayout;->c(Landroid/widget/PullingLayout;I)I

    iget v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    const v4, 0x3f333333    # 0.7f

    if-ne v1, v2, :cond_5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const v5, 0x3e99999a    # 0.3f

    mul-float v2, v2, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const v5, 0x3ee66666    # 0.45f

    mul-float v2, v2, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    iget v1, p0, Landroid/widget/PullingLayout$LoadingDrawable;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v11

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v7, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v11

    int-to-float v8, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v2, 0x3f266666    # 0.65f

    mul-float v9, v1, v2

    iget-object v10, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v11

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float v7, v1, v4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/2addr v1, v11

    int-to-float v8, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v9, v0, v3

    iget-object v10, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/widget/PullingLayout$LoadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
