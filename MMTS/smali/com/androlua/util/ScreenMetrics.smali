.class public Lcom/androlua/util/ScreenMetrics;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z

.field private static d:I

.field private static e:Landroid/view/Display;


# instance fields
.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/androlua/util/ScreenMetrics;->f:I

    iput p2, p0, Lcom/androlua/util/ScreenMetrics;->g:I

    return-void
.end method

.method public static getDeviceScreenDensity()I
    .locals 1

    sget v0, Lcom/androlua/util/ScreenMetrics;->d:I

    return v0
.end method

.method public static getDeviceScreenHeight()I
    .locals 1

    sget v0, Lcom/androlua/util/ScreenMetrics;->a:I

    return v0
.end method

.method public static getDeviceScreenWidth()I
    .locals 1

    sget v0, Lcom/androlua/util/ScreenMetrics;->b:I

    return v0
.end method

.method public static initIfNeeded(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/androlua/util/ScreenMetrics;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/androlua/util/ScreenMetrics;->a:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/androlua/util/ScreenMetrics;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/androlua/util/ScreenMetrics;->d:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sput-object p0, Lcom/androlua/util/ScreenMetrics;->e:Landroid/view/Display;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/androlua/util/ScreenMetrics;->c:Z

    return-void
.end method

.method public static rescaleX(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/androlua/util/ScreenMetrics;->c:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    mul-int p0, p0, p1

    sget p1, Lcom/androlua/util/ScreenMetrics;->b:I

    div-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public static rescaleY(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/androlua/util/ScreenMetrics;->c:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    mul-int p0, p0, p1

    sget p1, Lcom/androlua/util/ScreenMetrics;->a:I

    div-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public static scaleX(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/androlua/util/ScreenMetrics;->c:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    sget v0, Lcom/androlua/util/ScreenMetrics;->b:I

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public static scaleY(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/androlua/util/ScreenMetrics;->c:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    sget v0, Lcom/androlua/util/ScreenMetrics;->a:I

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    :cond_1
    return p0
.end method


# virtual methods
.method public rescaleX(I)I
    .locals 1

    iget v0, p0, Lcom/androlua/util/ScreenMetrics;->f:I

    invoke-static {p1, v0}, Lcom/androlua/util/ScreenMetrics;->rescaleX(II)I

    move-result p1

    return p1
.end method

.method public rescaleY(I)I
    .locals 1

    iget v0, p0, Lcom/androlua/util/ScreenMetrics;->g:I

    invoke-static {p1, v0}, Lcom/androlua/util/ScreenMetrics;->rescaleY(II)I

    move-result p1

    return p1
.end method

.method public scaleX(I)I
    .locals 1

    iget v0, p0, Lcom/androlua/util/ScreenMetrics;->f:I

    invoke-static {p1, v0}, Lcom/androlua/util/ScreenMetrics;->scaleX(II)I

    move-result p1

    return p1
.end method

.method public scaleY(I)I
    .locals 1

    iget v0, p0, Lcom/androlua/util/ScreenMetrics;->g:I

    invoke-static {p1, v0}, Lcom/androlua/util/ScreenMetrics;->scaleY(II)I

    move-result p1

    return p1
.end method

.method public setDesignHeight(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/util/ScreenMetrics;->g:I

    return-void
.end method

.method public setDesignWidth(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/util/ScreenMetrics;->f:I

    return-void
.end method

.method public setScreenMetrics(II)V
    .locals 0

    iput p1, p0, Lcom/androlua/util/ScreenMetrics;->f:I

    iput p2, p0, Lcom/androlua/util/ScreenMetrics;->g:I

    return-void
.end method
