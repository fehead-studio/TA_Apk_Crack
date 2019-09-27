.class public Landroid/widget/RippleLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x44aaaaaa

    iput p1, p0, Landroid/widget/RippleLayout;->c:I

    return-void
.end method

.method private setRippleDrawable(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RippleLayout;

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Landroid/widget/RippleLayout;->setRippleDrawable(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RippleHelper;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/RippleHelper;

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/RippleHelper;

    invoke-direct {v0, p1}, Landroid/widget/RippleHelper;-><init>(Landroid/view/View;)V

    :goto_1
    iget p1, p0, Landroid/widget/RippleLayout;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/RippleHelper;->setRippleColor(I)V

    iget p1, p0, Landroid/widget/RippleLayout;->f:I

    invoke-virtual {v0, p1}, Landroid/widget/RippleHelper;->setRippleLineColor(I)V

    iget-boolean p1, p0, Landroid/widget/RippleLayout;->d:Z

    invoke-virtual {v0, p1}, Landroid/widget/RippleHelper;->setCircle(Z)V

    iget-boolean p1, p0, Landroid/widget/RippleLayout;->e:Z

    invoke-virtual {v0, p1}, Landroid/widget/RippleHelper;->setSingle(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public isCircle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RippleLayout;->d:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/RippleLayout;->getChildCount()I

    move-result p1

    iput p1, p0, Landroid/widget/RippleLayout;->b:I

    iget p1, p0, Landroid/widget/RippleLayout;->a:I

    iget p2, p0, Landroid/widget/RippleLayout;->b:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroid/widget/RippleLayout;->b:I

    iput p1, p0, Landroid/widget/RippleLayout;->a:I

    invoke-direct {p0, p0}, Landroid/widget/RippleLayout;->setRippleDrawable(Landroid/view/View;)V

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RippleLayout;->d:Z

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleLayout;->c:I

    return-void
.end method

.method public setRippleLineColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleLayout;->f:I

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RippleLayout;->e:Z

    return-void
.end method
