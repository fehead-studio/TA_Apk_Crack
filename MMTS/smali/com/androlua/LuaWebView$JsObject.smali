.class Lcom/androlua/LuaWebView$JsObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView;

.field private b:Lcom/androlua/LuaWebView$JsInterface;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$JsInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$JsObject;->a:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaWebView$JsObject;->b:Lcom/androlua/LuaWebView$JsInterface;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaWebView$JsObject;->b:Lcom/androlua/LuaWebView$JsInterface;

    invoke-interface {v0, p1}, Lcom/androlua/LuaWebView$JsInterface;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
