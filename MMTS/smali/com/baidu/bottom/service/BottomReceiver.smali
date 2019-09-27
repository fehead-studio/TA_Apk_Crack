.class public Lcom/baidu/bottom/service/BottomReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/baidu/mobstat/db;

.field private static b:J

.field private static c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide v0
.end method

.method public static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide p0
.end method

.method public static synthetic a(Lcom/baidu/mobstat/db;)Lcom/baidu/mobstat/db;
    .locals 0

    sput-object p0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/db;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sput-wide v0, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    invoke-static {p1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/db;

    if-eqz v0, :cond_0

    const-string p1, "Bottom has alread analyzed."

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/db;

    invoke-direct {v0}, Lcom/baidu/mobstat/db;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/db;

    new-instance v1, Lcom/baidu/mobstat/at;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/baidu/mobstat/at;-><init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/db;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
