.class Lcom/androlua/LuaAccessibilityService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAccessibilityService;->getScreenshot(Lcom/luajava/LuaFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaFunction;

.field final synthetic b:Lcom/androlua/LuaAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService$1;->b:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/LuaAccessibilityService$1;->a:Lcom/luajava/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService$1;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService$1;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
