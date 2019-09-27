.class Lcom/baidu/mobstat/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/by;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/by;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    iput-object p2, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v0}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v0}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;I)I

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/bj;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v0}, Lcom/baidu/mobstat/by;->b(Lcom/baidu/mobstat/by;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    iget-object v1, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v0}, Lcom/baidu/mobstat/by;->b(Lcom/baidu/mobstat/by;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v0}, Lcom/baidu/mobstat/by;->d(Lcom/baidu/mobstat/by;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/ca;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ca;-><init>(Lcom/baidu/mobstat/bz;)V

    iget-object v2, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    invoke-static {v2}, Lcom/baidu/mobstat/by;->c(Lcom/baidu/mobstat/by;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
