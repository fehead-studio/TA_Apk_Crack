.class Lcom/baidu/mobstat/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobstat/l;


# instance fields
.field private a:Lcom/baidu/mobstat/ba;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mobstat/ba;->a:Lcom/baidu/mobstat/ba;

    iput-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "proxy is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.baidu.bottom.remote.BPStretegyController2"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "class isn\'t com.baidu.bottom.remote.BPStretegyController2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/baidu/mobstat/aw;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/aw;->c:Ljava/lang/Class;

    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/mobstat/aw;->b:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v4

    :try_start_0
    const-string v2, "setLastUpdateTime"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    :try_start_0
    const-string v2, "saveRemoteConfig2"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v2

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v0, v3

    :try_start_0
    const-string v2, "startDataAnynalyze"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    :try_start_0
    const-string v2, "needUpdate"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    :try_start_0
    const-string v2, "saveRemoteSign"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    :try_start_0
    const-string v2, "canStartService"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/mobstat/aw;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/baidu/mobstat/aw;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
