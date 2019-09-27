.class Landroid/widget/CardView$CardViewEclairMr1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CardViewImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardViewEclairMr1"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;
    .locals 0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/widget/RoundRectDrawableWithShadow;

    return-object p1
.end method


# virtual methods
.method a(Landroid/content/Context;IFFF)Landroid/widget/RoundRectDrawableWithShadow;
    .locals 7

    new-instance v6, Landroid/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v6
.end method

.method public getElevation(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawableWithShadow;->b()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawableWithShadow;->c()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawableWithShadow;->e()F

    move-result p1

    return p1
.end method

.method public getMinWidth(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawableWithShadow;->d()F

    move-result p1

    return p1
.end method

.method public getRadius(Landroid/widget/CardViewDelegate;)F
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RoundRectDrawableWithShadow;->a()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 1

    new-instance v0, Landroid/widget/CardView$CardViewEclairMr1$1;

    invoke-direct {v0, p0}, Landroid/widget/CardView$CardViewEclairMr1$1;-><init>(Landroid/widget/CardView$CardViewEclairMr1;)V

    sput-object v0, Landroid/widget/RoundRectDrawableWithShadow;->c:Landroid/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method

.method public initialize(Landroid/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/content/Context;IFFF)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p2

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-interface {p1, p2}, Landroid/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroid/widget/CardViewDelegate;)V
    .locals 0

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/widget/CardViewDelegate;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroid/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Landroid/widget/CardViewDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RoundRectDrawableWithShadow;->setColor(I)V

    return-void
.end method

.method public setElevation(Landroid/widget/CardViewDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RoundRectDrawableWithShadow;->b(F)V

    return-void
.end method

.method public setMaxElevation(Landroid/widget/CardViewDelegate;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RoundRectDrawableWithShadow;->c(F)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Landroid/widget/CardViewDelegate;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RoundRectDrawableWithShadow;->a(F)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Landroid/widget/CardViewDelegate;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->a(Landroid/widget/CardViewDelegate;)Landroid/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RoundRectDrawableWithShadow;->a(Landroid/graphics/Rect;)V

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->getMinHeight(Landroid/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Landroid/widget/CardView$CardViewEclairMr1;->getMinWidth(Landroid/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/widget/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
