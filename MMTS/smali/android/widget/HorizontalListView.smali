.class public Landroid/widget/HorizontalListView;
.super Landroid/widget/AdapterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalListView$IceCreamSandwichPlus;,
        Landroid/widget/HorizontalListView$HoneycombPlus;,
        Landroid/widget/HorizontalListView$OnScrollStateChangedListener;,
        Landroid/widget/HorizontalListView$RunningOutOfDataListener;,
        Landroid/widget/HorizontalListView$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/graphics/Rect;

.field private F:I

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:I

.field private I:Landroid/database/DataSetObserver;

.field private J:Ljava/lang/Runnable;

.field protected a:Landroid/widget/Scroller;

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field private final e:Landroid/util/DisplayMetrics;

.field private final f:Landroid/widget/HorizontalListView$GestureListener;

.field private g:Landroid/view/GestureDetector;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/view/View;

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Ljava/lang/Integer;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/widget/HorizontalListView$RunningOutOfDataListener;

.field private u:I

.field private v:Z

.field private w:Landroid/widget/HorizontalListView$OnScrollStateChangedListener;

.field private x:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field private y:Landroid/widget/EdgeEffect;

.field private z:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    new-instance p2, Landroid/widget/HorizontalListView$GestureListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Landroid/widget/HorizontalListView$GestureListener;-><init>(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$1;)V

    iput-object p2, p0, Landroid/widget/HorizontalListView;->f:Landroid/widget/HorizontalListView$GestureListener;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/HorizontalListView;->j:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    iput p2, p0, Landroid/widget/HorizontalListView;->m:I

    iput-object v0, p0, Landroid/widget/HorizontalListView;->n:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/HorizontalListView;->o:Ljava/lang/Integer;

    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/HorizontalListView;->p:I

    iput-object v0, p0, Landroid/widget/HorizontalListView;->t:Landroid/widget/HorizontalListView$RunningOutOfDataListener;

    iput p2, p0, Landroid/widget/HorizontalListView;->u:I

    iput-boolean p2, p0, Landroid/widget/HorizontalListView;->v:Z

    iput-object v0, p0, Landroid/widget/HorizontalListView;->w:Landroid/widget/HorizontalListView$OnScrollStateChangedListener;

    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v0, p0, Landroid/widget/HorizontalListView;->x:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-boolean p2, p0, Landroid/widget/HorizontalListView;->B:Z

    iput-boolean p2, p0, Landroid/widget/HorizontalListView;->C:Z

    const v0, -0x77777778

    iput v0, p0, Landroid/widget/HorizontalListView;->F:I

    new-instance v0, Landroid/widget/HorizontalListView$2;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$2;-><init>(Landroid/widget/HorizontalListView;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->I:Landroid/database/DataSetObserver;

    new-instance v0, Landroid/widget/HorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$3;-><init>(Landroid/widget/HorizontalListView;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->J:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalListView;->e:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/widget/HorizontalListView;->f:Landroid/widget/HorizontalListView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->g:Landroid/view/GestureDetector;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->a()V

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalListView;->setWillNotDraw(Z)V

    iget-object p1, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    const p2, 0x3c1374bc    # 0.009f

    invoke-static {p1, p2}, Landroid/widget/HorizontalListView$HoneycombPlus;->setFriction(Landroid/widget/Scroller;F)V

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->e:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalListView;->c(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->E:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Landroid/widget/HorizontalListView;->g:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->q:I

    iput v0, p0, Landroid/widget/HorizontalListView;->r:I

    iput v0, p0, Landroid/widget/HorizontalListView;->s:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->h:I

    iput v0, p0, Landroid/widget/HorizontalListView;->c:I

    iput v0, p0, Landroid/widget/HorizontalListView;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/HorizontalListView;->p:I

    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    iget v1, p0, Landroid/widget/HorizontalListView;->m:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->r:I

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    iput v0, p0, Landroid/widget/HorizontalListView;->q:I

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/widget/HorizontalListView;->r:I

    iget v2, p0, Landroid/widget/HorizontalListView;->r:I

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->a(Landroid/view/View;I)V

    iget v1, p0, Landroid/widget/HorizontalListView;->r:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/HorizontalListView;->m:I

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr p1, v1

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->g()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHeight()I

    move-result v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/widget/HorizontalListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/HorizontalListView;->A:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->i(I)V

    return-void
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->C:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->C:Z

    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/widget/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->j:Z

    return p1
.end method

.method private b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->a()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    return-void
.end method

.method private b(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    iget v1, p0, Landroid/widget/HorizontalListView;->m:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/HorizontalListView;->q:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/widget/HorizontalListView;->q:I

    iget v2, p0, Landroid/widget/HorizontalListView;->q:I

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->a(Landroid/view/View;I)V

    iget v1, p0, Landroid/widget/HorizontalListView;->q:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_0
    iget v1, p0, Landroid/widget/HorizontalListView;->m:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/HorizontalListView;->h:I

    add-int v2, p1, p2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_2

    :cond_1
    iget v2, p0, Landroid/widget/HorizontalListView;->m:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    sub-int/2addr v1, v0

    iput v1, p0, Landroid/widget/HorizontalListView;->h:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroid/widget/HorizontalListView;->r:I

    invoke-direct {p0, v3}, Landroid/widget/HorizontalListView;->h(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->m:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic b(Landroid/widget/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->e()V

    return-void
.end method

.method static synthetic b(Landroid/widget/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->v:Z

    return p1
.end method

.method private c()F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/widget/HorizontalListView$IceCreamSandwichPlus;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    return v0
.end method

.method private c(II)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalListView;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic c(Landroid/widget/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->b()V

    return-void
.end method

.method private c(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/widget/HorizontalListView;->a(II)V

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1, p1}, Landroid/widget/HorizontalListView;->b(II)V

    return-void
.end method

.method private d()Z
    .locals 5

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->h(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/widget/HorizontalListView;->p:I

    iget v3, p0, Landroid/widget/HorizontalListView;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v3, v0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderWidth()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Landroid/widget/HorizontalListView;->p:I

    iget v0, p0, Landroid/widget/HorizontalListView;->p:I

    if-gez v0, :cond_0

    iput v1, p0, Landroid/widget/HorizontalListView;->p:I

    :cond_0
    iget v0, p0, Landroid/widget/HorizontalListView;->p:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic d(Landroid/widget/HorizontalListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/HorizontalListView;->B:Z

    return p0
.end method

.method static synthetic e(Landroid/widget/HorizontalListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/HorizontalListView;->q:I

    return p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->refreshDrawableState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    :goto_0
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalListView;->h:I

    iget v2, p0, Landroid/widget/HorizontalListView;->q:I

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    :cond_0
    iget v2, p0, Landroid/widget/HorizontalListView;->m:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/HorizontalListView;->h:I

    iget v1, p0, Landroid/widget/HorizontalListView;->q:I

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalListView;->a(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->q:I

    goto :goto_0

    :cond_1
    :goto_2
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Landroid/widget/HorizontalListView;->r:I

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalListView;->a(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->r:I

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic f(Landroid/widget/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/HorizontalListView;->D:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    return-void
.end method

.method private f(I)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->H:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/HorizontalListView;->H:I

    if-lez v0, :cond_1

    iget v3, p0, Landroid/widget/HorizontalListView;->h:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/HorizontalListView;->h:I

    iget p1, p0, Landroid/widget/HorizontalListView;->h:I

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    iget v8, p0, Landroid/widget/HorizontalListView;->H:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/HorizontalListView;->H:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalListView;->m:I

    add-int/2addr v3, v4

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/widget/HorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$4;-><init>(Landroid/widget/HorizontalListView;)V

    const-wide/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private g(I)Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Landroid/widget/HorizontalListView;->t:Landroid/widget/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->r:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HorizontalListView;->u:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->v:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/HorizontalListView;->v:Z

    iget-object v0, p0, Landroid/widget/HorizontalListView;->t:Landroid/widget/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {v0}, Landroid/widget/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    :cond_0
    return-void
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRenderHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/widget/HorizontalListView;->p:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private h(I)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/HorizontalListView;->c:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-gez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    int-to-float p1, p1

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/HorizontalListView;->p:I

    if-le v0, v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    int-to-float p1, p1

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getRenderWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_3
    return-void
.end method

.method private setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->x:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->w:Landroid/widget/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->w:Landroid/widget/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Landroid/widget/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/HorizontalListView;->x:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->B:Z

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->e()V

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Landroid/widget/HorizontalListView;->c(II)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    iget-object p1, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/HorizontalListView;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->refreshDrawableState()V

    :cond_0
    return v1
.end method

.method protected a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/HorizontalListView;->d:I

    neg-float p1, p3

    float-to-int v3, p1

    iget v6, p0, Landroid/widget/HorizontalListView;->p:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    sget-object p1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/HorizontalListView;->E:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0x77777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Landroid/widget/HorizontalListView;->s:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    iget v1, p0, Landroid/widget/HorizontalListView;->s:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    iget v1, p0, Landroid/widget/HorizontalListView;->s:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Landroid/widget/HorizontalListView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/HorizontalListView;->s:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    iget v1, p0, Landroid/widget/HorizontalListView;->s:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    iget v1, p0, Landroid/widget/HorizontalListView;->s:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Landroid/widget/HorizontalListView;->F:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->g:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    iput-object v3, p0, Landroid/widget/HorizontalListView;->E:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Landroid/widget/HorizontalListView;->c(II)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->E:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Landroid/widget/HorizontalListView;->q:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    iget v0, p0, Landroid/widget/HorizontalListView;->r:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->c:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Landroid/widget/HorizontalListView;->c:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Landroid/widget/HorizontalListView;->c:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->c:I

    iget v2, p0, Landroid/widget/HorizontalListView;->p:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Landroid/widget/HorizontalListView;->p:I

    iget v2, p0, Landroid/widget/HorizontalListView;->c:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    iget v1, p0, Landroid/widget/HorizontalListView;->p:I

    iget v2, p0, Landroid/widget/HorizontalListView;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/HorizontalListView;->s:I

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->g(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/HorizontalListView;->c:I

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->a()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViewsInLayout()V

    iput v0, p0, Landroid/widget/HorizontalListView;->d:I

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->j:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalListView;->o:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->d:I

    :cond_3
    iget v0, p0, Landroid/widget/HorizontalListView;->d:I

    const/4 v2, 0x1

    if-gez v0, :cond_5

    iput v1, p0, Landroid/widget/HorizontalListView;->d:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HorizontalListView;->y:Landroid/widget/EdgeEffect;

    :goto_0
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->c()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_4
    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/widget/HorizontalListView;->d:I

    iget v1, p0, Landroid/widget/HorizontalListView;->p:I

    if-le v0, v1, :cond_6

    iget v0, p0, Landroid/widget/HorizontalListView;->p:I

    iput v0, p0, Landroid/widget/HorizontalListView;->d:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HorizontalListView;->z:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_6
    :goto_1
    iget v0, p0, Landroid/widget/HorizontalListView;->c:I

    iget v1, p0, Landroid/widget/HorizontalListView;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->e(I)V

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->d(I)V

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->f(I)V

    iget v0, p0, Landroid/widget/HorizontalListView;->d:I

    iput v0, p0, Landroid/widget/HorizontalListView;->c:I

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p5}, Landroid/widget/HorizontalListView;->onLayout(ZIIII)V

    return-void

    :cond_7
    iget-object p1, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/widget/HorizontalListView;->x:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object p2, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne p1, p2, :cond_9

    sget-object p1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void

    :cond_8
    iget-object p1, p0, Landroid/widget/HorizontalListView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/HorizontalListView;->H:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->setMeasuredDimension(II)V

    :cond_0
    iput p2, p0, Landroid/widget/HorizontalListView;->A:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalListView;->o:Ljava/lang/Integer;

    const-string v0, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Landroid/widget/HorizontalListView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->e()V

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->f()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->a(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->f()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollTo(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/HorizontalListView;->a:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/HorizontalListView;->d:I

    iget v2, p0, Landroid/widget/HorizontalListView;->d:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    sget-object p1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->setCurrentScrollState(Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/HorizontalListView;->I:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->v:Z

    iput-object p1, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object p1, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/widget/HorizontalListView;->I:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object p1, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->a(I)V

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->b()V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setDividerWidth(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HorizontalListView;->m:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->D:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnScrollStateChangedListener(Landroid/widget/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->w:Landroid/widget/HorizontalListView$OnScrollStateChangedListener;

    return-void
.end method

.method public setRunningOutOfDataListener(Landroid/widget/HorizontalListView$RunningOutOfDataListener;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->t:Landroid/widget/HorizontalListView$RunningOutOfDataListener;

    iput p2, p0, Landroid/widget/HorizontalListView;->u:I

    return-void
.end method

.method public setSelectedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/widget/HorizontalListView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HorizontalListView;->F:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 5

    iput p1, p0, Landroid/widget/HorizontalListView;->s:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    iget-object v0, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gez v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/widget/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->a(Landroid/view/View;)V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/widget/HorizontalListView;->m:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->scrollTo(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method
