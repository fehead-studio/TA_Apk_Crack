.class Lcom/androlua/Download$DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/Download;


# direct methods
.method private constructor <init>(Lcom/androlua/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/Download;Lcom/androlua/Download$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/Download$DownloadBroadcastReceiver;-><init>(Lcom/androlua/Download;)V

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

    iget-object p1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {p1}, Lcom/androlua/Download;->b(Lcom/androlua/Download;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {p1}, Lcom/androlua/Download;->c(Lcom/androlua/Download;)Lcom/androlua/Download$OnDownloadCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {p1}, Lcom/androlua/Download;->b(Lcom/androlua/Download;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {p2}, Lcom/androlua/Download;->c(Lcom/androlua/Download;)Lcom/androlua/Download$OnDownloadCompleteListener;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {p2, v0, p1}, Lcom/androlua/Download$OnDownloadCompleteListener;->onDownloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
