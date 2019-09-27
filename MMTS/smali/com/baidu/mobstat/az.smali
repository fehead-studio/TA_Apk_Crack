.class public Lcom/baidu/mobstat/az;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/az;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;

    const-wide/16 v0, 0x18

    iput-wide v0, p0, Lcom/baidu/mobstat/az;->d:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->e:J

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->f:J

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->g:J

    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->h:J

    iput-wide v0, p0, Lcom/baidu/mobstat/az;->i:J

    const-wide/16 v2, 0xf

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->j:J

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->k:J

    const-wide/16 v2, 0x1e

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->l:J

    const-wide/16 v2, 0xc

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->m:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/mobstat/az;->n:J

    iput-wide v0, p0, Lcom/baidu/mobstat/az;->o:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/az;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/az;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mobstat/az;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/az;->m()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/az;->j()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/az;->k()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/mobstat/az;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/az;->a:Lcom/baidu/mobstat/az;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/mobstat/az;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/az;->a:Lcom/baidu/mobstat/az;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mobstat/az;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/az;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/baidu/mobstat/az;->a:Lcom/baidu/mobstat/az;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/baidu/mobstat/az;->a:Lcom/baidu/mobstat/az;

    return-object p0
.end method

.method private b(J)J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method private m()V
    .locals 2

    const-string v0, "backups/system/.timestamp"

    invoke-static {v0}, Lcom/baidu/mobstat/cs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/u;)J
    .locals 4

    iget-wide v0, p1, Lcom/baidu/mobstat/u;->j:J

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/mobstat/u;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/az;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/baidu/mobstat/u;J)V
    .locals 1

    iput-wide p2, p1, Lcom/baidu/mobstat/u;->j:J

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/baidu/mobstat/u;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string p1, "backups/system/.timestamp"

    iget-object p2, p0, Lcom/baidu/mobstat/az;->c:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/baidu/mobstat/cs;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Landroid/content/Context;

    const-string v1, ".config2"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/baidu/mobstat/az;->j()V

    return-void
.end method

.method public a()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(J)Z
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Landroid/content/Context;

    const-string v1, ".sign"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/baidu/mobstat/az;->k()V

    return-void
.end method

.method public b()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->d:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/az;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/az;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/mobstat/az;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/baidu/mobstat/az;->q:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->o:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public e()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->h:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public f()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->i:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public g()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->j:J

    const-wide/16 v2, 0x18

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->k:J

    const-wide/16 v2, 0x18

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public i()J
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/az;->m:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Landroid/content/Context;

    const-string v1, ".config2"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/mobstat/cu;->a()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->a([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/mobstat/da;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    :try_start_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->e:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    :goto_0
    :try_start_3
    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->h:J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    :goto_1
    :try_start_5
    const-string v1, "e"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->i:J
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :goto_2
    :try_start_7
    const-string v1, "i"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->j:J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    :goto_3
    :try_start_9
    const-string v1, "f"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->d:J
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    :goto_4
    :try_start_b
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->o:J
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_c
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :goto_5
    :try_start_d
    const-string v1, "pk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->k:J
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_e
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    :goto_6
    :try_start_f
    const-string v1, "at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->l:J
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_7

    :catch_7
    move-exception v1

    :try_start_10
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :goto_7
    :try_start_11
    const-string v1, "as"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->m:J
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_8

    :catch_8
    move-exception v1

    :try_start_12
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :goto_8
    :try_start_13
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->n:J
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_9

    :catch_9
    move-exception v1

    :try_start_14
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    :goto_9
    :try_start_15
    const-string v1, "mc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/az;->f:J
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_a

    :catch_a
    move-exception v1

    :try_start_16
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    :goto_a
    :try_start_17
    const-string v1, "lsc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/az;->g:J
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    return-void

    :catch_b
    move-exception v0

    :try_start_18
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    return-void

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Landroid/content/Context;

    const-string v1, ".sign"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/mobstat/cu;->a()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->a([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/mobstat/da;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/az;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/az;->p:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public l()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/baidu/mobstat/u;->h:Lcom/baidu/mobstat/u;

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/mobstat/az;->d()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSend now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";lastSendTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";sendLogTimeInterval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    sub-long v6, v0, v2

    cmp-long v0, v6, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/baidu/mobstat/az;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
