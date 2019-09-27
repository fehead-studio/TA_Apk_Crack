.class Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String; = "Android"


# instance fields
.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Lorg/json/JSONObject;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bu;->b:Z

    const-string v1, "0"

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/mobstat/bu;->h:I

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/mobstat/bu;->z:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bu;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cs;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cs;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cs;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cs;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->x:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->y:Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/bj;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    iput-object v1, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2"

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1, p1}, Lcom/baidu/mobstat/dc;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/bu;->v:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-static {p1, v1}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/bu;->w:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_7
    invoke-static {v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    :try_start_a
    invoke-static {p1}, Lcom/baidu/mobstat/dc;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bu;->k:I

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bu;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/mobstat/bu;->k:I

    iget v2, p0, Lcom/baidu/mobstat/bu;->l:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/bu;->k:I

    iget v0, p0, Lcom/baidu/mobstat/bu;->k:I

    iget v2, p0, Lcom/baidu/mobstat/bu;->l:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/bu;->l:I

    iget v0, p0, Lcom/baidu/mobstat/bu;->k:I

    iget v2, p0, Lcom/baidu/mobstat/bu;->l:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/bu;->k:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bu;->h:I

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_5
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    :try_start_e
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkCellLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/baidu/mobstat/bu;->q:Ljava/lang/String;

    goto :goto_8

    :cond_4
    const-string v0, "0_0_0"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    :catch_6
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_8
    :try_start_10
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/baidu/mobstat/bu;->r:Ljava/lang/String;

    goto :goto_a

    :cond_5
    const-string v0, ""
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    :catch_7
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_a
    :try_start_12
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    :catch_8
    move-exception p1

    :try_start_13
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :goto_b
    iput-boolean v1, p0, Lcom/baidu/mobstat/bu;->b:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/bu;->a(Landroid/content/Context;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "header has been installed; header is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/bu;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bu;->y:Lorg/json/JSONObject;

    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "o"

    sget-object v1, Lcom/baidu/mobstat/bu;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/bu;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "st"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "s"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sv"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->d:Ljava/lang/String;

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "k"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pt"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "0"

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->e:Ljava/lang/String;

    :goto_4
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "i"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "v"

    const-string v2, "3.7.5.5"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sc"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mobstat/bu;->h:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "n"

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->i:Ljava/lang/String;

    :goto_5
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mc"

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->t:Ljava/lang/String;

    :goto_6
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bm"

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->v:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->v:Ljava/lang/String;

    :goto_7
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dd"

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->j:Ljava/lang/String;

    :goto_8
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ii"

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, ""

    goto :goto_9

    :cond_9
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->g:Ljava/lang/String;

    :goto_9
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "w"

    iget v2, p0, Lcom/baidu/mobstat/bu;->k:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "h"

    iget v2, p0, Lcom/baidu/mobstat/bu;->l:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "dn"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->w:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    goto :goto_a

    :cond_a
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->w:Ljava/lang/String;

    :goto_a
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    goto :goto_b

    :cond_b
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "op"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, ""

    goto :goto_c

    :cond_c
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->n:Ljava/lang/String;

    :goto_c
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "m"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    if-nez v2, :cond_d

    const-string v2, ""

    goto :goto_d

    :cond_d
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->o:Ljava/lang/String;

    :goto_d
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ma"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string v2, ""

    goto :goto_e

    :cond_e
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->p:Ljava/lang/String;

    :goto_e
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cl"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->q:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gl"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->r:Ljava/lang/String;

    if-nez v2, :cond_f

    const-string v2, ""

    goto :goto_f

    :cond_f
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->r:Ljava/lang/String;

    :goto_f
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "l"

    iget-object v2, p0, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;

    if-nez v2, :cond_10

    const-string v2, ""

    goto :goto_10

    :cond_10
    iget-object v2, p0, Lcom/baidu/mobstat/bu;->s:Ljava/lang/String;

    :goto_10
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sq"

    iget v2, p0, Lcom/baidu/mobstat/bu;->z:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pn"

    invoke-static {v1, p1}, Lcom/baidu/mobstat/dc;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pl"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    const-string p1, "scl"

    if-nez v1, :cond_12

    const-string v1, ""

    :cond_12
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sign"

    iget-object v0, p0, Lcom/baidu/mobstat/bu;->x:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    goto :goto_11

    :cond_13
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->x:Ljava/lang/String;

    :goto_11
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/baidu/mobstat/bu;->y:Lorg/json/JSONObject;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/baidu/mobstat/bu;->y:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "ext"

    iget-object v0, p0, Lcom/baidu/mobstat/bu;->y:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "header is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; len: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_12

    :catchall_0
    move-exception p1

    goto :goto_13

    :catch_0
    :try_start_1
    const-string p1, "header ini error"

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_12
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0

    throw p1
.end method
