.class Landroid/widget/PullingLayout$FailDrawable2;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailDrawable2"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;

.field private b:Landroid/graphics/Paint;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/PullingLayout$FailDrawable2;->a:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/PullingLayout$FailDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    float-to-double v1, v1

    const-wide v3, 0x3fd6666666666666L    # 0.35

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v2, 0x3f266666    # 0.65f

    mul-float v6, v1, v2

    iget-object v7, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v6, v0, v1

    iget-object v7, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FailDrawable2;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
