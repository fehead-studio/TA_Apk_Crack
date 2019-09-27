.class public Lcom/baidu/mobstat/be;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/be;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/mobstat/be;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/be;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/mobstat/be;->c:Z

    :try_start_0
    const-string v0, "SDK_BPLUS_SERVICE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/be;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v0, "SDK_PRODUCT_LY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-string v0, "SDK_LOCAL_SERVER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mobstat/be;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "SDK_BPLUS_SERVICE"

    iget-boolean v2, p0, Lcom/baidu/mobstat/be;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v1, "SDK_PRODUCT_LY"

    iget-object v2, p0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-string v1, "SDK_LOCAL_SERVER"

    iget-boolean v2, p0, Lcom/baidu/mobstat/be;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method
