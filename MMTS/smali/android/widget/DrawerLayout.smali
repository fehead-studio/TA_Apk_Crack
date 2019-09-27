.class public Landroid/widget/DrawerLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DrawerLayout$DrawerLayoutCompatApi21;,
        Landroid/widget/DrawerLayout$LayoutParams;,
        Landroid/widget/DrawerLayout$ViewDragCallback;,
        Landroid/widget/DrawerLayout$SavedState;,
        Landroid/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/widget/DrawerLayout$DrawerListener;,
        Landroid/widget/DrawerLayout$EdgeGravity;,
        Landroid/widget/DrawerLayout$LockMode;,
        Landroid/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field static final a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final b:[I

.field private static final c:Z

.field private static final d:Z


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/Object;

.field private E:Z

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/view/View$AccessibilityDelegate;

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private final k:Landroid/widget/ViewDragHelper;

.field private final l:Landroid/widget/ViewDragHelper;

.field private final m:Landroid/widget/DrawerLayout$ViewDragCallback;

.field private final n:Landroid/widget/DrawerLayout$ViewDragCallback;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Landroid/widget/DrawerLayout$DrawerListener;

.field private w:F

.field private x:F

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/widget/DrawerLayout;->b:[I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/widget/DrawerLayout;->c:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Landroid/widget/DrawerLayout;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    new-instance v0, Landroid/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    :goto_2
    sput-object v0, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    return-void

    :cond_2
    new-instance v0, Landroid/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    goto :goto_2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p2}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p2, p0, Landroid/widget/DrawerLayout;->e:Landroid/view/View$AccessibilityDelegate;

    const/high16 p2, -0x67000000

    iput p2, p0, Landroid/widget/DrawerLayout;->h:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/DrawerLayout;->q:Z

    const/4 p3, 0x0

    iput-object p3, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x40000

    invoke-virtual {p0, p3}, Landroid/widget/DrawerLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42800000    # 64.0f

    mul-float v0, v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/DrawerLayout;->g:I

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float v0, v0, p3

    new-instance v1, Landroid/widget/DrawerLayout$ViewDragCallback;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/widget/DrawerLayout;->m:Landroid/widget/DrawerLayout$ViewDragCallback;

    new-instance v1, Landroid/widget/DrawerLayout$ViewDragCallback;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/widget/DrawerLayout;->n:Landroid/widget/DrawerLayout$ViewDragCallback;

    iget-object v1, p0, Landroid/widget/DrawerLayout;->m:Landroid/widget/DrawerLayout$ViewDragCallback;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v1}, Landroid/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/widget/ViewDragHelper$Callback;)Landroid/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    iget-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1, p2}, Landroid/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v1, p0, Landroid/widget/DrawerLayout;->m:Landroid/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1, v3}, Landroid/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/widget/ViewDragHelper;)V

    iget-object v1, p0, Landroid/widget/DrawerLayout;->n:Landroid/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v2, v1}, Landroid/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/widget/ViewDragHelper$Callback;)Landroid/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    iget-object v1, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v1, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v0, p0, Landroid/widget/DrawerLayout;->n:Landroid/widget/DrawerLayout$ViewDragCallback;

    iget-object v1, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0, v1}, Landroid/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/widget/ViewDragHelper;)V

    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->setImportantForAccessibility(I)V

    new-instance p2, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p2}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getFitsSystemWindows()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {p2, p0}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    sget-object p2, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {p2, p1}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float p3, p3, p1

    iput p3, p0, Landroid/widget/DrawerLayout;->f:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/widget/DrawerLayout;->J:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->setLayoutDirection(I)V

    const/4 p1, 0x1

    return p1
.end method

