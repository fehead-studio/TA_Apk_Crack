.class public Lcom/baidu/mobstat/au;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/l;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/mobstat/l;
    .locals 4

    const-class v0, Lcom/baidu/mobstat/au;

    monitor-enter v0

    :try_start_0
    const-string v1, "getBPStretegyController begin"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "com.baidu.bottom.remote.BPStretegyController2"

    invoke-static {p0, v2}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/baidu/mobstat/aw;

    invoke-direct {v3, v2}, Lcom/baidu/mobstat/aw;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "Get BPStretegyController load remote class v2"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    new-instance v1, Lcom/baidu/mobstat/av;

    invoke-direct {v1}, Lcom/baidu/mobstat/av;-><init>()V

    const-string v2, "Get BPStretegyController load local class"

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    :cond_1
    sput-object v1, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;

    invoke-static {p0, v1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;Lcom/baidu/mobstat/l;)V

    const-string p0, "getBPStretegyController end"

    invoke-static {p0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/au;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
