.class public Lcom/baidu/mobstat/at;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/baidu/mobstat/db;

.field final synthetic d:Lcom/baidu/bottom/service/BottomReceiver;


# direct methods
.method public constructor <init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/db;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/at;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iput-object p2, p0, Lcom/baidu/mobstat/at;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/mobstat/at;->c:Lcom/baidu/mobstat/db;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/at;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v2, p0, Lcom/baidu/mobstat/at;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Intent;

    invoke-static {v1, v2, v3}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/baidu/mobstat/at;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v2, p0, Lcom/baidu/mobstat/at;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Intent;

    invoke-static {v1, v2, v3}, Lcom/baidu/bottom/service/BottomReceiver;->b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/baidu/bottom/service/BottomReceiver;->a()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    const-string v1, "No need to handle receiver due to time strategy"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/baidu/mobstat/at;->c:Lcom/baidu/mobstat/db;

    invoke-virtual {v1}, Lcom/baidu/mobstat/db;->b()V

    invoke-static {v0}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/db;)Lcom/baidu/mobstat/db;

    return-void

    :cond_0
    :try_start_1
    invoke-static {v1, v2}, Lcom/baidu/bottom/service/BottomReceiver;->a(J)J

    sget-object v1, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/ao;

    iget-object v2, p0, Lcom/baidu/mobstat/at;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ao;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/baidu/mobstat/at;->c:Lcom/baidu/mobstat/db;

    invoke-virtual {v2}, Lcom/baidu/mobstat/db;->b()V

    invoke-static {v0}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/db;)Lcom/baidu/mobstat/db;

    throw v1

    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/at;->c:Lcom/baidu/mobstat/db;

    invoke-virtual {v1}, Lcom/baidu/mobstat/db;->b()V

    invoke-static {v0}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/db;)Lcom/baidu/mobstat/db;

    return-void
.end method
