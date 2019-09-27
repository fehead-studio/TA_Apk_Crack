.class public Lcom/b/a/a/i;
.super Lcom/b/a/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/i$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/b/a/a/i$a;

.field private final f:Lcom/b/a/a/i$a;

.field private final g:Lcom/b/a/a/i$a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Lcom/b/a/a/c;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/b/a/a/g;-><init>(Lcom/b/a/a/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/i;->h:Z

    iput-boolean v0, p0, Lcom/b/a/a/i;->i:Z

    iput-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    iput-boolean v0, p0, Lcom/b/a/a/i;->k:Z

    invoke-virtual {p1}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget v0, Lcom/b/a/a/c;->d:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/b/a/a/i;->l:I

    new-instance p1, Lcom/b/a/a/i$a;

    invoke-direct {p1, p0}, Lcom/b/a/a/i$a;-><init>(Lcom/b/a/a/i;)V

    iput-object p1, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    new-instance p1, Lcom/b/a/a/i$a;

    invoke-direct {p1, p0}, Lcom/b/a/a/i$a;-><init>(Lcom/b/a/a/i;)V

    iput-object p1, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    new-instance p1, Lcom/b/a/a/i$a;

    invoke-direct {p1, p0}, Lcom/b/a/a/i$a;-><init>(Lcom/b/a/a/i;)V

    iput-object p1, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/i;)I
    .locals 0

    iget p0, p0, Lcom/b/a/a/i;->l:I

    return p0
.end method

.method private a(Lcom/b/a/a/i$a;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/b/a/a/i$a;->c(II)Lcom/b/a/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b/a/b/m;->a()I

    move-result p2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v0, p2}, Lcom/b/a/a/c;->moveCaret(I)V

    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v0, p2}, Lcom/b/a/a/c;->c(I)Landroid/graphics/Rect;

    move-result-object p2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/b/a/a/i$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    iget-object v0, v0, Lcom/b/a/a/i$a;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->isSelectText2()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->d()V

    iget-object v0, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->e()V

    iget-object v0, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->e()V

    iget-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getCaretPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->c(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v1, v0}, Lcom/b/a/a/i$a;->b(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/a/i;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    iget-boolean v1, p0, Lcom/b/a/a/i;->j:Z

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/i$a;->a(Landroid/graphics/Canvas;Z)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/a/a/i;->k:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->e()V

    iget-object v0, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->d()V

    iget-object v0, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->d()V

    iget-boolean v0, p0, Lcom/b/a/a/i;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/b/a/a/i;->i:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->c(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v1, v0}, Lcom/b/a/a/i$a;->b(II)V

    iget-object v0, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->c(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v1, v0}, Lcom/b/a/a/i$a;->b(II)V

    :cond_4
    iget-object v0, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    iget-boolean v1, p0, Lcom/b/a/a/i;->h:Z

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/i$a;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    iget-boolean v1, p0, Lcom/b/a/a/i;->h:Z

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/i$a;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public a(Lcom/b/a/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    sget-object v1, Lcom/b/a/b/b$a;->f:Lcom/b/a/b/b$a;

    invoke-virtual {p1, v1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b/a/a/i$a;->a(I)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    iput-boolean v0, p0, Lcom/b/a/a/i;->h:Z

    iput-boolean v0, p0, Lcom/b/a/a/i;->i:Z

    iget-object v0, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->c()V

    iget-object v0, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->c()V

    iget-object v0, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/a/i$a;->c()V

    invoke-super {p0, p1}, Lcom/b/a/a/g;->a(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {p1, v3}, Lcom/b/a/a/c;->selectText(Z)V

    return v3

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/b/a/a/g;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/b/a/a/g;->onDown(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/b/a/a/i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/b/a/a/i;->j:Z

    iget-object v2, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/b/a/a/i;->h:Z

    iget-object v2, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/b/a/a/i;->i:Z

    iget-boolean v2, p0, Lcom/b/a/a/i;->j:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/b/a/a/i;->k:Z

    iget-object v2, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->d(II)V

    iget-object p1, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    :goto_0
    invoke-virtual {p1}, Lcom/b/a/a/i$a;->b()V

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/b/a/a/i;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->d(II)V

    iget-object p1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->focusSelectionStart()V

    iget-object p1, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/b/a/a/i;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, p1}, Lcom/b/a/a/i$a;->d(II)V

    iget-object p1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->focusSelectionEnd()V

    iget-object p1, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/a/i;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/a/i;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/a/g;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/b/a/a/i;->a(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/b/a/a/i;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/b/a/a/i;->a(Landroid/view/MotionEvent;)Z

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/b/a/a/i;->k:Z

    iget-object p1, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i$a;Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/a/i;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/b/a/a/i;->a(Landroid/view/MotionEvent;)Z

    return v1

    :cond_2
    iget-object p1, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i$a;Landroid/view/MotionEvent;)V

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/b/a/a/i;->i:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/b/a/a/i;->a(Landroid/view/MotionEvent;)Z

    return v1

    :cond_4
    iget-object p1, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/i;->a(Lcom/b/a/a/i$a;Landroid/view/MotionEvent;)V

    return v1

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/a/g;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/a/i;->e:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b/a/a/i;->f:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b/a/a/i;->g:Lcom/b/a/a/i$a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/i$a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/b/a/a/i;->k:Z

    invoke-super {p0, p1}, Lcom/b/a/a/g;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v3
.end method
