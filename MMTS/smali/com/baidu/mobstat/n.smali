.class public Lcom/baidu/mobstat/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/m;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p0

    sget-object v0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/q;->a:Lcom/baidu/mobstat/q;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p0

    sget-object p1, Lcom/baidu/mobstat/u;->f:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/r;->a:Lcom/baidu/mobstat/r;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/o;->a:Lcom/baidu/mobstat/o;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p0

    sget-object v0, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/s;->a:Lcom/baidu/mobstat/s;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/s;->a(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/baidu/mobstat/u;->d:Lcom/baidu/mobstat/u;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method
