.class Landroid/widget/RippleHelper$task;
.super Lcom/androlua/util/TimerTaskX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RippleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "task"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RippleHelper;


# direct methods
.method private constructor <init>(Landroid/widget/RippleHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-direct {p0}, Lcom/androlua/util/TimerTaskX;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RippleHelper;Landroid/widget/RippleHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RippleHelper$task;-><init>(Landroid/widget/RippleHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0, v2}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    invoke-virtual {p0, v2}, Landroid/widget/RippleHelper$task;->setEnabled(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v4}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->i(Landroid/widget/RippleHelper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0, v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;I)I

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v3

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->g(Landroid/widget/RippleHelper;)I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->g(Landroid/widget/RippleHelper;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;I)I

    return-void

    :pswitch_2
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    iget-object v1, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v1}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->a:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
