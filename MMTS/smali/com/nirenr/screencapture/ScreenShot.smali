.class public Lcom/nirenr/screencapture/ScreenShot;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/screencapture/ScreenShot$SaveTask;
    }
.end annotation


# static fields
.field private static a:Lcom/androlua/LuaAccessibilityService; = null

.field public static appName:Ljava/lang/String; = ""

.field private static b:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field private static c:Landroid/content/Intent;

.field private static h:Lcom/nirenr/screencapture/ScreenShot;

.field public static mScreenCaptureBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/hardware/display/VirtualDisplay$Callback;

.field private f:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field private g:Landroid/media/Image;

.field private i:Landroid/media/projection/MediaProjection;

.field private j:Landroid/hardware/display/VirtualDisplay;

.field private k:Landroid/media/ImageReader;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/VirtualDisplay$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->c()V

    sget-object p1, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    const-class v0, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startVirtual()V

    return-void
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic a()Lcom/androlua/LuaAccessibilityService;
    .locals 1

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    return-object v0
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;Lcom/nirenr/screencapture/ScreenCaptureListener;)Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object p1
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->g()V

    return-void
.end method

.method static synthetic b()Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 1

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object v0
.end method

.method static synthetic b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->n:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v1, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    return-void
.end method

.method private e()Landroid/media/projection/MediaProjectionManager;
    .locals 2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method private f()V
    .locals 10

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->setUpMediaProjection()V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    const-string v2, "screen-mirror"

    iget v3, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v4, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    iget v5, p0, Lcom/nirenr/screencapture/ScreenShot;->n:I

    const/16 v6, 0x10

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    iget-object v8, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/hardware/display/VirtualDisplay$Callback;

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-void

    :cond_1
    new-instance v0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;

    invoke-direct {v0, p0}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/Image;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public static getResultData(Lcom/androlua/LuaAccessibilityService;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static getScreenCaptureBitmap(Lcom/androlua/LuaAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 13

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    sput-object p1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->startActivity(Landroid/content/Intent;)V

    move-object p0, v0

    move-object v1, p0

    goto/16 :goto_5

    :cond_1
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getDensity()I

    move-result v1

    :goto_0
    move v8, v1

    move v7, v2

    move v6, v3

    const/4 v1, 0x1

    invoke-static {v6, v7, v1, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "media_projection"

    invoke-virtual {p0, v2}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/projection/MediaProjectionManager;

    const/4 v2, -0x1

    sget-object v3, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "screen-mirror"

    const/16 v9, 0x10

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x28

    if-ge v3, v6, :cond_4

    const-wide/16 v5, 0x5

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_5
    invoke-static {v5}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v5, :cond_5

    const-string v3, "\u8bf7\u91cd\u8bd5"

    invoke-interface {p1, v3}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    mul-int v10, v9, v3

    sub-int/2addr v7, v10

    div-int/2addr v7, v9

    add-int/2addr v7, v3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v7, v4, v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    invoke-interface {p1, v3}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    :goto_4
    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :cond_7
    if-eqz p0, :cond_a

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_8

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object v2, p0

    goto :goto_8

    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object v2, p0

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object v1, p0

    move-object v2, v1

    goto :goto_8

    :catch_4
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object v1, p0

    move-object v2, v1

    :goto_6
    :try_start_6
    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const-string v3, "\u8bf7\u91cd\u8bd5"

    invoke-interface {p1, v3}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :cond_9
    if-eqz p0, :cond_a

    :goto_7
    invoke-virtual {p0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_a
    return-void

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :cond_c
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_d
    throw p1
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    mul-int v7, v6, v0

    sub-int/2addr v3, v7

    div-int/2addr v3, v6

    add-int/2addr v3, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v3, v4, v4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Landroid/media/Image;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    return-void
.end method

.method public static setResultData(Landroid/content/Intent;)V
    .locals 3

    if-nez p0, :cond_2

    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    const-string v0, "\u672a\u83b7\u5f97\u6743\u9650"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const-string v0, "\u672a\u83b7\u5f97\u6743\u9650"

    invoke-interface {p0, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sput-object p0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/nirenr/screencapture/ScreenShot$1;

    invoke-direct {v0}, Lcom/nirenr/screencapture/ScreenShot$1;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public reSize()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->j()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->k()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->c()V

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startVirtual()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->j()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->i()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->k()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->h:Lcom/nirenr/screencapture/ScreenShot;

    return-void
.end method

.method public setScreenCaptureBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p1, Lcom/nirenr/screencapture/ScreenShot;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUpMediaProjection()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    const-class v2, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->e()Landroid/media/projection/MediaProjectionManager;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method public startScreenShot()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nirenr/screencapture/ScreenShot$2;

    invoke-direct {v1, p0}, Lcom/nirenr/screencapture/ScreenShot$2;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/nirenr/screencapture/ScreenShot$3;

    invoke-direct {v1, p0}, Lcom/nirenr/screencapture/ScreenShot$3;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startScreenShot()V

    return-void
.end method

.method public startVirtual()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->f()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->setUpMediaProjection()V

    goto :goto_0

    return-void
.end method
