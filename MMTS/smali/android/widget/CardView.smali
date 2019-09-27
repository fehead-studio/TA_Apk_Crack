.class public Landroid/widget/CardView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CardView$CardViewJellybeanMr1;,
        Landroid/widget/CardView$CardViewEclairMr1;,
        Landroid/widget/CardView$CardViewApi21;
    }
.end annotation


# static fields
.field private static final a:Landroid/widget/CardViewImpl;


# instance fields
.field private b:Landroid/util/DisplayMetrics;

.field private c:Z

.field private d:Z

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/widget/CardView$CardViewApi21;

    invoke-direct {v0}, Landroid/widget/CardView$CardViewApi21;-><init>()V

    :goto_0
    sput-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/widget/CardView$CardViewJellybeanMr1;

    invoke-direct {v0}, Landroid/widget/CardView$CardViewJellybeanMr1;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/CardView$CardViewEclairMr1;

    invoke-direct {v0}, Landroid/widget/CardView$CardViewEclairMr1;-><init>()V

    goto :goto_0

    :goto_1
    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0}, Landroid/widget/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->f:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->f:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->f:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(F)F
    .locals 2

    iget-object v0, p0, Landroid/widget/CardView;->b:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/CardView;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, -0x50506

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p0, p2}, Landroid/widget/CardView;->a(F)F

    move-result v6

    invoke-direct {p0, p2}, Landroid/widget/CardView;->a(F)F

    move-result v7

    invoke-direct {p0, p2}, Landroid/widget/CardView;->a(F)F

    move-result p2

    iput-boolean v1, p0, Landroid/widget/CardView;->c:Z

    iput-boolean p3, p0, Landroid/widget/CardView;->d:Z

    iget-object p3, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iput v1, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iput v1, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iput v1, p3, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    cmpl-float p3, v7, p2

    if-lez p3, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, p2

    :goto_0
    sget-object v2, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Landroid/widget/CardViewImpl;->initialize(Landroid/widget/CardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getMaxElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->d:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getRadius(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->c:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    instance-of v0, v0, Landroid/widget/CardView$CardViewApi21;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v3, p0}, Landroid/widget/CardViewImpl;->getMinWidth(Landroid/widget/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v1, p0}, Landroid/widget/CardViewImpl;->getMinHeight(Landroid/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setBackgroundColor(Landroid/widget/CardViewDelegate;I)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setBackgroundColor(Landroid/widget/CardViewDelegate;I)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setMaxElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CardView;->d:Z

    sget-object p1, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setRadius(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v0

    iget-object v0, p0, Landroid/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CardView;->c:Z

    sget-object p1, Landroid/widget/CardView;->a:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->onCompatPaddingChanged(Landroid/widget/CardViewDelegate;)V

    return-void
.end method
