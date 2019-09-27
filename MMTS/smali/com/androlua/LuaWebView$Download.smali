.class Lcom/androlua/LuaWebView$Download;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Download"
.end annotation


# instance fields
.field a:Landroid/widget/EditText;

.field final synthetic b:Lcom/androlua/LuaWebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaWebView$Download;-><init>(Lcom/androlua/LuaWebView;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaWebView$Download;Z)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaWebView$Download;->a(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Z)J
    .locals 8

    iget-object v0, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->g(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    new-instance v2, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;-><init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$1;)V

    invoke-static {v1, v2}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v1}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v2}, Lcom/androlua/LuaWebView;->g(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaWebView$DownloadBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v0}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v1}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v1

    const-string v3, "Download"

    invoke-virtual {v1, v3}, Lcom/androlua/LuaActivity;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {v5}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androlua/LuaActivity;->getLuaExtDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {p1}, Lcom/androlua/LuaWebView;->e(Lcom/androlua/LuaWebView;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/androlua/LuaWebView$Download;->f:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v4
.end method

.method static synthetic a(Lcom/androlua/LuaWebView$Download;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/androlua/LuaWebView$Download;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/androlua/LuaWebView$Download;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/androlua/LuaWebView$Download;->f:Ljava/lang/String;

    iput-wide p5, p0, Lcom/androlua/LuaWebView$Download;->g:J

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string p1, "filename=\""

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    const/16 p1, 0x22

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    :cond_0
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download;->a:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download;->a:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "B"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/32 p2, 0x100000

    cmp-long v0, p5, p2

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lez v0, :cond_1

    const-string p1, "%.2f MB"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p5

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    aput-object p5, p3, p2

    :goto_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v2, p5, v0

    if-lez v2, :cond_2

    const-string p1, "%.2f KB"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p5

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    aput-object p5, p3, p2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/androlua/LuaWebView$Download;->b:Lcom/androlua/LuaWebView;

    invoke-static {p3}, Lcom/androlua/LuaWebView;->b(Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "Download"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Type: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\nSize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download;->a:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Download"

    new-instance p3, Lcom/androlua/LuaWebView$Download$2;

    invoke-direct {p3, p0}, Lcom/androlua/LuaWebView$Download$2;-><init>(Lcom/androlua/LuaWebView$Download;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Only Wifi"

    new-instance p3, Lcom/androlua/LuaWebView$Download$1;

    invoke-direct {p3, p0}, Lcom/androlua/LuaWebView$Download$1;-><init>(Lcom/androlua/LuaWebView$Download;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
