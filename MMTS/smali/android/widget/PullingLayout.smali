.class public Landroid/widget/PullingLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PullingLayout$FailDrawable;,
        Landroid/widget/PullingLayout$SucceedDrawable;,
        Landroid/widget/PullingLayout$LoadingDrawable;,
        Landroid/widget/PullingLayout$FailDrawable2;,
        Landroid/widget/PullingLayout$SucceedDrawable2;,
        Landroid/widget/PullingLayout$LoadingDrawable2;,
        Landroid/widget/PullingLayout$PullUpDrawable;,
        Landroid/widget/PullingLayout$PullDownDrawable;,
        Landroid/widget/PullingLayout$FootView;,
        Landroid/widget/PullingLayout$HeadView;,
        Landroid/widget/PullingLayout$MyTimer;,
        Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;,
        Landroid/widget/PullingLayout$OnPullDownListener;,
        Landroid/widget/PullingLayout$OnPullUpListener;,
        Landroid/widget/PullingLayout$OnLoadMoreListener;,
        Landroid/widget/PullingLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x5

.field public static final FAIL:I = 0x1

.field public static final INIT:I = 0x0

.field public static final LOADING:I = 0x4

.field public static final NOTHING:I = 0x2

.field public static final REFRESHING:I = 0x2

.field public static final RELEASE_TO_LOAD:I = 0x3

.field public static final RELEASE_TO_REFRESH:I = 0x1

.field public static final SUCCEED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PullToRefreshLayout"


# instance fields
.field private A:Landroid/view/View;

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Landroid/content/Context;

.field private F:Z

.field private G:Z

.field private H:Landroid/view/LayoutInflater;

.field private I:Landroid/widget/PullingLayout$OnLoadMoreListener;

.field private J:Landroid/widget/PullingLayout$OnPullUpListener;

.field private K:Landroid/widget/PullingLayout$OnPullDownListener;

.field private L:Landroid/util/DisplayMetrics;

.field private M:I

.field public MOVE_SPEED:F

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field a:Landroid/os/Handler;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private b:I

.field private c:Landroid/widget/PullingLayout$OnRefreshListener;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/widget/PullingLayout$MyTimer;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:Landroid/view/animation/RotateAnimation;

.field private n:Landroid/view/animation/RotateAnimation;

.field private o:Landroid/widget/PullingLayout$HeadView;

.field private p:Landroid/view/View;

