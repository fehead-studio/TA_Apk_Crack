.class public Landroid/widget/PageLayout;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PageLayout$OnPageChangeListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/PageLayout$OnPageChangeListener;

.field private d:I

.field private e:Landroid/widget/Scroller;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/VelocityTracker;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PageLayout;->a:I

    invoke-direct {p0, p1}, Landroid/widget/PageLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/PageLayout;->a:I

    invoke-direct {p0, p1}, Landroid/widget/PageLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PageLayout;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/widget/PageLayout;->k:I

    iget v1, p0, Landroid/widget/PageLayout;->k:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/PageLayout;->a:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/PageLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PageLayout;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/PageLayout;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PageLayout;->setWillNotDraw(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/PageLayout;->f:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/widget/PageLayout;->g:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/widget/PageLayout;->h:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/PageLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/PageLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getTouchScale()I
    .locals 1

    iget v0, p0, Landroid/widget/PageLayout;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/PageLayout;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/PageLayout;->k:I

    iget v2, p0, Landroid/widget/PageLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/widget/PageLayout;->d:I

    invoke-virtual {p0, p1}, Landroid/widget/PageLayout;->showPage(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/PageLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/widget/PageLayout;->j:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/widget/PageLayout;->k:I

    if-eq v2, v0, :cond_2

    :cond_0
    iput v1, p0, Landroid/widget/PageLayout;->j:I

    iput v0, p0, Landroid/widget/PageLayout;->k:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Landroid/widget/PageLayout;->k:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Landroid/widget/PageLayout;->k:I

    mul-int v2, v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/PageLayout;->requestLayout()V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    iget p1, p0, Landroid/widget/PageLayout;->d:I

    invoke-virtual {p0, p1}, Landroid/widget/PageLayout;->showPage(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/PageLayout;->a(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Landroid/widget/PageLayout;->i:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Landroid/widget/PageLayout;->h:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0}, Landroid/widget/PageLayout;->a()V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/widget/PageLayout;->g:I

    if-le v2, v3, :cond_2

    if-le v2, v0, :cond_2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    iget v0, p0, Landroid/widget/PageLayout;->d:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PageLayout;->showPage(I)V

    return v1

    :cond_1
    iget-object p1, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    iget v0, p0, Landroid/widget/PageLayout;->d:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PageLayout;->getScrollX()I

    move-result p1

    iget v0, p0, Landroid/widget/PageLayout;->k:I

    rem-int v0, p1, v0

    iget v2, p0, Landroid/widget/PageLayout;->k:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    iget v0, p0, Landroid/widget/PageLayout;->k:I

    div-int/2addr p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/PageLayout;->showPage(I)V

    return v1

    :cond_3
    iget v0, p0, Landroid/widget/PageLayout;->k:I

    div-int/2addr p1, v0

    add-int/2addr p1, v1

    goto :goto_1

    return v1
.end method

.method public setOnPageChangeListener(Landroid/widget/PageLayout$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageLayout;->c:Landroid/widget/PageLayout$OnPageChangeListener;

    return-void
.end method

.method public setTouchScale(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PageLayout;->a:I

    return-void
.end method

.method public showPage(I)V
    .locals 2

    iget v0, p0, Landroid/widget/PageLayout;->k:I

    mul-int v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/PageLayout;->smoothScrollTo(II)V

    iget-object v0, p0, Landroid/widget/PageLayout;->c:Landroid/widget/PageLayout$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/PageLayout;->d:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/PageLayout;->c:Landroid/widget/PageLayout$OnPageChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/PageLayout$OnPageChangeListener;->onPageChange(Landroid/view/View;I)V

    :cond_0
    iput p1, p0, Landroid/widget/PageLayout;->d:I

    return-void
.end method

.method public showPage(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/PageLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/PageLayout;->showPage(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
