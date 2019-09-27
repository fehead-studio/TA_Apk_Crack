.class Lcom/baidu/mobstat/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bf;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/ch;->b(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    invoke-static {v0}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    invoke-static {v0}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/bg;->a:Lcom/baidu/mobstat/bf;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
