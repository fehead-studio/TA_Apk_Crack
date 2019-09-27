.class Lcom/androlua/LuaWebView$LuaWebChromeClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;->b:Lcom/androlua/LuaWebView$LuaWebChromeClient;

    iput-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;->b:Lcom/androlua/LuaWebView$LuaWebChromeClient;

    iget-object p1, p1, Lcom/androlua/LuaWebView$LuaWebChromeClient;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {p2, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method
