.class public Landroid/widget/SlidingLayout;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingLayout$OnMenuStateChangeListener;,
        Landroid/widget/SlidingLayout$OnMenuClosedListener;,
        Landroid/widget/SlidingLayout$OnMenuOpenedListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/SlidingLayout$OnMenuOpenedListener;

.field private i:Landroid/widget/SlidingLayout$OnMenuClosedListener;

.field private j:Landroid/widget/SlidingLayout$OnMenuStateChangeListener;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SlidingLayout;->b:I

    iput v0, p0, Landroid/widget/SlidingLayout;->c:I

    iput v0, p0, Landroid/widget/SlidingLayout;->d:I

    invoke-direct {p0, p1}, Landroid/widget/SlidingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/SlidingLayout;->b:I

    iput p2, p0, Landroid/widget/SlidingLayout;->c:I

    iput p2, p0, Landroid/widget/SlidingLayout;->d:I

    invoke-direct {p0, p1}, Landroid/widget/SlidingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SlidingLayout;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/widget/SlidingLayout;->a:I

    iget v0, p0, Landroid/widget/SlidingLayout;->a:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/widget/SlidingLayout;->b:I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeMenu()V
    .locals 2

    iget v0, p0, Landroid/widget/SlidingLayout;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/SlidingLayout;->smoothScrollTo(II)V

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->i:Landroid/widget/SlidingLayout$OnMenuClosedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->i:Landroid/widget/SlidingLayout$OnMenuClosedListener;

    invoke-interface {v0, p0}, Landroid/widget/SlidingLayout$OnMenuClosedListener;->onMenuClosed(Landroid/view/View;)V

    :cond_0
    iput-boolean v1, p0, Landroid/widget/SlidingLayout;->f:Z

    return-void
.end method

.method public getMenuWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/SlidingLayout;->c:I

    return v0
.end method

.method public getTouchScale()I
    .locals 1

    iget v0, p0, Landroid/widget/SlidingLayout;->b:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/SlidingLayout;->b:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/widget/SlidingLayout;->e:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroid/widget/SlidingLayout;->c:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/SlidingLayout;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->closeMenu()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SlidingLayout;->e:Z

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Landroid/widget/SlidingLayout;->c:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/SlidingLayout;->a:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Landroid/widget/SlidingLayout;->c:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/SlidingLayout;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/SlidingLayout;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Landroid/widget/SlidingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/SlidingLayout;->a:I

    iget v2, p0, Landroid/widget/SlidingLayout;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->openMenu()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->closeMenu()V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->j:Landroid/widget/SlidingLayout$OnMenuStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->j:Landroid/widget/SlidingLayout$OnMenuStateChangeListener;

    iget-boolean v2, p0, Landroid/widget/SlidingLayout;->f:Z

    invoke-interface {v0, p0, v2}, Landroid/widget/SlidingLayout$OnMenuStateChangeListener;->onMenuStateChange(Landroid/view/View;Z)V

    :cond_0
    iput-boolean v1, p0, Landroid/widget/SlidingLayout;->k:Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->getScrollX()I

    move-result p1

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingLayout;->d:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->closeMenu()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->openMenu()V

    goto :goto_1

    :cond_2
    int-to-double v2, p1

    iget p1, p0, Landroid/widget/SlidingLayout;->d:I

    int-to-double v4, p1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v6

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/SlidingLayout;->k:Z

    return v1

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openMenu()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/SlidingLayout;->smoothScrollTo(II)V

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->h:Landroid/widget/SlidingLayout$OnMenuOpenedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingLayout;->h:Landroid/widget/SlidingLayout$OnMenuOpenedListener;

    invoke-interface {v0, p0}, Landroid/widget/SlidingLayout$OnMenuOpenedListener;->onMenuOpened(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    return-void
.end method

.method public setMenuWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SlidingLayout;->c:I

    return-void
.end method

.method public setOnMenuClosedListener(Landroid/widget/SlidingLayout$OnMenuClosedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingLayout;->i:Landroid/widget/SlidingLayout$OnMenuClosedListener;

    return-void
.end method

.method public setOnMenuOpenedListener(Landroid/widget/SlidingLayout$OnMenuOpenedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingLayout;->h:Landroid/widget/SlidingLayout$OnMenuOpenedListener;

    return-void
.end method

.method public setOnMenuStateChangeListener(Landroid/widget/SlidingLayout$OnMenuStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingLayout;->j:Landroid/widget/SlidingLayout$OnMenuStateChangeListener;

    return-void
.end method

.method public setTouchScale(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SlidingLayout;->b:I

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingLayout;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->closeMenu()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingLayout;->openMenu()V

    return-void
.end method
