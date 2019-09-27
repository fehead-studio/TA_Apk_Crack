.class Landroid/app/FloatWindow$ContentView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic a:Landroid/app/FloatWindow;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/app/FloatWindow$ContentView;->b:I

    iput p2, p0, Landroid/app/FloatWindow$ContentView;->c:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;F)I

    move-result p1

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->k:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v0, v1}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v0, v2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/FloatWindow$ContentView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->k:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v2, p0, Landroid/app/FloatWindow$ContentView;->j:Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/FloatWindow$ContentView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iget p1, p0, Landroid/app/FloatWindow$ContentView;->k:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    iput-boolean v2, p0, Landroid/app/FloatWindow$ContentView;->l:Z

    :cond_3
    invoke-virtual {p0}, Landroid/app/FloatWindow$ContentView;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->f:I

    invoke-virtual {p0}, Landroid/app/FloatWindow$ContentView;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->g:I

    iget p1, p0, Landroid/app/FloatWindow$ContentView;->d:I

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->c:I

    iget p1, p0, Landroid/app/FloatWindow$ContentView;->e:I

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->b:I

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->h:I

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Landroid/app/FloatWindow$ContentView;->i:I

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->h:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->i:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean p1, p0, Landroid/app/FloatWindow$ContentView;->j:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->f:I

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->e:I

    iget v3, p0, Landroid/app/FloatWindow$ContentView;->b:I

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->e(Landroid/app/FloatWindow;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_5
    iget-boolean p1, p0, Landroid/app/FloatWindow$ContentView;->l:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->g:I

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->d:I

    iget v3, p0, Landroid/app/FloatWindow$ContentView;->c:I

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->f(Landroid/app/FloatWindow;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_6
    iget-object p1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->d(Landroid/app/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->a:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_8

    iput-boolean v1, p0, Landroid/app/FloatWindow$ContentView;->j:Z

    iput-boolean v1, p0, Landroid/app/FloatWindow$ContentView;->l:Z

    :cond_8
    return v2
.end method
