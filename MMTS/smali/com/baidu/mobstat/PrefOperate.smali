.class public Lcom/baidu/mobstat/PrefOperate;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadMetaDataConfig(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "BaiduMobAd_EXCEPTION_LOG"

    invoke-static {p0, v2}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/16 v2, 0x18

    :try_start_1
    const-string v3, "BaiduMobAd_SEND_STRATEGY"

    invoke-static {p0, v3}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v4

    :goto_1
    invoke-virtual {v0, p0, v4}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_3

    :cond_1
    :try_start_3
    sget-object v4, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v4

    invoke-virtual {v0, p0, v4}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_2
    :try_start_5
    sget-object v4, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_2
    move-object v0, v3

    goto :goto_4

    :catch_2
    move-exception v3

    :goto_3
    invoke-static {v3}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :goto_4
    :try_start_7
    const-string v3, "BaiduMobAd_TIME_INTERVAL"

    invoke-static {p0, v3}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v0

    sget-object v4, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v4}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_4

    if-lez v3, :cond_4

    if-gt v3, v2, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    :try_start_8
    const-string v0, "BaiduMobAd_ONLY_WIFI"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;Z)V

    return-void

    :cond_5
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/bj;->a(Landroid/content/Context;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    :catch_4
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bu;

    move-result-object v0

    iput-object p1, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/bj;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;Z)V

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lcom/baidu/mobstat/bj;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/baidu/mobstat/bj;->b(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bu;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/bu;->m:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/bu;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/bu;->f:Ljava/lang/String;

    return-void
.end method
