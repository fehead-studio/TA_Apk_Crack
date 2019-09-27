.class Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;->a:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;-><init>(Lcom/androlua/LuaWebView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "extra_download_id"

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    iget-object p1, p0, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;->a:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->e(Lcom/androlua/LuaWebView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;->a:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;->a:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->e(Lcom/androlua/LuaWebView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;->a:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->f(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$OnDownloadCompleteListener;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaWebView$OnDownloadCompleteListener;->onDownloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