.method static b(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "LEFT"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p0, "RIGHT"

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Landroid/widget/DrawerLayout;->b:[I

    return-object v0
.end method

.method private d()V
    .locals 1

    sget-boolean v0, Landroid/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/DrawerLayout;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private g()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/DrawerLayout$LayoutParams;->b:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static g(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private h()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->i()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a(IILandroid/view/View;)V
    .locals 3

    iget-object p1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    iget-object v0, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget p2, p1, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    invoke-virtual {p0, p3}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    invoke-virtual {p0, p3}, Landroid/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget p1, p0, Landroid/widget/DrawerLayout;->o:I

    if-eq v1, p1, :cond_6

    iput v1, p0, Landroid/widget/DrawerLayout;->o:I

    iget-object p1, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    invoke-interface {p1, v1}, Landroid/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    :cond_6
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method a(Landroid/view/View;F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v4}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroid/widget/DrawerLayout$LayoutParams;->b:Z

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    neg-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Landroid/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    :goto_1
    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_1

    :goto_2
    iput-boolean v1, v5, Landroid/widget/DrawerLayout$LayoutParams;->b:Z

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/widget/DrawerLayout;->m:Landroid/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object p1, p0, Landroid/widget/DrawerLayout;->n:Landroid/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/widget/DrawerLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    iget-object v0, p0, Landroid/widget/DrawerLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroid/widget/DrawerLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroid/widget/DrawerLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_1
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    :cond_2
    :goto_2
    sget-boolean p2, Landroid/widget/DrawerLayout;->c:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Landroid/widget/DrawerLayout;->e:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    return-void
.end method

.method b()V
    .locals 9

    iget-boolean v0, p0, Landroid/widget/DrawerLayout;->u:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DrawerLayout;->u:Z

    :cond_1
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method b(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput p2, v0, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    invoke-virtual {p0, p1, p2}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;F)V

    return-void
.end method

.method c(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/widget/DrawerLayout;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/DrawerLayout;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->a(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/widget/DrawerLayout;->i:F

    iget-object v0, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    iget-object v2, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method d(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v11, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v5, v9, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v12}, Landroid/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v0, v12}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v12, v7}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v10, :cond_2

    move v10, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v11, :cond_2

    move v11, v12

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    :cond_4
    move v11, v5

    const/4 v10, 0x0

    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v3, v0, Landroid/widget/DrawerLayout;->i:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    if-eqz v4, :cond_5

    iget v2, v0, Landroid/widget/DrawerLayout;->h:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget v3, v0, Landroid/widget/DrawerLayout;->i:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    iget v3, v0, Landroid/widget/DrawerLayout;->h:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, v0, Landroid/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v10

    const/4 v3, 0x0

    int-to-float v4, v11

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return v8

    :cond_5
    iget-object v3, v0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2, v7}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v9, v0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/widget/ViewDragHelper;->getEdgeSize()I

    move-result v9

    int-to-float v10, v7

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v3, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v7, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroid/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return v8

    :cond_6
    iget-object v3, v0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v7

    iget-object v10, v0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/widget/ViewDragHelper;->getEdgeSize()I

    move-result v10

    int-to-float v9, v9

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v3, v9, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroid/widget/DrawerLayout;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    return v8
.end method

.method e(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method f(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/DrawerLayout$LayoutParams;-><init>(Landroid/widget/DrawerLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    sget-boolean v0, Landroid/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/DrawerLayout;->f:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/widget/DrawerLayout;->r:I

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/widget/DrawerLayout;->s:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/widget/DrawerLayout;->r:I

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/widget/DrawerLayout;->s:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/widget/DrawerLayout;->B:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/widget/DrawerLayout;->C:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isDrawerOpen(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget-boolean p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DrawerLayout;->q:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DrawerLayout;->q:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/widget/DrawerLayout;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroid/widget/DrawerLayout;->D:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroid/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/DrawerLayout;->m:Landroid/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object p1, p0, Landroid/widget/DrawerLayout;->n:Landroid/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->a(Z)V

    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->t:Z

    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->u:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroid/widget/DrawerLayout;->w:F

    iput p1, p0, Landroid/widget/DrawerLayout;->x:F

    iget v4, p0, Landroid/widget/DrawerLayout;->i:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Landroid/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->t:Z

    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->u:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->g()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroid/widget/DrawerLayout;->u:Z

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->i()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/DrawerLayout;->p:Z

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_b

    invoke-virtual {v0, v6}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Landroid/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v10, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v11, v8, Landroid/widget/DrawerLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v8, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_2

    neg-int v11, v9

    int-to-float v12, v9

    iget v13, v8, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    mul-float v13, v13, v12

    float-to-int v13, v13

    add-int/2addr v11, v13

    add-int v13, v9, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    goto :goto_1

    :cond_2
    int-to-float v11, v9

    iget v12, v8, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    sub-int v12, v3, v12

    sub-int v13, v3, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    move v11, v12

    :goto_1
    iget v12, v8, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    iget v14, v8, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    const/16 v2, 0x10

    if-eq v14, v2, :cond_5

    const/16 v2, 0x50

    if-eq v14, v2, :cond_4

    iget v2, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v14, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v10

    invoke-virtual {v7, v11, v2, v9, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    sub-int v2, p5, p3

    iget v10, v8, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v2, v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v9, v11

    iget v14, v8, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v14

    invoke-virtual {v7, v11, v10, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_5
    sub-int v2, p5, p3

    sub-int v14, v2, v10

    div-int/lit8 v14, v14, 0x2

    iget v5, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v14, v5, :cond_6

    iget v14, v8, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_6
    add-int v5, v14, v10

    iget v1, v8, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v2, v1

    if-le v5, v1, :cond_7

    iget v1, v8, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v1

    sub-int v14, v2, v10

    :cond_7
    :goto_3
    add-int/2addr v9, v11

    add-int/2addr v10, v14

    invoke-virtual {v7, v11, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v12, :cond_8

    invoke-virtual {v0, v7, v13}, Landroid/widget/DrawerLayout;->b(Landroid/view/View;F)V

    :cond_8
    iget v1, v8, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x4

    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_a

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/DrawerLayout;->p:Z

    iput-boolean v1, v0, Landroid/widget/DrawerLayout;->q:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/16 v4, 0x12c

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_0

    if-eq v1, v5, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_e

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/16 v2, 0x12c

    :cond_2
    :goto_0
    if-ne v1, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/16 v3, 0x12c

    :cond_4
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/widget/DrawerLayout;->setMeasuredDimension(II)V

    iget-object v0, p0, Landroid/widget/DrawerLayout;->D:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_8

    iget v10, v9, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v10, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/widget/DrawerLayout;->D:Ljava/lang/Object;

    invoke-interface {v11, v8, v12, v10}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_7
    sget-object v11, Landroid/widget/DrawerLayout;->a:Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/widget/DrawerLayout;->D:Ljava/lang/Object;

    invoke-interface {v11, v9, v12, v10}, Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    :cond_8
    :goto_4
    invoke-virtual {p0, v8}, Landroid/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, v9, Landroid/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v10, v2, v10

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v11, v3, v11

    iget v9, v9, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v9

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_5
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v8}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-boolean v10, Landroid/widget/DrawerLayout;->d:Z

    if-eqz v10, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getElevation()F

    move-result v10

    iget v11, p0, Landroid/widget/DrawerLayout;->f:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_a

    iget v10, p0, Landroid/widget/DrawerLayout;->f:F

    invoke-virtual {v8, v10}, Landroid/view/View;->setElevation(F)V

    :cond_a
    invoke-virtual {p0, v8}, Landroid/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    and-int v11, v1, v10

    if-eqz v11, :cond_b

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child drawer has absolute gravity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/widget/DrawerLayout;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but this "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DrawerLayout"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already has a drawer view along that edge"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget v10, p0, Landroid/widget/DrawerLayout;->g:I

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Landroid/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    iget v11, v9, Landroid/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v9, Landroid/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v9, v9, Landroid/widget/DrawerLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v9}, Landroid/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_5

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/widget/DrawerLayout$SavedState;

    invoke-virtual {p1}, Landroid/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_0
    iget v0, p1, Landroid/widget/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/widget/DrawerLayout;->setDrawerLockMode(II)V

    iget p1, p1, Landroid/widget/DrawerLayout$SavedState;->c:I

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DrawerLayout;->d()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/widget/DrawerLayout$SavedState;->a:I

    :cond_0
    iget v0, p0, Landroid/widget/DrawerLayout;->r:I

    iput v0, v1, Landroid/widget/DrawerLayout$SavedState;->b:I

    iget v0, p0, Landroid/widget/DrawerLayout;->s:I

    iput v0, v1, Landroid/widget/DrawerLayout$SavedState;->c:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v1, v4, v5}, Landroid/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/DrawerLayout;->w:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/DrawerLayout;->x:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/widget/ViewDragHelper;->getTouchSlop()I

    move-result v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v1, v1, v1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(Z)V

    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->t:Z

    return v2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroid/widget/DrawerLayout;->w:F

    iput p1, p0, Landroid/widget/DrawerLayout;->x:F

    :goto_2
    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->t:Z

    iput-boolean v3, p0, Landroid/widget/DrawerLayout;->u:Z

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/DrawerLayout;->a(Z)V

    goto :goto_2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/widget/DrawerLayout;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/DrawerLayout;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/DrawerLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->a:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/DrawerLayout$LayoutParams;->c:Z

    invoke-direct {p0, p1, v1}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Landroid/widget/DrawerLayout;->t:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->a(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DrawerLayout;->p:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DrawerLayout;->D:Ljava/lang/Object;

    iput-boolean p2, p0, Landroid/widget/DrawerLayout;->E:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    iput p1, p0, Landroid/widget/DrawerLayout;->f:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/DrawerLayout;->f:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/widget/DrawerLayout$DrawerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DrawerLayout;->v:Landroid/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iput p1, p0, Landroid/widget/DrawerLayout;->r:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    iput p1, p0, Landroid/widget/DrawerLayout;->s:I

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/widget/DrawerLayout;->k:Landroid/widget/ViewDragHelper;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/DrawerLayout;->l:Landroid/widget/ViewDragHelper;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ViewDragHelper;->cancel()V

    :cond_3
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p2}, Landroid/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/DrawerLayout$LayoutParams;

    iget p2, p2, Landroid/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    sget-boolean v0, Landroid/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    iput-object p1, p0, Landroid/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    iput-object p1, p0, Landroid/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iput-object p1, p0, Landroid/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    iput-object p1, p0, Landroid/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0}, Landroid/widget/DrawerLayout;->d()V

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Landroid/widget/DrawerLayout;->B:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Landroid/widget/DrawerLayout;->C:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/DrawerLayout;->h:I

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/DrawerLayout;->invalidate()V

    return-void
.end method
