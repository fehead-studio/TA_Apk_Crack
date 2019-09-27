.class Lcom/androlua/LuaWebView$LuaWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LuaWebChromeClient"
.end annotation


# instance fields
.field a:Landroid/widget/EditText;

.field final synthetic b:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 1

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->a:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f010000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$1;

    invoke-direct {p2, p0, p4}, Lcom/androlua/LuaWebView$LuaWebChromeClient$1;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$2;

    invoke-direct {p2, p0, p4}, Lcom/androlua/LuaWebView$LuaWebChromeClient$2;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$3;

    invoke-direct {p2, p0, p4}, Lcom/androlua/LuaWebView$LuaWebChromeClient$3;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->a:Landroid/widget/EditText;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p4}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->a:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;

    invoke-direct {p2, p0, p5}, Lcom/androlua/LuaWebView$LuaWebChromeClient$4;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsPromptResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$5;

    invoke-direct {p2, p0, p5}, Lcom/androlua/LuaWebView$LuaWebChromeClient$5;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsPromptResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/androlua/LuaWebView$LuaWebChromeClient$6;

    invoke-direct {p2, p0, p5}, Lcom/androlua/LuaWebView$LuaWebChromeClient$6;-><init>(Lcom/androlua/LuaWebView$LuaWebChromeClient;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->h(Lcom/androlua/LuaWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->h(Lcom/androlua/LuaWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->h(Lcom/androlua/LuaWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedIconListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedIconListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/androlua/LuaWebView$OnReceivedIconListener;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->i(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedTitleListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->i(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedTitleListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/androlua/LuaWebView$OnReceivedTitleListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaWebView$LuaWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->d(Lcom/androlua/LuaWebView;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p2, p1}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    iget-object p1, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    iget-object p2, p0, Lcom/androlua/LuaWebView$LuaWebChromeClient;->b:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->c(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaWebView;->openFile(Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaWebView$LuaWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
