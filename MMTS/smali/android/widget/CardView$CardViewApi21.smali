.class Landroid/widget/CardView$CardViewApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CardViewImpl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardViewApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Landroid/widget/CardViewDelegate;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/widget/RoundRectDrawable;

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawable;->a()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Landroid/widget/CardViewDelegate;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getRadius(Landroid/widget/CardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getMinWidth(Landroid/widget/CardViewDelegate;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getRadius(Landroid/widget/CardViewDelegate;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getRadius(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/widget/RoundRectDrawable;

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawable;->getRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 0

    new-instance p2, Landroid/widget/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Landroid/widget/RoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, p2}, Landroid/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroid/widget/CardView$CardViewApi21;->setMaxElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroid/widget/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getMaxElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/CardView$CardViewApi21;->setMaxElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/widget/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getMaxElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/CardView$CardViewApi21;->setMaxElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Landroid/widget/CardViewDelegate;I)V
    .locals 0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/widget/RoundRectDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/RoundRectDrawable;->setColor(I)V

    return-void
.end method

.method public setElevation(Landroid/widget/CardViewDelegate;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Landroid/widget/CardViewDelegate;F)V
    .locals 3

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/widget/RoundRectDrawable;

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/widget/RoundRectDrawable;->a(FZZ)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Landroid/widget/CardViewDelegate;F)V
    .locals 0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/widget/RoundRectDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/RoundRectDrawable;->a(F)V

    return-void
.end method

.method public updatePadding(Landroid/widget/CardViewDelegate;)V
    .locals 4

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Landroid/widget/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getMaxElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewApi21;->getRadius(Landroid/widget/CardViewDelegate;)F

    move-result v1

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/widget/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Landroid/widget/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
