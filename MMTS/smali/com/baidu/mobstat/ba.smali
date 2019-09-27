.class public Lcom/baidu/mobstat/ba;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/baidu/mobstat/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ba;

    invoke-direct {v0}, Lcom/baidu/mobstat/ba;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ba;->a:Lcom/baidu/mobstat/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/be;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/be;-><init>(Lorg/json/JSONObject;)V

    iget-boolean p1, v0, Lcom/baidu/mobstat/be;->a:Z

    sput-boolean p1, Lcom/baidu/mobstat/bc;->b:Z

    iget-object p1, v0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    sput-object p1, Lcom/baidu/mobstat/bc;->c:Ljava/lang/String;

    iget-boolean p1, v0, Lcom/baidu/mobstat/be;->c:Z

    sput-boolean p1, Lcom/baidu/mobstat/bc;->d:Z

    return-void
.end method

.method private a()Z
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, Lcom/baidu/mobstat/y;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, Lcom/baidu/mobstat/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, Lcom/baidu/mobstat/y;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, Lcom/baidu/mobstat/y;->b()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, Lcom/baidu/mobstat/y;->b()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "he"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "APP_MEM"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/az;->b()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_0

    :try_start_1
    const-string p2, "app_mem3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const-string p2, "APP_APK"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sget-object p2, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    const/16 v2, 0x5000

    invoke-virtual {p2, v2}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_2

    :try_start_2
    const-string p2, "app_apk3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v1, p2

    goto :goto_3

    :catch_2
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    const-string p2, "APP_CHANGE"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sget-object p2, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    const/16 v2, 0x2800

    invoke-virtual {p2, v2}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_4

    :try_start_3
    const-string p2, "app_change3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v1, p2

    goto :goto_5

    :catch_3
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    const-string p2, "APP_TRACE"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sget-object p2, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    const/16 v2, 0x3c00

    invoke-virtual {p2, v2}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_6

    :try_start_4
    const-string p2, "app_trace3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v1, p2

    goto :goto_7

    :catch_4
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    const-string p2, "APP_LIST"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sget-object p2, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    const v2, 0xb400

    invoke-virtual {p2, v2}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_8

    :try_start_5
    const-string p2, "app_list3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v1, p2

    goto :goto_9

    :catch_5
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    const-string p2, "AP_LIST"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const p2, 0x2d000

    sub-int/2addr p2, v1

    sget-object v2, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    invoke-virtual {v2, p2}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    :cond_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_a

    :try_start_6
    const-string p2, "ap_list3"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v1, p2

    goto :goto_b

    :catch_6
    move-exception p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log in bytes is almost :"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v1, "payload"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/al;->a()Lcom/baidu/mobstat/al;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/al;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return-void

    :catch_7
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    const-string v0, "collectAPWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->e()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": last time: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; time interval: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-eqz v0, :cond_0

    sub-long v7, v3, v1

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 12

    const-string v0, "collectAPPListWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->f()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "; userInterval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    sub-long v9, v0, v3

    cmp-long v11, v9, v5

    if-gtz v11, :cond_0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/az;->a(J)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "collectUserAPPListWithStretegy 2"

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Z)V

    :cond_1
    sget-object v3, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->g()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "now time: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ": last time: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "; sysInterval : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    cmp-long v2, v3, v7

    if-eqz v2, :cond_2

    sub-long v7, v0, v3

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "collectSysAPPListWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 9

    const-string v0, "collectAPPTraceWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->i()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": last time: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; time interval: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-eqz v2, :cond_0

    sub-long v7, v0, v3

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPPTraceWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 9

    const-string v0, "collectAPKWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->h()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": last time: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; interval : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-eqz v2, :cond_0

    sub-long v7, v0, v3

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPKWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/u;->h:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    invoke-static {p1}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/baidu/mobstat/ba;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p1

    sget-object v0, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    invoke-virtual {p1, v0, p2, p3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/az;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "startDataAnynalyzed start"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ba;->a(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/az;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is data collect closed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    if-nez v0, :cond_6

    sget-object v0, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->d(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->e(Landroid/content/Context;)V

    :cond_2
    sget-boolean v0, Lcom/baidu/mobstat/bc;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->f(Landroid/content/Context;)V

    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/dc;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/baidu/mobstat/az;->l()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "sendLog"

    invoke-static {p2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->g(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "isWifiAvailable = false, will not sendLog"

    :goto_0
    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p1, "can not sendLog due to time stratergy"

    goto :goto_0

    :cond_6
    :goto_1
    const-string p1, "startDataAnynalyzed finished"

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 8

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p1

    sget-object v0, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/az;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    cmp-long p1, v6, v2

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "nowTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";timeInteveral="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "nowTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";timeInteveral="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/az;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
