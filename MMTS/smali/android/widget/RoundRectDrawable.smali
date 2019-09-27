.class Landroid/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Rect;

.field private e:F

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RoundRectDrawable;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RoundRectDrawable;->g:Z

    iput p2, p0, Landroid/widget/RoundRectDrawable;->a:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/widget/RoundRectDrawable;->b:Landroid/graphics/Paint;

    iget-object p2, p0, Landroid/widget/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/widget/RoundRectDrawable;->c:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RoundRectDrawable;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Landroid/widget/RoundRectDrawable;->f:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/RoundRectDrawable;->e:F

    iget v0, p0, Landroid/widget/RoundRectDrawable;->a:F

    iget-boolean v1, p0, Landroid/widget/RoundRectDrawable;->g:Z

    invoke-static {p1, v0, v1}, Landroid/widget/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result p1

    iget v0, p0, Landroid/widget/RoundRectDrawable;->e:F

    iget v1, p0, Landroid/widget/RoundRectDrawable;->a:F

    iget-boolean v2, p0, Landroid/widget/RoundRectDrawable;->g:Z

    invoke-static {v0, v1, v2}, Landroid/widget/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result v0

    iget-object v1, p0, Landroid/widget/RoundRectDrawable;->d:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Landroid/widget/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Landroid/widget/RoundRectDrawable;->e:F

    return v0
.end method

.method a(F)V
    .locals 1

    iget v0, p0, Landroid/widget/RoundRectDrawable;->a:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/RoundRectDrawable;->a:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RoundRectDrawable;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method a(FZZ)V
    .locals 1

    iget v0, p0, Landroid/widget/RoundRectDrawable;->e:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RoundRectDrawable;->f:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/widget/RoundRectDrawable;->g:Z

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/RoundRectDrawable;->e:F

    iput-boolean p2, p0, Landroid/widget/RoundRectDrawable;->f:Z

    iput-boolean p3, p0, Landroid/widget/RoundRectDrawable;->g:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RoundRectDrawable;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/RoundRectDrawable;->a:F

    iget v2, p0, Landroid/widget/RoundRectDrawable;->a:F

    iget-object v3, p0, Landroid/widget/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->d:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/RoundRectDrawable;->a:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Landroid/widget/RoundRectDrawable;->a:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/widget/RoundRectDrawable;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
