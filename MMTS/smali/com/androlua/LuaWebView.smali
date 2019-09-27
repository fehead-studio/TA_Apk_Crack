.class public Lcom/androlua/LuaWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/androlua/LuaGcable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaWebView$OnReceivedIconListener;,
        Lcom/androlua/LuaWebView$OnReceivedTitleListener;,
        Lcom/androlua/LuaWebView$LuaWebChromeClient;,
        Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;,
        Lcom/androlua/LuaWebView$LuaJavaScriptInterface;,
        Lcom/androlua/LuaWebView$JsObject;,
        Lcom/androlua/LuaWebView$Download;,
        Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;,
        Lcom/androlua/LuaWebView$LuaWebViewClient;,
        Lcom/androlua/LuaWebView$JsInterface;,
        Lcom/androlua/LuaWebView$OnDownloadStartListener;,
        Lcom/androlua/LuaWebView$OnDownloadCompleteListener;
    }
.end annotation


# instance fields
.field private a:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

.field private d:Lcom/androlua/LuaActivity;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/util/DisplayMetrics;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/androlua/LuaWebView$OnReceivedTitleListener;

.field private n:Lcom/androlua/LuaWebView$OnReceivedIconListener;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaActivity;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->b:Ljava/util/HashMap;

    const-string v0, "/"

    iput-object v0, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/androlua/LuaActivity;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaWebView;->d:Lcom/androlua/LuaActivity;

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    new-instance v0, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$LuaJavaScriptInterface;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaActivity;)V

    const-string v3, "androlua"

    invoke-virtual {p0, v0, v3}, Lcom/androlua/LuaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaWebView$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaWebView$1;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Lcom/androlua/LuaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaWebView;->f:Landroid/util/DisplayMetrics;

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/androlua/LuaWebView;->f:Landroid/util/DisplayMetrics;

    invoke-static {v1, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaWebView;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/androlua/LuaWebView$LuaWebChromeClient;

    invoke-direct {p1, p0}, Lcom/androlua/LuaWebView$LuaWebChromeClient;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/androlua/LuaWebView$Download;

    invoke-direct {p1, p0, v4}, Lcom/androlua/LuaWebView$Download;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$1;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->i:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->a:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/androlua/LuaWebView;)Lcom/luajava/LuaFunction;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->k:Lcom/luajava/LuaFunction;

    return-object p0
.end method

.method static synthetic a(Lcom/androlua/LuaWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->d:Lcom/androlua/LuaActivity;

    return-object p0
.end method

.method static synthetic c(Lcom/androlua/LuaWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/androlua/LuaWebView;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->i:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/androlua/LuaWebView;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnDownloadCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->c:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    return-object p0
.end method

.method static synthetic g(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->a:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    return-object p0
.end method

.method static synthetic h(Lcom/androlua/LuaWebView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic i(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedTitleListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->m:Lcom/androlua/LuaWebView$OnReceivedTitleListener;

    return-object p0
.end method

.method static synthetic j(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnReceivedIconListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWebView;->n:Lcom/androlua/LuaWebView$OnReceivedIconListener;

    return-object p0
.end method


# virtual methods
.method public addJSInterface(Lcom/androlua/LuaWebView$JsInterface;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaWebView$JsObject;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$JsObject;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$JsInterface;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addJsInterface(Lcom/androlua/LuaWebView$JsInterface;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaWebView$JsObject;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$JsObject;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$JsInterface;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView;->a:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaWebView;->d:Lcom/androlua/LuaActivity;

    iget-object v1, p0, Lcom/androlua/LuaWebView;->a:Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public gc()V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaWebView;->l:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaWebView;->l:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/androlua/LuaWebView;->g:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->g:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/androlua/LuaWebView$3;

    invoke-direct {v1, p0}, Lcom/androlua/LuaWebView$3;-><init>(Lcom/androlua/LuaWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "../"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/androlua/LuaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->h:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->g:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/androlua/LuaWebView;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaWebView;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public setAdsFilter(Lcom/luajava/LuaFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaFunction<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaWebView;->k:Lcom/luajava/LuaFunction;

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/androlua/LuaWebView$OnDownloadCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->c:Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    return-void
.end method

.method public setOnDownloadStartListener(Lcom/androlua/LuaWebView$OnDownloadStartListener;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$2;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$OnDownloadStartListener;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnReceivedIconListener(Lcom/androlua/LuaWebView$OnReceivedIconListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->n:Lcom/androlua/LuaWebView$OnReceivedIconListener;

    return-void
.end method

.method public setOnReceivedTitleListener(Lcom/androlua/LuaWebView$OnReceivedTitleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->m:Lcom/androlua/LuaWebView$OnReceivedTitleListener;

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setProgressBarEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaWebView;->e:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    goto :goto_0

    return-void
.end method

.method public setWebViewClient(Lcom/androlua/LuaWebView$LuaWebViewClient;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaWebView$SimpleLuaWebViewClient;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$LuaWebViewClient;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
