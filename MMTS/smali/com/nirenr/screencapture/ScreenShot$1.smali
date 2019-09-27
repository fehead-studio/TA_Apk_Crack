.class final Lcom/nirenr/screencapture/ScreenShot$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/screencapture/ScreenShot;->setResultData(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/nirenr/screencapture/ScreenShot;->a()Lcom/androlua/LuaAccessibilityService;

    move-result-object v0

    invoke-static {}, Lcom/nirenr/screencapture/ScreenShot;->b()Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/screencapture/ScreenShot;->getScreenCaptureBitmap(Lcom/androlua/LuaAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
