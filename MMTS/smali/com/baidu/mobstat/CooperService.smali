.class public Lcom/baidu/mobstat/CooperService;
.super Lcom/baidu/mobstat/bk;

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/CooperService;


# instance fields
.field private b:Lcom/baidu/mobstat/bu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mobstat/bk;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/bu;

    invoke-direct {v0}, Lcom/baidu/mobstat/bu;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    return-void
.end method

.method static declared-synchronized a()Lcom/baidu/mobstat/CooperService;
    .locals 2

    const-class v0, Lcom/baidu/mobstat/CooperService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v1}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/mobstat/dc;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/mobstat/dc;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/mobstat/dc;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bj;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public checkCellLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkGPSLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/bj;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    return-object p1
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget v0, v0, Lcom/baidu/mobstat/bu;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->e(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Lcom/baidu/mobstat/bu;->h:I

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget p1, p1, Lcom/baidu/mobstat/bu;->h:I

    return p1
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/bj;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    return-object p1

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/ct;->a([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/cr;->b(I[B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/bj;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p1, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    const-string p1, "000000000000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {p2}, Lcom/baidu/mobstat/dc;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "000000000000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    :try_start_1
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_7
    move-object p1, v0

    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "000000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "000000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iput-object p1, p2, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p2, p2, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1
.end method

.method public bridge synthetic getFloatt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getFloatt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getHeadObject()Lcom/baidu/mobstat/bu;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bj;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.7.5.5"

    return-object v0
.end method

.method public getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "02:00:00:00:00:00"

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v1, v1, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/bj;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iput-object v1, p1, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iput-object p2, v0, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/bj;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const-string p2, ""

    iput-object p2, p1, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->u:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bj;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    :goto_1
    iput-object v0, p1, Lcom/baidu/mobstat/bu;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/dc;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iput-object v0, v1, Lcom/baidu/mobstat/bu;->u:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/bj;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const-string v0, ""

    goto :goto_1
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSysVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object p1, p1, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;

    return-object p1
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget-object v0, v0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/cr;->c(I[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSharedLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->getSharedLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/bu;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public isDeviceMacEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bj;->l(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putSharedLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->putSharedLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeShare(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/mobstat/bk;->removeShare(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/mobstat/bk;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public resetHeadSign()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bu;->x:Ljava/lang/String;

    return-void
.end method

.method public setHeadSqCounted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/baidu/mobstat/bu;->z:I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    iget v0, p1, Lcom/baidu/mobstat/bu;->z:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bu;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/bu;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/bj;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic updateShareInt(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bk;->updateShareInt(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic updateShareString(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bk;->updateShareString(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
