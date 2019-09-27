.class public Landroid/widget/FloatButton;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/widget/CircleImageView;

.field private c:I

.field private d:Landroid/widget/CardView;

.field private e:Landroid/util/DisplayMetrics;

.field private f:Landroid/widget/RippleHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/widget/FloatButton;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Landroid/widget/FloatButton;->e:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatButton;->e:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v4

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v5

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v6

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/CardView;

    invoke-direct {v3, p1}, Landroid/widget/CardView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/FloatButton;->d:Landroid/widget/CardView;

    iget-object v3, p0, Landroid/widget/FloatButton;->d:Landroid/widget/CardView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Landroid/widget/FloatButton;->a(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/CardView;->setCardElevation(F)V

    new-instance v3, Landroid/widget/CircleImageView;

    invoke-direct {v3, p1}, Landroid/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    iget-object p1, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    const/high16 v3, 0x7f010000

    invoke-virtual {p1, v3}, Landroid/widget/CircleImageView;->setImageResource(I)V

    new-instance p1, Landroid/widget/RippleHelper;

    iget-object v3, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    invoke-direct {p1, v3}, Landroid/widget/RippleHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/widget/FloatButton;->f:Landroid/widget/RippleHelper;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v4

    invoke-direct {p0, v3}, Landroid/widget/FloatButton;->a(F)I

    move-result v3

    invoke-direct {p1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroid/widget/FloatButton;->d:Landroid/widget/CardView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/FloatButton;->d:Landroid/widget/CardView;

    iget-object v3, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    invoke-virtual {v1, v3, p1}, Landroid/widget/CardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/widget/FloatButton;->d:Landroid/widget/CardView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-direct {p0, v1}, Landroid/widget/FloatButton;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/CardView;->setRadius(F)V

    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, v2, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object p1, p0, Landroid/widget/FloatButton;->a:Landroid/widget/PopupWindow;

    iget-object p1, p0, Landroid/widget/FloatButton;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget-object p1, p0, Landroid/widget/FloatButton;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/FloatButton;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/FloatButton;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget p3, p0, Landroid/widget/FloatButton;->c:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    iget-object p1, p0, Landroid/widget/FloatButton;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroid/widget/FloatButton;->c:I

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatButton;->b:Landroid/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/CircleImageView;->setImageResource(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FloatButton;->f:Landroid/widget/RippleHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RippleHelper;->setRippleColor(I)V

    return-void
.end method
