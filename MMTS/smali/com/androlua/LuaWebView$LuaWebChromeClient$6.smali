.class Lcom/androlua/LuaWebView$LuaWebChromeClient$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$LuaWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Lcom/androlua/LuaWebView$LuaWebChromeClient;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$6;->b:Lcom/androlua/LuaWebView$LuaWebChromeClient;

    iput-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$6;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$6;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
