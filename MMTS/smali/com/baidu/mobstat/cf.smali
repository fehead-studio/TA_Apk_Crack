.class Lcom/baidu/mobstat/cf;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:I

.field private volatile g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/cg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->a:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->b:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->c:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/cf;->f:I

    iput v0, p0, Lcom/baidu/mobstat/cf;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cf;->h:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->a:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->e:J

    return-void
.end method

.method public static a(Lcom/baidu/mobstat/cg;J)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->d()J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v3, v1, p1

    const-string p1, "ps"

    const-wide/16 v1, 0x0

    cmp-long p2, v3, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "t"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "at"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->f()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mobstat/cg;->e()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ext"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/baidu/mobstat/cg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/cg;",
            ">;",
            "Lcom/baidu/mobstat/cg;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cg;

    invoke-static {v0}, Lcom/baidu/mobstat/cg;->b(Lcom/baidu/mobstat/cg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/baidu/mobstat/cg;->b(Lcom/baidu/mobstat/cg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/baidu/mobstat/cg;->b(Lcom/baidu/mobstat/cg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/cg;->b(Lcom/baidu/mobstat/cg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/baidu/mobstat/cg;->c(Lcom/baidu/mobstat/cg;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/cg;->c(Lcom/baidu/mobstat/cg;)Z

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/baidu/mobstat/cg;->c(Lcom/baidu/mobstat/cg;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/cg;->a(Lcom/baidu/mobstat/cg;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/cf;->c(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/mobstat/cf;->b:J

    iput-wide v2, p0, Lcom/baidu/mobstat/cf;->c:J

    iput-wide v2, p0, Lcom/baidu/mobstat/cf;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cf;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/cf;->f:I

    iput v0, p0, Lcom/baidu/mobstat/cf;->g:I

    iput v0, p0, Lcom/baidu/mobstat/cf;->g:I

    iget-object v0, p0, Lcom/baidu/mobstat/cf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobstat/cf;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/cf;->c:J

    return-void
.end method

.method public a(Lcom/baidu/mobstat/cg;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/cf;->h:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cf;->a(Ljava/util/List;Lcom/baidu/mobstat/cg;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/cf;->a:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobstat/cf;->f:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/cf;->d:J

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/cf;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/cf;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "i"

    iget-wide v2, p0, Lcom/baidu/mobstat/cf;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "c"

    iget v2, p0, Lcom/baidu/mobstat/cf;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "s2"

    iget-wide v2, p0, Lcom/baidu/mobstat/cf;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e2"

    iget-wide v2, p0, Lcom/baidu/mobstat/cf;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pc"

    iget v2, p0, Lcom/baidu/mobstat/cf;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/baidu/mobstat/cf;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mobstat/cf;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mobstat/cg;

    iget-wide v4, p0, Lcom/baidu/mobstat/cf;->a:J

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cg;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "StatSession.constructJSONObject() failed"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/cf;->a:J

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/cf;->f:I

    return v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/cf;->b:J

    return-void
.end method
