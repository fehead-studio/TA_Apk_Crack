.class Lcom/androlua/LuaWebView$LuaJavaScriptInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView;

.field private b:Lcom/androlua/LuaActivity;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;->a:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;->b:Lcom/androlua/LuaActivity;

    return-void
.end method


# virtual methods
.method public callLuaFunction(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;->b:Lcom/androlua/LuaActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callLuaFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;->b:Lcom/androlua/LuaActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doLuaString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;->b:Lcom/androlua/LuaActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/androlua/LuaActivity;->doString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
