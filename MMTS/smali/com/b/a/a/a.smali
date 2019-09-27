.class public Lcom/b/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/b/a/b/h;


# instance fields
.field private a:Lcom/b/a/a/c;

.field private b:Landroid/content/Context;

.field private d:Landroid/widget/ListPopupWindow;

.field private e:Lcom/b/a/a/a$a;

.field private f:Landroid/widget/Filter;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/CharSequence;

.field private k:I

.field private l:Landroid/graphics/drawable/GradientDrawable;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/b/a/b/j;->g()Lcom/b/a/b/h;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a;->c:Lcom/b/a/b/h;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/b/a/a/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a;)Lcom/b/a/a/c;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/c;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/a/a;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a;->j:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/a/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/b/a/a/a;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/a;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/b/a/a/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/b/a/a/a;)Lcom/b/a/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/a$a;

    return-object p0
.end method

.method static synthetic c()Lcom/b/a/b/h;
    .locals 1

    sget-object v0, Lcom/b/a/a/a;->c:Lcom/b/a/b/h;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/a/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a;->f(I)V

    return-void
.end method

.method static synthetic d(Lcom/b/a/a/a;)I
    .locals 0

    iget p0, p0, Lcom/b/a/a/a;->m:I

    return p0
.end method

.method private d()V
    .locals 4

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Lcom/b/a/a/a$a;

    iget-object v1, p0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a/a/a$a;-><init>(Lcom/b/a/a/a;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/a$a;

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/a$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/a$a;

    invoke-virtual {v0}, Lcom/b/a/a/a$a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a;->f:Landroid/widget/Filter;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/b/a/a/a;->d(I)V

    iget-object v0, p0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0xff00ff

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/a;->a(I)V

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/b/a/a/a$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/a$1;-><init>(Lcom/b/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private d(I)V
    .locals 1

    iget v0, p0, Lcom/b/a/a/a;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/b/a/a/a;->h:I

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/b/a/a/a;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/b/a/a/a;->i:I

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    if-le p1, v0, :cond_0

    iget-object v2, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/c;

    sub-int/2addr p1, v0

    invoke-virtual {v2, v1, p1}, Lcom/b/a/a/c;->scrollBy(II)V

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/b/a/a/a;->g:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/b/a/a/a;->g:I

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/b/a/a/a;->m:I

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p1, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/b/a/b/h;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/b/a/a/a;->c:Lcom/b/a/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/a$a;

    invoke-virtual {v0}, Lcom/b/a/a/a$a;->b()V

    iget-object v0, p0, Lcom/b/a/a/a;->f:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/b/a/a/a;->k:I

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/b/a/a/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method
