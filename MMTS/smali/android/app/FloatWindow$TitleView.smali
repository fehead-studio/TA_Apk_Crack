.class Landroid/app/FloatWindow$TitleView;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleView"
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


# direct methods
.method public constructor <init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->b:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->c:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->d:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->e:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->f:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FloatWindow$TitleView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->e:I

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->d:I

    iget p1, p0, Landroid/app/FloatWindow$TitleView;->g:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->c:I

    iget p1, p0, Landroid/app/FloatWindow$TitleView;->h:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->d:I

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->h:I

    iget v2, p0, Landroid/app/FloatWindow$TitleView;->b:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->e:I

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->g:I

    iget v2, p0, Landroid/app/FloatWindow$TitleView;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->d(Landroid/app/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FloatWindow$TitleView;->a:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