.field public pullDownY:F

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/PullingLayout$FootView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:I

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PullingLayout;->b:I

    iput v0, p0, Landroid/widget/PullingLayout;->f:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Landroid/widget/PullingLayout;->g:F

    iput v0, p0, Landroid/widget/PullingLayout;->h:F

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->j:Z

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->k:Z

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/widget/PullingLayout;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->D:Z

    const-string v0, "\u5237\u65b0\u6210\u529f"

    iput-object v0, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    const-string v0, "\u6682\u65e0\u66f4\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    const-string v0, "\u5237\u65b0\u5931\u8d25"

    iput-object v0, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    const-string v0, "\u52a0\u8f7d\u6210\u529f"

    iput-object v0, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object v0, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    iput-object v0, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    const-string v0, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object v0, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    const-string v0, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u5237\u65b0..."

    iput-object v0, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    const-string v0, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object v0, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    const-string v0, "\u4e0b\u62c9\u5237\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object v0, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    new-instance v0, Landroid/widget/PullingLayout$1;

    invoke-direct {v0, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object v0, p0, Landroid/widget/PullingLayout;->a:Landroid/os/Handler;

    iput v1, p0, Landroid/widget/PullingLayout;->ad:I

    iput v1, p0, Landroid/widget/PullingLayout;->ae:I

    iput v1, p0, Landroid/widget/PullingLayout;->af:I

    iput v1, p0, Landroid/widget/PullingLayout;->ag:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/PullingLayout;->ah:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/PullingLayout;->ai:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PullingLayout;->b:I

    iput p2, p0, Landroid/widget/PullingLayout;->f:F

    const/high16 p2, 0x43480000    # 200.0f

    iput p2, p0, Landroid/widget/PullingLayout;->g:F

    iput p2, p0, Landroid/widget/PullingLayout;->h:F

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->j:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->k:Z

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p0, Landroid/widget/PullingLayout;->l:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->D:Z

    const-string p2, "\u5237\u65b0\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    const-string p2, "\u6682\u65e0\u66f4\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    const-string p2, "\u5237\u65b0\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    const-string p2, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object p2, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    const-string p2, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object p2, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u5237\u65b0..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object p2, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    const-string p2, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    new-instance p2, Landroid/widget/PullingLayout$1;

    invoke-direct {p2, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object p2, p0, Landroid/widget/PullingLayout;->a:Landroid/os/Handler;

    iput v0, p0, Landroid/widget/PullingLayout;->ad:I

    iput v0, p0, Landroid/widget/PullingLayout;->ae:I

    iput v0, p0, Landroid/widget/PullingLayout;->af:I

    iput v0, p0, Landroid/widget/PullingLayout;->ag:I

    const/4 p2, 0x6

    iput p2, p0, Landroid/widget/PullingLayout;->ah:I

    const/4 p2, 0x2

    iput p2, p0, Landroid/widget/PullingLayout;->ai:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 p3, 0x41000000    # 8.0f

    iput p3, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 p3, 0x0

    iput p3, p0, Landroid/widget/PullingLayout;->b:I

    iput p2, p0, Landroid/widget/PullingLayout;->f:F

    const/high16 p2, 0x43480000    # 200.0f

    iput p2, p0, Landroid/widget/PullingLayout;->g:F

    iput p2, p0, Landroid/widget/PullingLayout;->h:F

    iput-boolean p3, p0, Landroid/widget/PullingLayout;->j:Z

    iput-boolean p3, p0, Landroid/widget/PullingLayout;->k:Z

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p0, Landroid/widget/PullingLayout;->l:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->D:Z

    const-string p2, "\u5237\u65b0\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    const-string p2, "\u6682\u65e0\u66f4\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    const-string p2, "\u5237\u65b0\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    const-string p2, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object p2, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    const-string p2, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object p2, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u5237\u65b0..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object p2, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    const-string p2, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    new-instance p2, Landroid/widget/PullingLayout$1;

    invoke-direct {p2, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object p2, p0, Landroid/widget/PullingLayout;->a:Landroid/os/Handler;

    iput p3, p0, Landroid/widget/PullingLayout;->ad:I

    iput p3, p0, Landroid/widget/PullingLayout;->ae:I

    iput p3, p0, Landroid/widget/PullingLayout;->af:I

    iput p3, p0, Landroid/widget/PullingLayout;->ag:I

    const/4 p2, 0x6

    iput p2, p0, Landroid/widget/PullingLayout;->ah:I

    const/4 p2, 0x2

    iput p2, p0, Landroid/widget/PullingLayout;->ai:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->f:F

    return p0
.end method

.method static synthetic a(Landroid/widget/PullingLayout;F)F
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->f:F

    return p1
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Landroid/widget/PullingLayout;->L:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Landroid/widget/PullingLayout;->i:Landroid/widget/PullingLayout$MyTimer;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/PullingLayout$MyTimer;->schedule(J)V

    return-void
.end method

.method private a(I)V
    .locals 3

    iput p1, p0, Landroid/widget/PullingLayout;->b:I

    iget p1, p0, Landroid/widget/PullingLayout;->b:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->L:Landroid/util/DisplayMetrics;

    iput-object p1, p0, Landroid/widget/PullingLayout;->E:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PullingLayout;->E:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/widget/PullingLayout;->M:I

    const/4 v3, 0x1

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/widget/PullingLayout;->N:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/widget/PullingLayout;->M:I

    invoke-virtual {p0, v0}, Landroid/widget/PullingLayout;->setStateColor(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/PullingLayout;->H:Landroid/view/LayoutInflater;

    new-instance p1, Landroid/widget/PullingLayout$HeadView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->E:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$HeadView;-><init>(Landroid/widget/PullingLayout;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    iget-object p1, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/widget/PullingLayout;->E:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    iget-object p1, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/PullingLayout$FootView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->E:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$FootView;-><init>(Landroid/widget/PullingLayout;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    iget-object p1, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/widget/PullingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/widget/PullingLayout;->e()V

    new-instance p1, Landroid/widget/PullingLayout$MyTimer;

    iget-object v0, p0, Landroid/widget/PullingLayout;->a:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$MyTimer;-><init>(Landroid/widget/PullingLayout;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->i:Landroid/widget/PullingLayout$MyTimer;

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    iget-object p1, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->n:Landroid/view/animation/RotateAnimation;

    iget-object p1, p0, Landroid/widget/PullingLayout;->n:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->n:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->n:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->m:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->n:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void

    :array_0
    .array-data 4
        0x1010030
        0x1010031
    .end array-data
.end method

.method static synthetic a(Landroid/widget/PullingLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(I)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/webkit/WebView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/widget/AbsListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private a(Landroid/widget/ExpandableListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/widget/GridView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/GridView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/widget/ListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/widget/ScrollView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method static synthetic b(Landroid/widget/PullingLayout;F)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(F)I

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/widget/PullingLayout;I)I
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->ah:I

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->D:Z

    return-void
.end method

.method static synthetic b(Landroid/widget/PullingLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PullingLayout;->k:Z

    return p0
.end method

.method static synthetic c(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->b:I

    return p0
.end method

.method static synthetic c(Landroid/widget/PullingLayout;I)I
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->ai:I

    return p1
.end method

.method private c()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->F:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->J:Landroid/widget/PullingLayout$OnPullUpListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PullingLayout;->J:Landroid/widget/PullingLayout$OnPullUpListener;

    iget-object v1, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/PullingLayout$OnPullUpListener;->onPullUp(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/ListView;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/GridView;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/ExpandableListView;)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/ScrollView;)Z

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/webkit/WebView;)Z

    move-result v0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->g:F

    return p0
.end method

.method static synthetic d(Landroid/widget/PullingLayout;I)I
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->ad:I

    return p1
.end method

.method private d()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->K:Landroid/widget/PullingLayout$OnPullDownListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PullingLayout;->K:Landroid/widget/PullingLayout$OnPullDownListener;

    iget-object v1, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/PullingLayout$OnPullDownListener;->onPullDown(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Landroid/widget/PullingLayout;I)I
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->ae:I

    return p1
.end method

.method static synthetic e(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->i:Landroid/widget/PullingLayout$MyTimer;

    return-object p0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getPullView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getStateText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getLoadingView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->q:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getStateView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getPullView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getStateText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getLoadingView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->v:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getStateView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic f(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->h:F

    return p0
.end method

.method static synthetic g(Landroid/widget/PullingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Landroid/widget/PullingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->u:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Landroid/widget/PullingLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PullingLayout;->a()V

    return-void
.end method

.method static synthetic j(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->c:Landroid/widget/PullingLayout$OnRefreshListener;

    return-object p0
.end method

.method static synthetic k(Landroid/widget/PullingLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Landroid/widget/PullingLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->y:I

    return p0
.end method

.method static synthetic n(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->ad:I

    return p0
.end method

.method static synthetic o(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->ah:I

    return p0
.end method

.method static synthetic p(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->ae:I

    return p0
.end method

.method static synthetic q(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->ai:I

    return p0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->A:Landroid/view/View;

    iget-object p2, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public autoLoad()V
    .locals 1

    iget v0, p0, Landroid/widget/PullingLayout;->h:F

    neg-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->f:F

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->requestLayout()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->a(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->I:Landroid/widget/PullingLayout$OnLoadMoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PullingLayout;->I:Landroid/widget/PullingLayout$OnLoadMoreListener;

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnLoadMoreListener;->onLoadMore(Landroid/widget/PullingLayout;)V

    :cond_0
    return-void
.end method

.method public autoRefresh()V
    .locals 4

    new-instance v0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;-><init>(Landroid/widget/PullingLayout;Landroid/widget/PullingLayout$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PullingLayout;->B:I

    goto/16 :goto_6

    :pswitch_2
    iget v0, p0, Landroid/widget/PullingLayout;->B:I

    const/4 v6, 0x0

    if-nez v0, :cond_8

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_5

    invoke-direct {p0}, Landroid/widget/PullingLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->C:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/PullingLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->D:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/PullingLayout;->b()V

    goto :goto_3

    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v7, p0, Landroid/widget/PullingLayout;->e:F

    sub-float/2addr v1, v7

    iget v7, p0, Landroid/widget/PullingLayout;->l:F

    div-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/PullingLayout;->f:F

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    iput v6, p0, Landroid/widget/PullingLayout;->f:F

    iput-boolean v5, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean v4, p0, Landroid/widget/PullingLayout;->D:Z

    :cond_3
    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->f:F

    :cond_4
    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v2, :cond_9

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v7, p0, Landroid/widget/PullingLayout;->e:F

    sub-float/2addr v2, v7

    iget v7, p0, Landroid/widget/PullingLayout;->l:F

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_6

    iput v6, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iput-boolean v4, p0, Landroid/widget/PullingLayout;->C:Z

    iput-boolean v5, p0, Landroid/widget/PullingLayout;->D:Z

    :cond_6
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    :cond_7
    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v1, :cond_9

    :goto_2
    iput-boolean v5, p0, Landroid/widget/PullingLayout;->k:Z

    goto :goto_3

    :cond_8
    iput v4, p0, Landroid/widget/PullingLayout;->B:I

    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/PullingLayout;->e:F

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0}, Landroid/widget/PullingLayout;->getMeasuredHeight()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v0, v7

    iget v2, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v7, p0, Landroid/widget/PullingLayout;->f:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    float-to-double v7, v2

    mul-double v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v7

    add-double/2addr v0, v7

    double-to-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->l:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_a

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/widget/PullingLayout;->requestLayout()V

    :cond_b
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v0, v0, v6

    const/4 v1, 0x5

    if-lez v0, :cond_e

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v2, p0, Landroid/widget/PullingLayout;->g:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_d

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-eq v0, v5, :cond_c

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v1, :cond_d

    :cond_c
    invoke-direct {p0, v4}, Landroid/widget/PullingLayout;->a(I)V

    :cond_d
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v1, p0, Landroid/widget/PullingLayout;->g:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-nez v0, :cond_11

    invoke-direct {p0, v5}, Landroid/widget/PullingLayout;->a(I)V

    goto :goto_4

    :cond_e
    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_11

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    neg-float v0, v0

    iget v2, p0, Landroid/widget/PullingLayout;->h:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_10

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-eq v0, v3, :cond_f

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v1, :cond_10

    :cond_f
    invoke-direct {p0, v4}, Landroid/widget/PullingLayout;->a(I)V

    :cond_10
    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    neg-float v0, v0

    iget v1, p0, Landroid/widget/PullingLayout;->h:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-nez v0, :cond_11

    invoke-direct {p0, v3}, Landroid/widget/PullingLayout;->a(I)V

    :cond_11
    :goto_4
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v1, p0, Landroid/widget/PullingLayout;->f:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_6

    :pswitch_3
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v6, p0, Landroid/widget/PullingLayout;->g:F

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_12

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    neg-float v0, v0

    iget v6, p0, Landroid/widget/PullingLayout;->h:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_13

    :cond_12
    iput-boolean v4, p0, Landroid/widget/PullingLayout;->k:Z

    :cond_13
    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v5, :cond_14

    invoke-direct {p0, v1}, Landroid/widget/PullingLayout;->a(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->c:Landroid/widget/PullingLayout$OnRefreshListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/PullingLayout;->c:Landroid/widget/PullingLayout$OnRefreshListener;

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnRefreshListener;->onRefresh(Landroid/widget/PullingLayout;)V

    goto :goto_5

    :cond_14
    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    if-ne v0, v3, :cond_15

    invoke-direct {p0, v2}, Landroid/widget/PullingLayout;->a(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->I:Landroid/widget/PullingLayout$OnLoadMoreListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/PullingLayout;->I:Landroid/widget/PullingLayout$OnLoadMoreListener;

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnLoadMoreListener;->onLoadMore(Landroid/widget/PullingLayout;)V

    :cond_15
    :goto_5
    invoke-direct {p0}, Landroid/widget/PullingLayout;->a()V

    goto :goto_6

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/PullingLayout;->d:F

    iget v0, p0, Landroid/widget/PullingLayout;->d:F

    iput v0, p0, Landroid/widget/PullingLayout;->e:F

    iget-object v0, p0, Landroid/widget/PullingLayout;->i:Landroid/widget/PullingLayout$MyTimer;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    iput v4, p0, Landroid/widget/PullingLayout;->B:I

    invoke-direct {p0}, Landroid/widget/PullingLayout;->b()V

    :cond_16
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getLoadFail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadNothing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadSucceed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getLoading()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getPulldownToRefresh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public getPullupToLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshFail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshNothing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshSucceed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseToLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseToRefresh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    return-object v0
.end method

.method public loadmoreFinish(I)V
    .locals 3

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->w:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$SucceedDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$SucceedDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :goto_1
    iget p1, p0, Landroid/widget/PullingLayout;->f:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    new-instance p1, Landroid/widget/PullingLayout$3;

    invoke-direct {p1, p0}, Landroid/widget/PullingLayout$3;-><init>(Landroid/widget/PullingLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/PullingLayout$3;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(I)V

    invoke-direct {p0}, Landroid/widget/PullingLayout;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean p1, p0, Landroid/widget/PullingLayout;->j:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->j:Z

    iget-object p1, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/PullingLayout;->g:F

    iget-object p1, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/PullingLayout;->h:F

    iget-object p1, p0, Landroid/widget/PullingLayout;->x:Landroid/widget/TextView;

    iget p3, p0, Landroid/widget/PullingLayout;->y:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget p3, p0, Landroid/widget/PullingLayout;->y:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {p4}, Landroid/widget/PullingLayout$HeadView;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/widget/PullingLayout;->o:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {p4}, Landroid/widget/PullingLayout$HeadView;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/PullingLayout$HeadView;->layout(IIII)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {p4}, Landroid/widget/PullingLayout$FootView;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->f:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Landroid/widget/PullingLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p0, Landroid/widget/PullingLayout;->t:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/PullingLayout$FootView;->layout(IIII)V

    return-void
.end method

.method public refreshFinish(I)V
    .locals 3

    iget v0, p0, Landroid/widget/PullingLayout;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->s:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->r:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$SucceedDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$SucceedDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :goto_1
    iget p1, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    new-instance p1, Landroid/widget/PullingLayout$2;

    invoke-direct {p1, p0}, Landroid/widget/PullingLayout$2;-><init>(Landroid/widget/PullingLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/PullingLayout$2;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->a(I)V

    invoke-direct {p0}, Landroid/widget/PullingLayout;->a()V

    return-void
.end method

.method public setLoadFail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->T:Ljava/lang/String;

    return-void
.end method

.method public setLoadNothing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->S:Ljava/lang/String;

    return-void
.end method

.method public setLoadSucceed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->R:Ljava/lang/String;

    return-void
.end method

.method public setLoading(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->ac:Ljava/lang/String;

    return-void
.end method

.method public setOnLoadMoreListener(Landroid/widget/PullingLayout$OnLoadMoreListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->I:Landroid/widget/PullingLayout$OnLoadMoreListener;

    return-void
.end method

.method public setOnPullDownListener(Landroid/widget/PullingLayout$OnPullDownListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->K:Landroid/widget/PullingLayout$OnPullDownListener;

    return-void
.end method

.method public setOnPullUpListener(Landroid/widget/PullingLayout$OnPullUpListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->J:Landroid/widget/PullingLayout$OnPullUpListener;

    return-void
.end method

.method public setOnRefreshListener(Landroid/widget/PullingLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->c:Landroid/widget/PullingLayout$OnRefreshListener;

    return-void
.end method

.method public setPullDownEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->G:Z

    return-void
.end method

.method public setPullUpEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->F:Z

    return-void
.end method

.method public setPulldownToRefresh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->ab:Ljava/lang/String;

    return-void
.end method

.method public setPullupToLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->U:Ljava/lang/String;

    return-void
.end method

.method public setRefreshFail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->Q:Ljava/lang/String;

    return-void
.end method

.method public setRefreshNothing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->P:Ljava/lang/String;

    return-void
.end method

.method public setRefreshSucceed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->O:Ljava/lang/String;

    return-void
.end method

.method public setRefreshing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->W:Ljava/lang/String;

    return-void
.end method

.method public setReleaseToLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->aa:Ljava/lang/String;

    return-void
.end method

.method public setReleaseToRefresh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->V:Ljava/lang/String;

    return-void
.end method

.method public setStateColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->y:I

    return-void
.end method
