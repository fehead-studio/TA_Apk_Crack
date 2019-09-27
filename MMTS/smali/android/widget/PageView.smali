.class public Landroid/widget/PageView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PageView$PageObserver;,
        Landroid/widget/PageView$ViewPositionComparator;,
        Landroid/widget/PageView$LayoutParams;,
        Landroid/widget/PageView$SavedState;,
        Landroid/widget/PageView$SimpleOnPageChangeListener;,
        Landroid/widget/PageView$ItemInfo;,
        Landroid/widget/PageView$Decor;,
        Landroid/widget/PageView$OnAdapterChangeListener;,
        Landroid/widget/PageView$PageTransformer;,
        Landroid/widget/PageView$OnPageChangeListener;
    }
.end annotation


# static fields
.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final a:[I

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/widget/PageView$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/widget/PageView$ViewPositionComparator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:J

.field private S:Landroid/widget/EdgeEffect;

.field private T:Landroid/widget/EdgeEffect;

.field private U:Z

.field private V:Z

.field private W:Z

.field private aa:I

.field private ab:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/PageView$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Landroid/widget/PageView$OnPageChangeListener;

.field private ad:Landroid/widget/PageView$OnPageChangeListener;

.field private ae:Landroid/widget/PageView$OnAdapterChangeListener;

.field private af:Landroid/widget/PageView$PageTransformer;

.field private ag:Ljava/lang/reflect/Method;

.field private ah:I

.field private ai:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aj:I

.field private final ak:Ljava/lang/Runnable;

.field private al:Z

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/PageView$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/widget/PageView$ItemInfo;

.field private final g:Landroid/graphics/Rect;

.field private h:I

.field private i:Landroid/widget/BasePageAdapter;

.field private j:I

.field private k:I

.field private l:Landroid/os/Parcelable;

.field private m:Ljava/lang/ClassLoader;

.field private n:Landroid/widget/Scroller;

.field private o:Landroid/widget/PageView$PageObserver;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PageView;->a:[I

    new-instance v0, Landroid/widget/PageView$1;

    invoke-direct {v0}, Landroid/widget/PageView$1;-><init>()V

    sput-object v0, Landroid/widget/PageView;->b:Ljava/util/Comparator;

    new-instance v0, Landroid/widget/PageView$2;

    invoke-direct {v0}, Landroid/widget/PageView$2;-><init>()V

    sput-object v0, Landroid/widget/PageView;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/PageView$ViewPositionComparator;

    invoke-direct {v0}, Landroid/widget/PageView$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/widget/PageView;->d:Landroid/widget/PageView$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    new-instance p1, Landroid/widget/PageView$ItemInfo;

    invoke-direct {p1}, Landroid/widget/PageView$ItemInfo;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->f:Landroid/widget/PageView$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/PageView;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PageView;->l:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/widget/PageView;->m:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/widget/PageView;->t:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/widget/PageView;->u:F

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/PageView;->A:I

    iput p1, p0, Landroid/widget/PageView;->K:I

    iput-boolean v0, p0, Landroid/widget/PageView;->U:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/PageView;->V:Z

    iput p1, p0, Landroid/widget/PageView;->aj:I

    new-instance p1, Landroid/widget/PageView$3;

    invoke-direct {p1, p0}, Landroid/widget/PageView$3;-><init>(Landroid/widget/PageView;)V

    iput-object p1, p0, Landroid/widget/PageView;->ak:Ljava/lang/Runnable;

    iput-boolean v0, p0, Landroid/widget/PageView;->al:Z

    invoke-virtual {p0}, Landroid/widget/PageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    new-instance p1, Landroid/widget/PageView$ItemInfo;

    invoke-direct {p1}, Landroid/widget/PageView$ItemInfo;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->f:Landroid/widget/PageView$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/PageView;->k:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/widget/PageView;->l:Landroid/os/Parcelable;

    iput-object p2, p0, Landroid/widget/PageView;->m:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Landroid/widget/PageView;->t:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Landroid/widget/PageView;->u:F

    const/4 p2, 0x1

    iput p2, p0, Landroid/widget/PageView;->A:I

    iput p1, p0, Landroid/widget/PageView;->K:I

    iput-boolean p2, p0, Landroid/widget/PageView;->U:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/PageView;->V:Z

    iput p1, p0, Landroid/widget/PageView;->aj:I

    new-instance p1, Landroid/widget/PageView$3;

    invoke-direct {p1, p0}, Landroid/widget/PageView$3;-><init>(Landroid/widget/PageView;)V

    iput-object p1, p0, Landroid/widget/PageView;->ak:Ljava/lang/Runnable;

    iput-boolean p2, p0, Landroid/widget/PageView;->al:Z

    invoke-virtual {p0}, Landroid/widget/PageView;->a()V

    return-void
.end method

.method private a(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/widget/PageView;->O:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/widget/PageView;->M:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Landroid/widget/PageView;->j:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    :goto_1
    iget-object p2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/PageView$ItemInfo;

    iget-object p3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    iget-object p4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/PageView$ItemInfo;

    iget p2, p2, Landroid/widget/PageView$ItemInfo;->b:I

    iget p3, p3, Landroid/widget/PageView$ItemInfo;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private a(IIII)V
    .locals 6

    if-lez p2, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float p3, p3, p2

    float-to-int v1, p3

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/widget/PageView;->scrollTo(II)V

    iget-object p2, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    iget p2, p0, Landroid/widget/PageView;->j:I

    invoke-virtual {p0, p2}, Landroid/widget/PageView;->b(I)Landroid/widget/PageView$ItemInfo;

    move-result-object p2

    iget-object v0, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p2, Landroid/widget/PageView$ItemInfo;->e:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    :cond_0
    iget p2, p0, Landroid/widget/PageView;->j:I

    invoke-virtual {p0, p2}, Landroid/widget/PageView;->b(I)Landroid/widget/PageView$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/widget/PageView$ItemInfo;->e:F

    iget p3, p0, Landroid/widget/PageView;->u:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/PageView;->a(Z)V

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/PageView;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method private a(IZIZ)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->b(I)Landroid/widget/PageView$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/PageView;->t:F

    iget v0, v0, Landroid/widget/PageView$ItemInfo;->e:F

    iget v4, p0, Landroid/widget/PageView;->u:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/PageView;->a(III)V

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/PageView;->d(I)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/PageView;->d(I)V

    :cond_2
    invoke-direct {p0, v1}, Landroid/widget/PageView;->a(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/PageView;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroid/widget/PageView;->c(I)Z

    :cond_3
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/PageView;->K:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/PageView;->K:I

    iget-object p1, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/PageView$ItemInfo;ILandroid/widget/PageView$ItemInfo;)V
    .locals 10

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Landroid/widget/PageView;->p:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v3, p3, Landroid/widget/PageView$ItemInfo;->b:I

    iget v4, p1, Landroid/widget/PageView$ItemInfo;->b:I

    if-ge v3, v4, :cond_3

    iget v4, p3, Landroid/widget/PageView$ItemInfo;->e:F

    iget p3, p3, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    :goto_1
    iget v5, p1, Landroid/widget/PageView$ItemInfo;->b:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    :goto_2
    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$ItemInfo;

    iget v6, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    iget v6, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v6, v3}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iput v4, v5, Landroid/widget/PageView$ItemInfo;->e:F

    iget v5, v5, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v4, p1, Landroid/widget/PageView$ItemInfo;->b:I

    if-le v3, v4, :cond_6

    iget-object v4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget p3, p3, Landroid/widget/PageView$ItemInfo;->e:F

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iget v5, p1, Landroid/widget/PageView$ItemInfo;->b:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    :goto_5
    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$ItemInfo;

    iget v6, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_4
    :goto_6
    iget v6, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-le v3, v6, :cond_5

    iget-object v6, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v6, v3}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    iget v6, v5, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Landroid/widget/PageView$ItemInfo;->e:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Landroid/widget/PageView$ItemInfo;->e:F

    iget v4, p1, Landroid/widget/PageView$ItemInfo;->b:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p1, Landroid/widget/PageView$ItemInfo;->b:I

    if-nez v5, :cond_7

    iget v5, p1, Landroid/widget/PageView$ItemInfo;->e:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Landroid/widget/PageView;->t:F

    iget v5, p1, Landroid/widget/PageView$ItemInfo;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Landroid/widget/PageView$ItemInfo;->e:F

    iget v7, p1, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Landroid/widget/PageView;->u:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    iget-object v7, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/PageView$ItemInfo;

    :goto_a
    iget v8, v7, Landroid/widget/PageView$ItemInfo;->b:I

    if-le v4, v8, :cond_9

    iget-object v8, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_a

    :cond_9
    iget v8, v7, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    iput v3, v7, Landroid/widget/PageView$ItemInfo;->e:F

    iget v7, v7, Landroid/widget/PageView$ItemInfo;->b:I

    if-nez v7, :cond_a

    iput v3, p0, Landroid/widget/PageView;->t:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_b
    iget v3, p1, Landroid/widget/PageView$ItemInfo;->e:F

    iget v4, p1, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget p1, p1, Landroid/widget/PageView$ItemInfo;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/PageView$ItemInfo;

    :goto_c
    iget v5, v4, Landroid/widget/PageView$ItemInfo;->b:I

    if-ge p1, v5, :cond_c

    iget-object v5, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    iget v5, v4, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v5, v0, :cond_d

    iget v5, v4, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/widget/PageView;->u:F

    :cond_d
    iput v3, v4, Landroid/widget/PageView$ItemInfo;->e:F

    iget v4, v4, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    iput-boolean v1, p0, Landroid/widget/PageView;->V:Z

    return-void
.end method

.method static synthetic a(Landroid/widget/PageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PageView;->setScrollState(I)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    iget v0, p0, Landroid/widget/PageView;->aj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result v4

    iget-object v5, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/widget/PageView;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    invoke-direct {p0, v5}, Landroid/widget/PageView;->c(I)Z

    :cond_2
    iput-boolean v2, p0, Landroid/widget/PageView;->z:Z

    move v3, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/PageView$ItemInfo;

    iget-boolean v5, v4, Landroid/widget/PageView$ItemInfo;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v2, v4, Landroid/widget/PageView$ItemInfo;->c:Z

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/widget/PageView;->ak:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object p1, p0, Landroid/widget/PageView;->ak:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method

.method private a(FF)Z
    .locals 3

    iget v0, p0, Landroid/widget/PageView;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/widget/PageView;->E:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(IFI)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private b(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 9

    iget v0, p0, Landroid/widget/PageView;->G:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/PageView;->t:F

    mul-float v1, v1, v0

    iget v2, p0, Landroid/widget/PageView;->u:F

    mul-float v2, v2, v0

    iget-object v3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/PageView$ItemInfo;

    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$ItemInfo;

    iget v6, v3, Landroid/widget/PageView$ItemInfo;->b:I

    if-eqz v6, :cond_0

    iget v1, v3, Landroid/widget/PageView$ItemInfo;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v6, v5, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v8, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v8}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Landroid/widget/PageView$ItemInfo;->e:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :cond_4
    move p1, v2

    :cond_5
    :goto_1
    iget v0, p0, Landroid/widget/PageView;->G:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/PageView;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroid/widget/PageView;->c(I)Z

    return v4
.end method

.method private c(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 6

    iget-object v0, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/PageView;->W:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Landroid/widget/PageView;->a(IFI)V

    iget-boolean p1, p0, Landroid/widget/PageView;->W:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/widget/PageView;->j()Landroid/widget/PageView$ItemInfo;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/PageView;->p:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/PageView;->p:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget v5, v0, Landroid/widget/PageView$ItemInfo;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    iget v2, v0, Landroid/widget/PageView$ItemInfo;->e:F

    sub-float/2addr p1, v2

    iget v0, v0, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v3

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v1, p0, Landroid/widget/PageView;->W:Z

    invoke-virtual {p0, v5, p1, v0}, Landroid/widget/PageView;->a(IFI)V

    iget-boolean p1, p0, Landroid/widget/PageView;->W:Z

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageSelected(I)V

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageChange(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PageView;->ad:Landroid/widget/PageView$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/PageView$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method static synthetic f()[I
    .locals 1

    sget-object v0, Landroid/widget/PageView;->a:[I

    return-object v0
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/PageView$LayoutParams;

    iget-boolean v1, v1, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .locals 4

    iget v0, p0, Landroid/widget/PageView;->ah:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    sget-object v1, Landroid/widget/PageView;->d:Landroid/widget/PageView$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PageView;->K:I

    invoke-direct {p0}, Landroid/widget/PageView;->k()V

    iget-object v0, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    return v0
.end method

.method private j()Landroid/widget/PageView$ItemInfo;
    .locals 12

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Landroid/widget/PageView;->p:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v5, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    iget-object v10, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    iget-object v10, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/PageView$ItemInfo;

    if-nez v3, :cond_2

    iget v11, v10, Landroid/widget/PageView$ItemInfo;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    iget-object v10, p0, Landroid/widget/PageView;->f:Landroid/widget/PageView$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v10, Landroid/widget/PageView$ItemInfo;->e:F

    iput v7, v10, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v7, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget v8, v10, Landroid/widget/PageView$ItemInfo;->b:I

    invoke-virtual {v7, v8}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Landroid/widget/PageView$ItemInfo;->d:F

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget v8, v10, Landroid/widget/PageView$ItemInfo;->e:F

    iget v7, v10, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v3, :cond_4

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_3

    goto :goto_3

    :cond_3
    return-object v5

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    iget-object v3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    return-object v10

    :cond_5
    iget v7, v10, Landroid/widget/PageView$ItemInfo;->b:I

    iget v9, v10, Landroid/widget/PageView$ItemInfo;->d:F

    add-int/lit8 v1, v1, 0x1

    move-object v5, v10

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    return-object v10

    :cond_7
    return-object v5
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PageView;->B:Z

    iput-boolean v0, p0, Landroid/widget/PageView;->C:Z

    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Landroid/widget/PageView;->aj:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/PageView;->aj:I

    iget-object v0, p0, Landroid/widget/PageView;->af:Landroid/widget/PageView$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/PageView;->b(Z)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/PageView;->e(I)V

    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PageView;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/PageView;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method a(II)Landroid/widget/PageView$ItemInfo;
    .locals 2

    new-instance v0, Landroid/widget/PageView$ItemInfo;

    invoke-direct {v0}, Landroid/widget/PageView$ItemInfo;-><init>()V

    iput p1, v0, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v1, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/widget/BasePageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Landroid/widget/PageView$ItemInfo;->d:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PageView$ItemInfo;

    iget-object v2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v3, v1, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/widget/BasePageAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/widget/PageView;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/PageView;->F:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/PageView;->M:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/PageView;->N:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/PageView;->O:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/PageView;->P:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Landroid/widget/PageView;->D:I

    new-instance v1, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v1}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/PageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/PageView;->j:I

    if-eq v2, v1, :cond_1

    iget v2, v0, Landroid/widget/PageView;->j:I

    if-ge v2, v1, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    iget v4, v0, Landroid/widget/PageView;->j:I

    invoke-virtual {v0, v4}, Landroid/widget/PageView;->b(I)Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    iput v1, v0, Landroid/widget/PageView;->j:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    :goto_1
    iget-object v1, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/PageView;->h()V

    return-void

    :cond_2
    iget-boolean v1, v0, Landroid/widget/PageView;->z:Z

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/PageView;->h()V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BasePageAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget v1, v0, Landroid/widget/PageView;->A:I

    iget v5, v0, Landroid/widget/PageView;->j:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v7}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    iget v9, v0, Landroid/widget/PageView;->j:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v9, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/PageView$ItemInfo;

    iget v10, v9, Landroid/widget/PageView$ItemInfo;->b:I

    iget v11, v0, Landroid/widget/PageView;->j:I

    if-lt v10, v11, :cond_5

    iget v10, v9, Landroid/widget/PageView$ItemInfo;->b:I

    iget v11, v0, Landroid/widget/PageView;->j:I

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    iget v9, v0, Landroid/widget/PageView;->j:I

    invoke-virtual {v0, v9, v8}, Landroid/widget/PageView;->a(II)Landroid/widget/PageView$ItemInfo;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_18

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_8

    iget-object v12, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/PageView$ItemInfo;

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    iget v15, v9, Landroid/widget/PageView$ItemInfo;->d:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v3, v15

    :goto_5
    iget v6, v0, Landroid/widget/PageView;->j:I

    add-int/lit8 v6, v6, -0x1

    move v15, v8

    const/4 v8, 0x0

    :goto_6
    if-ltz v6, :cond_f

    cmpl-float v16, v8, v3

    if-ltz v16, :cond_b

    if-ge v6, v5, :cond_b

    if-nez v12, :cond_a

    goto :goto_9

    :cond_a
    iget v10, v12, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v6, v10, :cond_e

    iget-boolean v10, v12, Landroid/widget/PageView$ItemInfo;->c:Z

    if-nez v10, :cond_e

    iget-object v10, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v12, v12, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v6, v12}, Landroid/widget/BasePageAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v15, v15, -0x1

    if-ltz v11, :cond_d

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_c

    iget v10, v12, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v6, v10, :cond_c

    iget v10, v12, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v8, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_d

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v0, v6, v10}, Landroid/widget/PageView;->a(II)Landroid/widget/PageView$ItemInfo;

    move-result-object v10

    iget v10, v10, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v8, v10

    add-int/lit8 v15, v15, 0x1

    if-ltz v11, :cond_d

    :goto_7
    iget-object v10, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/PageView$ItemInfo;

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    move-object v12, v10

    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_f
    :goto_9
    iget v3, v9, Landroid/widget/PageView$ItemInfo;->d:F

    add-int/lit8 v5, v15, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_17

    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/PageView$ItemInfo;

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v13

    div-float/2addr v8, v10

    add-float v10, v8, v14

    :goto_b
    iget v8, v0, Landroid/widget/PageView;->j:I

    :goto_c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v7, :cond_17

    cmpl-float v11, v3, v10

    if-ltz v11, :cond_14

    if-le v8, v1, :cond_14

    if-nez v6, :cond_12

    goto :goto_f

    :cond_12
    iget v11, v6, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v8, v11, :cond_16

    iget-boolean v11, v6, Landroid/widget/PageView$ItemInfo;->c:Z

    if-nez v11, :cond_16

    iget-object v11, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v6, v6, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v11, v0, v8, v6}, Landroid/widget/BasePageAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    :goto_d
    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/PageView$ItemInfo;

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    goto :goto_e

    :cond_14
    if-eqz v6, :cond_15

    iget v11, v6, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v8, v11, :cond_15

    iget v6, v6, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    goto :goto_d

    :cond_15
    invoke-virtual {v0, v8, v5}, Landroid/widget/PageView;->a(II)Landroid/widget/PageView$ItemInfo;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget v6, v6, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v3, v6

    iget-object v6, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    goto :goto_d

    :cond_16
    :goto_e
    goto :goto_c

    :cond_17
    :goto_f
    invoke-direct {v0, v9, v15, v4}, Landroid/widget/PageView;->a(Landroid/widget/PageView$ItemInfo;ILandroid/widget/PageView$ItemInfo;)V

    :cond_18
    iget-object v1, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget v3, v0, Landroid/widget/PageView;->j:I

    if-eqz v9, :cond_19

    iget-object v4, v9, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/BasePageAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BasePageAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_1c

    invoke-virtual {v0, v3}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$LayoutParams;

    iput v3, v5, Landroid/widget/PageView$LayoutParams;->d:I

    iget-boolean v6, v5, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v6, :cond_1a

    iget v6, v5, Landroid/widget/PageView$LayoutParams;->a:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    invoke-virtual {v0, v4}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget v6, v4, Landroid/widget/PageView$ItemInfo;->d:F

    iput v6, v5, Landroid/widget/PageView$LayoutParams;->a:F

    iget v4, v4, Landroid/widget/PageView$ItemInfo;->b:I

    iput v4, v5, Landroid/widget/PageView$LayoutParams;->c:I

    goto :goto_12

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/widget/PageView;->h()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v1}, Landroid/widget/PageView;->b(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v3

    goto :goto_13

    :cond_1d
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1e

    iget v1, v3, Landroid/widget/PageView$ItemInfo;->b:I

    iget v3, v0, Landroid/widget/PageView;->j:I

    if-eq v1, v3, :cond_20

    :cond_1e
    const/4 v1, 0x0

    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20

    invoke-virtual {v0, v1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget v4, v4, Landroid/widget/PageView$ItemInfo;->b:I

    iget v5, v0, Landroid/widget/PageView;->j:I

    if-ne v4, v5, :cond_1f

    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method protected a(IFI)V
    .locals 12

    iget v0, p0, Landroid/widget/PageView;->aa:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/PageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/PageView$LayoutParams;

    iget-boolean v10, v9, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_3

    :cond_0
    iget v9, v9, Landroid/widget/PageView$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    sub-int v9, v5, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PageView;->b(IFI)V

    iget-object p1, p0, Landroid/widget/PageView;->af:Landroid/widget/PageView$PageTransformer;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/PageView$LayoutParams;

    iget-boolean v0, v0, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Landroid/widget/PageView;->af:Landroid/widget/PageView$PageTransformer;

    invoke-interface {v3, p3, v0}, Landroid/widget/PageView$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iput-boolean v2, p0, Landroid/widget/PageView;->W:Z

    return-void
.end method

.method a(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/PageView;->a(Z)V

    invoke-virtual {p0}, Landroid/widget/PageView;->c()V

    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/widget/PageView;->setScrollState(I)V

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->a(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget p3, p0, Landroid/widget/PageView;->j:I

    invoke-virtual {p2, p3}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroid/widget/PageView;->p:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v2, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/PageView;->postInvalidateOnAnimation()V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PageView;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Landroid/widget/PageView;->j:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {p1}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/PageView;->A:I

    iget v2, p0, Landroid/widget/PageView;->j:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/widget/PageView;->j:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$ItemInfo;

    iput-boolean p3, v2, Landroid/widget/PageView$ItemInfo;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/widget/PageView;->j:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    iget-boolean v0, p0, Landroid/widget/PageView;->U:Z

    if-eqz v0, :cond_8

    iput p1, p0, Landroid/widget/PageView;->j:I

    if-eqz p3, :cond_7

    invoke-direct {p0, p1}, Landroid/widget/PageView;->d(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/PageView;->requestLayout()V

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/PageView;->a(I)V

    invoke-direct {p0, p1, p2, p4, p3}, Landroid/widget/PageView;->a(IZIZ)V

    return-void

    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Landroid/widget/PageView;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/widget/PageView$ItemInfo;->b:I

    iget v5, p0, Landroid/widget/PageView;->j:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PageView;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/PageView;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/PageView;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addOnPageChangeListener(Landroid/widget/PageView$OnPageChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/widget/PageView$ItemInfo;->b:I

    iget v3, p0, Landroid/widget/PageView;->j:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Landroid/widget/PageView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/PageView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/widget/PageView$LayoutParams;

    iget-boolean v1, v0, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/widget/PageView$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Landroid/widget/PageView;->x:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add page decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/PageView$LayoutParams;->b:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PageView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/PageView;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "PageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_7

    if-ne p1, v5, :cond_6

    iget-object v1, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/widget/PageView;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/widget/PageView;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/PageView;->d()Z

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/widget/PageView;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/PageView;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/widget/PageView;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-gt v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/PageView;->e()Z

    move-result v0

    goto :goto_4

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_9
    invoke-virtual {p0}, Landroid/widget/PageView;->e()Z

    move-result v2

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/widget/PageView;->d()Z

    move-result v2

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->playSoundEffect(I)V

    :cond_c
    return v2
.end method

.method b(I)Landroid/widget/PageView$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PageView$ItemInfo;

    iget v2, v1, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 10

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/PageView;->h:I

    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/widget/PageView;->A:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/widget/PageView;->j:I

    move v5, v1

    move v6, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    iget-object v7, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/PageView$ItemInfo;

    iget-object v8, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v9, v7, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/widget/BasePageAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v2, p0}, Landroid/widget/BasePageAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v2, 0x1

    :cond_2
    iget-object v5, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget v8, v7, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v9, v7, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/widget/BasePageAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v5, p0, Landroid/widget/PageView;->j:I

    iget v7, v7, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v5, v7, :cond_3

    iget v5, p0, Landroid/widget/PageView;->j:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_3
    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    iget v9, v7, Landroid/widget/PageView$ItemInfo;->b:I

    if-eq v9, v8, :cond_6

    iget v5, v7, Landroid/widget/PageView$ItemInfo;->b:I

    iget v9, p0, Landroid/widget/PageView;->j:I

    if-ne v5, v9, :cond_5

    move v6, v8

    :cond_5
    iput v8, v7, Landroid/widget/PageView$ItemInfo;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BasePageAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_8
    iget-object v0, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    sget-object v1, Landroid/widget/PageView;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$LayoutParams;

    iget-boolean v5, v2, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/PageView$LayoutParams;->a:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Landroid/widget/PageView;->a(IZZ)V

    invoke-virtual {p0}, Landroid/widget/PageView;->requestLayout()V

    :cond_b
    return-void
.end method

.method public beginFakeDrag()Z
    .locals 12

    iget-boolean v0, p0, Landroid/widget/PageView;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    invoke-direct {p0, v0}, Landroid/widget/PageView;->setScrollState(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PageView;->G:F

    iput v1, p0, Landroid/widget/PageView;->I:F

    iget-object v1, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v10, p0, Landroid/widget/PageView;->R:J

    return v0
.end method

.method c()V
    .locals 1

    iget v0, p0, Landroid/widget/PageView;->j:I

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->a(I)V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Landroid/widget/PageView;->t:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Landroid/widget/PageView;->u:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/PageView$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/widget/PageView;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/widget/PageView;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/widget/PageView;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PageView;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/PageView;->a(Z)V

    return-void
.end method

.method d()Z
    .locals 2

    iget v0, p0, Landroid/widget/PageView;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/PageView;->j:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/PageView;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/widget/PageView$ItemInfo;->b:I

    iget v5, p0, Landroid/widget/PageView;->j:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/PageView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/PageView;->t:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/widget/PageView;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/PageView;->u:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/widget/PageView;->T:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/PageView;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method e()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/PageView;->j:I

    iget-object v1, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v1}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/widget/PageView;->j:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/PageView;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public endFakeDrag()V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/widget/PageView;->N:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PageView;->z:Z

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/PageView;->j()Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    iget v5, v4, Landroid/widget/PageView$ItemInfo;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Landroid/widget/PageView$ItemInfo;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroid/widget/PageView$ItemInfo;->d:F

    div-float/2addr v3, v2

    iget v2, p0, Landroid/widget/PageView;->G:F

    iget v4, p0, Landroid/widget/PageView;->I:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v5, v3, v0, v2}, Landroid/widget/PageView;->a(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/widget/PageView;->a(IZZI)V

    invoke-direct {p0}, Landroid/widget/PageView;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x42

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PageView;->arrowScroll(I)Z

    move-result p1

    return p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->arrowScroll(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fakeDragBy(F)V
    .locals 10

    iget-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Landroid/widget/PageView;->G:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Landroid/widget/PageView;->t:F

    mul-float v1, v1, p1

    iget v2, p0, Landroid/widget/PageView;->u:F

    mul-float v2, v2, p1

    iget-object v3, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/PageView$ItemInfo;

    iget-object v4, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/PageView$ItemInfo;

    iget v5, v3, Landroid/widget/PageView$ItemInfo;->b:I

    if-eqz v5, :cond_1

    iget v1, v3, Landroid/widget/PageView$ItemInfo;->e:F

    mul-float v1, v1, p1

    :cond_1
    iget v3, v4, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v5, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v5}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    iget v2, v4, Landroid/widget/PageView$ItemInfo;->e:F

    mul-float v2, v2, p1

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_4

    move v0, v2

    :cond_4
    :goto_0
    iget p1, p0, Landroid/widget/PageView;->G:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/PageView;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroid/widget/PageView;->c(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Landroid/widget/PageView;->R:J

    const/4 v6, 0x2

    iget v7, p0, Landroid/widget/PageView;->G:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/PageView$LayoutParams;

    invoke-direct {v0}, Landroid/widget/PageView$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/PageView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/PageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PageView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PageView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/widget/BasePageAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/widget/PageView;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Landroid/widget/PageView;->ai:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/PageView$LayoutParams;

    iget p1, p1, Landroid/widget/PageView$LayoutParams;->d:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroid/widget/PageView;->j:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroid/widget/PageView;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroid/widget/PageView;->p:I

    return v0
.end method

.method public isFakeDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PageView;->U:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView;->ak:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Landroid/widget/PageView;->p:I

    if-lez v1, :cond_4

    iget-object v1, v0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/widget/PageView;->p:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$ItemInfo;

    iget v7, v5, Landroid/widget/PageView$ItemInfo;->e:F

    iget-object v8, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v10, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/PageView$ItemInfo;

    iget v10, v10, Landroid/widget/PageView$ItemInfo;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    :goto_1
    iget v11, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$ItemInfo;

    goto :goto_1

    :cond_0
    iget v11, v5, Landroid/widget/PageView$ItemInfo;->b:I

    if-ne v9, v11, :cond_1

    iget v7, v5, Landroid/widget/PageView$ItemInfo;->e:F

    iget v11, v5, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v7, v11

    mul-float v7, v7, v4

    iget v11, v5, Landroid/widget/PageView$ItemInfo;->e:F

    iget v12, v5, Landroid/widget/PageView$ItemInfo;->d:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    move v12, v7

    move v7, v11

    goto :goto_2

    :cond_1
    iget-object v11, v0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v11, v9}, Landroid/widget/BasePageAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Landroid/widget/PageView;->p:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, v0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    float-to-int v13, v12

    iget v14, v0, Landroid/widget/PageView;->r:I

    iget v15, v0, Landroid/widget/PageView;->p:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move/from16 v17, v3

    iget v3, v0, Landroid/widget/PageView;->s:I

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v17, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroid/widget/PageView;->al:Z

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, v6, Landroid/widget/PageView;->B:Z

    if-eqz v1, :cond_2

    return v9

    :cond_2
    iget-boolean v1, v6, Landroid/widget/PageView;->C:Z

    if-eqz v1, :cond_3

    return v8

    :cond_3
    const/4 v1, 0x2

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct/range {p0 .. p1}, Landroid/widget/PageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    iget v0, v6, Landroid/widget/PageView;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Landroid/widget/PageView;->G:F

    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    iget v0, v6, Landroid/widget/PageView;->J:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_7

    iget v0, v6, Landroid/widget/PageView;->G:F

    invoke-direct {v6, v0, v11}, Landroid/widget/PageView;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object v0, v6

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PageView;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v10, v6, Landroid/widget/PageView;->G:F

    iput v13, v6, Landroid/widget/PageView;->H:F

    iput-boolean v9, v6, Landroid/widget/PageView;->C:Z

    return v8

    :cond_7
    iget v0, v6, Landroid/widget/PageView;->F:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v12, v12, v0

    cmpl-float v0, v12, v14

    if-lez v0, :cond_9

    iput-boolean v9, v6, Landroid/widget/PageView;->B:Z

    invoke-direct {v6, v9}, Landroid/widget/PageView;->c(Z)V

    invoke-direct {v6, v9}, Landroid/widget/PageView;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_8

    iget v0, v6, Landroid/widget/PageView;->I:F

    iget v1, v6, Landroid/widget/PageView;->F:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v0, v6, Landroid/widget/PageView;->I:F

    iget v1, v6, Landroid/widget/PageView;->F:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroid/widget/PageView;->G:F

    iput v13, v6, Landroid/widget/PageView;->H:F

    invoke-direct {v6, v9}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_9
    iget v0, v6, Landroid/widget/PageView;->F:I

    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_a

    iput-boolean v9, v6, Landroid/widget/PageView;->C:Z

    :cond_a
    :goto_1
    iget-boolean v0, v6, Landroid/widget/PageView;->B:Z

    if-eqz v0, :cond_d

    invoke-direct {v6, v10}, Landroid/widget/PageView;->b(F)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->postInvalidateOnAnimation()V

    goto :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/widget/PageView;->I:F

    iput v0, v6, Landroid/widget/PageView;->G:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/widget/PageView;->J:F

    iput v0, v6, Landroid/widget/PageView;->H:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/widget/PageView;->K:I

    iput-boolean v8, v6, Landroid/widget/PageView;->C:Z

    iget-object v0, v6, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Landroid/widget/PageView;->aj:I

    if-ne v0, v1, :cond_c

    iget-object v0, v6, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/widget/PageView;->P:I

    if-le v0, v1, :cond_c

    iget-object v0, v6, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Landroid/widget/PageView;->z:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->c()V

    iput-boolean v9, v6, Landroid/widget/PageView;->B:Z

    invoke-direct {v6, v9}, Landroid/widget/PageView;->c(Z)V

    invoke-direct {v6, v9}, Landroid/widget/PageView;->setScrollState(I)V

    goto :goto_2

    :cond_c
    invoke-direct {v6, v8}, Landroid/widget/PageView;->a(Z)V

    iput-boolean v8, v6, Landroid/widget/PageView;->B:Z

    :cond_d
    :goto_2
    iget-object v0, v6, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    :cond_e
    iget-object v0, v6, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Landroid/widget/PageView;->B:Z

    return v0

    :cond_f
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/PageView;->i()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    const/4 v13, 0x1

    if-ge v4, v1, :cond_7

    invoke-virtual {v0, v4}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/PageView$LayoutParams;

    iget-boolean v15, v12, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_6

    iget v15, v12, Landroid/widget/PageView$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    iget v12, v12, Landroid/widget/PageView$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    if-eq v15, v13, :cond_2

    const/4 v13, 0x3

    if-eq v15, v13, :cond_1

    const/4 v13, 0x5

    if-eq v15, v13, :cond_0

    move v13, v5

    goto :goto_1

    :cond_0
    sub-int v13, v2, v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v5

    move/from16 v17, v13

    move v13, v5

    move/from16 v5, v17

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v2, v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v13, v8

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    invoke-virtual {v14, v13, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    invoke-virtual {v0, v4}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/PageView$LayoutParams;

    iget-boolean v9, v8, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v6}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v14, v2

    iget v9, v9, Landroid/widget/PageView$ItemInfo;->e:F

    mul-float v9, v9, v14

    float-to-int v9, v9

    add-int/2addr v9, v5

    iget-boolean v15, v8, Landroid/widget/PageView$LayoutParams;->b:Z

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    iput-boolean v15, v8, Landroid/widget/PageView$LayoutParams;->b:Z

    iget v8, v8, Landroid/widget/PageView$LayoutParams;->a:F

    mul-float v14, v14, v8

    float-to-int v8, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v15, v3, v7

    sub-int/2addr v15, v10

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v6, v8, v14}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v6, v9, v7, v8, v14}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iput v7, v0, Landroid/widget/PageView;->r:I

    sub-int/2addr v3, v10

    iput v3, v0, Landroid/widget/PageView;->s:I

    iput v11, v0, Landroid/widget/PageView;->aa:I

    iget-boolean v1, v0, Landroid/widget/PageView;->U:Z

    if-eqz v1, :cond_b

    iget v1, v0, Landroid/widget/PageView;->j:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v13}, Landroid/widget/PageView;->a(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Landroid/widget/PageView;->U:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/widget/PageView;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v1, v3}, Landroid/widget/PageView;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/PageView;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v3, v2, 0xa

    iget v4, v0, Landroid/widget/PageView;->D:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/widget/PageView;->E:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v4

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    invoke-virtual {v0, v2}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/PageView$LayoutParams;

    if-eqz v6, :cond_b

    iget-boolean v10, v6, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    iget v10, v6, Landroid/widget/PageView$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    iget v11, v6, Landroid/widget/PageView$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_5

    const/high16 v10, 0x40000000    # 2.0f

    :cond_4
    const/high16 v12, -0x80000000

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_4

    const/high16 v12, 0x40000000    # 2.0f

    :goto_4
    iget v13, v6, Landroid/widget/PageView$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    iget v10, v6, Landroid/widget/PageView$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    iget v10, v6, Landroid/widget/PageView$LayoutParams;->width:I

    move v13, v10

    goto :goto_5

    :cond_6
    move v13, v3

    :goto_5
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_6

    :cond_7
    move v13, v3

    :goto_6
    iget v1, v6, Landroid/widget/PageView$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    iget v1, v6, Landroid/widget/PageView$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    iget v1, v6, Landroid/widget/PageView$LayoutParams;->height:I

    goto :goto_7

    :cond_8
    move v1, v5

    goto :goto_7

    :cond_9
    move v1, v5

    move v8, v12

    :goto_7
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_8

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/widget/PageView;->v:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/widget/PageView;->w:I

    iput-boolean v7, v0, Landroid/widget/PageView;->x:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->c()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/PageView;->x:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/PageView$LayoutParams;

    if-eqz v5, :cond_d

    iget-boolean v7, v5, Landroid/widget/PageView$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v3

    iget v5, v5, Landroid/widget/PageView$LayoutParams;->a:F

    mul-float v7, v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v7, v0, Landroid/widget/PageView;->w:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/PageView;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/PageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/PageView;->a(Landroid/view/View;)Landroid/widget/PageView$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/widget/PageView$ItemInfo;->b:I

    iget v7, p0, Landroid/widget/PageView;->j:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/PageView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/widget/PageView$SavedState;

    invoke-virtual {p1}, Landroid/widget/PageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v1, p1, Landroid/widget/PageView$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/widget/PageView$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BasePageAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Landroid/widget/PageView$SavedState;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/PageView;->a(IZZ)V

    return-void

    :cond_1
    iget v0, p1, Landroid/widget/PageView$SavedState;->a:I

    iput v0, p0, Landroid/widget/PageView;->k:I

    iget-object v0, p1, Landroid/widget/PageView$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/widget/PageView;->l:Landroid/os/Parcelable;

    iget-object p1, p1, Landroid/widget/PageView$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/widget/PageView;->m:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/PageView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/PageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/widget/PageView;->j:I

    iput v0, v1, Landroid/widget/PageView$SavedState;->a:I

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/PageView$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Landroid/widget/PageView;->p:I

    iget p4, p0, Landroid/widget/PageView;->p:I

    invoke-direct {p0, p1, p3, p2, p4}, Landroid/widget/PageView;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Landroid/widget/PageView;->Q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/PageView;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroid/widget/PageView;->G:F

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_2

    :pswitch_3
    iget-boolean p1, p0, Landroid/widget/PageView;->B:Z

    if-eqz p1, :cond_7

    iget p1, p0, Landroid/widget/PageView;->j:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroid/widget/PageView;->a(IZIZ)V

    goto/16 :goto_1

    :pswitch_4
    iget-boolean v0, p0, Landroid/widget/PageView;->B:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/widget/PageView;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Landroid/widget/PageView;->H:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/PageView;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iput-boolean v1, p0, Landroid/widget/PageView;->B:Z

    invoke-direct {p0, v1}, Landroid/widget/PageView;->c(Z)V

    iget v4, p0, Landroid/widget/PageView;->I:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Landroid/widget/PageView;->I:F

    iget v4, p0, Landroid/widget/PageView;->F:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_5
    iget v3, p0, Landroid/widget/PageView;->I:F

    iget v4, p0, Landroid/widget/PageView;->F:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_0
    iput v3, p0, Landroid/widget/PageView;->G:F

    iput v0, p0, Landroid/widget/PageView;->H:F

    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroid/widget/PageView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/PageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iget-boolean v0, p0, Landroid/widget/PageView;->B:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/PageView;->b(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_3

    :pswitch_5
    iget-boolean v0, p0, Landroid/widget/PageView;->B:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/PageView;->L:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroid/widget/PageView;->N:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroid/widget/PageView;->z:Z

    invoke-direct {p0}, Landroid/widget/PageView;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PageView;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/PageView;->j()Landroid/widget/PageView$ItemInfo;

    move-result-object v4

    iget v5, v4, Landroid/widget/PageView$ItemInfo;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Landroid/widget/PageView$ItemInfo;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroid/widget/PageView$ItemInfo;->d:F

    div-float/2addr v3, v2

    iget v2, p0, Landroid/widget/PageView;->K:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Landroid/widget/PageView;->I:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v5, v3, v0, p1}, Landroid/widget/PageView;->a(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/widget/PageView;->a(IZZI)V

    :goto_1
    invoke-direct {p0}, Landroid/widget/PageView;->i()Z

    move-result v2

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Landroid/widget/PageView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/widget/PageView;->z:Z

    invoke-virtual {p0}, Landroid/widget/PageView;->c()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/PageView;->I:F

    iput v0, p0, Landroid/widget/PageView;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/PageView;->J:F

    iput v0, p0, Landroid/widget/PageView;->H:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_2
    iput p1, p0, Landroid/widget/PageView;->K:I

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/PageView;->postInvalidateOnAnimation()V

    :cond_8
    return v1

    :cond_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnPageChangeListener(Landroid/widget/PageView$OnPageChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PageView;->ab:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PageView;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->removeViewInLayout(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BasePageAdapter;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v2, p0, Landroid/widget/PageView;->o:Landroid/widget/PageView$PageObserver;

    invoke-virtual {v0, v2}, Landroid/widget/BasePageAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BasePageAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PageView$ItemInfo;

    iget-object v3, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget v4, v2, Landroid/widget/PageView$ItemInfo;->b:I

    iget-object v2, v2, Landroid/widget/PageView$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroid/widget/BasePageAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BasePageAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/widget/PageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/widget/PageView;->g()V

    iput v1, p0, Landroid/widget/PageView;->j:I

    invoke-virtual {p0, v1, v1}, Landroid/widget/PageView;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iput-object p1, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iput v1, p0, Landroid/widget/PageView;->h:I

    iget-object v2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/PageView;->o:Landroid/widget/PageView$PageObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Landroid/widget/PageView$PageObserver;

    invoke-direct {v2, p0, v3}, Landroid/widget/PageView$PageObserver;-><init>(Landroid/widget/PageView;Landroid/widget/PageView$1;)V

    iput-object v2, p0, Landroid/widget/PageView;->o:Landroid/widget/PageView$PageObserver;

    :cond_2
    iget-object v2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v4, p0, Landroid/widget/PageView;->o:Landroid/widget/PageView$PageObserver;

    invoke-virtual {v2, v4}, Landroid/widget/BasePageAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Landroid/widget/PageView;->z:Z

    iget-boolean v2, p0, Landroid/widget/PageView;->U:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/PageView;->U:Z

    iget-object v5, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    invoke-virtual {v5}, Landroid/widget/BasePageAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroid/widget/PageView;->h:I

    iget v5, p0, Landroid/widget/PageView;->k:I

    if-ltz v5, :cond_3

    iget-object v2, p0, Landroid/widget/PageView;->i:Landroid/widget/BasePageAdapter;

    iget-object v5, p0, Landroid/widget/PageView;->l:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/widget/PageView;->m:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Landroid/widget/BasePageAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v2, p0, Landroid/widget/PageView;->k:I

    invoke-virtual {p0, v2, v1, v4}, Landroid/widget/PageView;->a(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/PageView;->k:I

    iput-object v3, p0, Landroid/widget/PageView;->l:Landroid/os/Parcelable;

    iput-object v3, p0, Landroid/widget/PageView;->m:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/PageView;->c()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/PageView;->requestLayout()V

    :cond_5
    :goto_1
    iget-object v1, p0, Landroid/widget/PageView;->ae:Landroid/widget/PageView$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    iget-object v1, p0, Landroid/widget/PageView;->ae:Landroid/widget/PageView$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Landroid/widget/PageView$OnAdapterChangeListener;->onAdapterChanged(Landroid/widget/BasePageAdapter;Landroid/widget/BasePageAdapter;)V

    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/PageView;->ag:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v3, "setChildrenDrawingOrderEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PageView;->ag:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PageView"

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/widget/PageView;->ag:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "PageView"

    const-string v1, "Error changing children drawing order"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PageView;->z:Z

    iget-boolean v1, p0, Landroid/widget/PageView;->U:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PageView;->a(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PageView;->z:Z

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PageView;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v1, "PageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/widget/PageView;->A:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/widget/PageView;->A:I

    invoke-virtual {p0}, Landroid/widget/PageView;->c()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/widget/PageView$OnAdapterChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView;->ae:Landroid/widget/PageView$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/widget/PageView$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView;->ac:Landroid/widget/PageView$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroid/widget/PageView;->p:I

    iput p1, p0, Landroid/widget/PageView;->p:I

    invoke-virtual {p0}, Landroid/widget/PageView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/widget/PageView;->a(IIII)V

    invoke-virtual {p0}, Landroid/widget/PageView;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PageView;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PageView;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PageView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/PageView;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroid/widget/PageView$PageTransformer;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/PageView;->af:Landroid/widget/PageView$PageTransformer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-object p2, p0, Landroid/widget/PageView;->af:Landroid/widget/PageView$PageTransformer;

    invoke-virtual {p0, v2}, Landroid/widget/PageView;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    iput v1, p0, Landroid/widget/PageView;->ah:I

    goto :goto_3

    :cond_4
    iput v0, p0, Landroid/widget/PageView;->ah:I

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/PageView;->c()V

    :cond_5
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PageView;->al:Z

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PageView;->al:Z

    return-void
.end method

.method public showPage(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/PageView;->setCurrentItem(IZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PageView;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
