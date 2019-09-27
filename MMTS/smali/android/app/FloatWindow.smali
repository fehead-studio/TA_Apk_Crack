.class public Landroid/app/FloatWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FloatWindow$ContentView;,
        Landroid/app/FloatWindow$TitleView;,
        Landroid/app/FloatWindow$TitleBar;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/FloatWindow$TitleBar;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:I

.field private h:Landroid/util/DisplayMetrics;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FloatWindow;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FloatWindow;->h:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/app/FloatWindow;->a()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow;->i:I

    invoke-direct {p0}, Landroid/app/FloatWindow;->b()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow;->j:I

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->h:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->g:I

    return p0
.end method

.method static synthetic a(Landroid/app/FloatWindow;F)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->a(F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/app/FloatWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->a(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x40020

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Landroid/app/FloatWindow$ContentView;

    invoke-direct {v0, p0, p1}, Landroid/app/FloatWindow$ContentView;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->a(F)I

    move-result v3

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->a(F)I

    move-result v4

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->a(F)I

    move-result v5

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->a(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0xff00ff

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/app/FloatWindow;->g:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v1, p0, Landroid/app/FloatWindow;->g:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/app/FloatWindow$TitleBar;

    invoke-direct {v0, p0, p1}, Landroid/app/FloatWindow$TitleBar;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->b:Landroid/app/FloatWindow$TitleBar;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->f:Landroid/widget/FrameLayout;

    iget-object p1, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FloatWindow;->b:Landroid/app/FloatWindow$TitleBar;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FloatWindow;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private a(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x40020

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method static synthetic b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic c(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d(Landroid/app/FloatWindow;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic e(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->i:I

    return p0
.end method

.method static synthetic f(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->j:I

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/app/FloatWindow;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFormat(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->b:Landroid/app/FloatWindow$TitleBar;

    invoke-virtual {v0, p1}, Landroid/app/FloatWindow$TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Landroid/app/FloatWindow;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
