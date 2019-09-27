.class Lcom/baidu/mobstat/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic f:Lcom/baidu/mobstat/bm;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bm;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bq;->f:Lcom/baidu/mobstat/bm;

    iput-object p2, p0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bq;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mobstat/bq;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/bq;->d:Landroid/content/Context;

    iput-object p7, p0, Lcom/baidu/mobstat/bq;->e:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/bv;->d()V

    iget-object v1, v0, Lcom/baidu/mobstat/bq;->f:Lcom/baidu/mobstat/bm;

    iget-object v2, v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/mobstat/bq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mobstat/bm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mobstat/bq;->f:Lcom/baidu/mobstat/bm;

    iget-object v2, v2, Lcom/baidu/mobstat/bm;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/bs;

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventStat: event_id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with label["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/mobstat/bq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is not started or alread done."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/baidu/mobstat/bq;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/mobstat/bs;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/baidu/mobstat/bq;->f:Lcom/baidu/mobstat/bm;

    iget-object v3, v3, Lcom/baidu/mobstat/bm;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/baidu/mobstat/bq;->c:J

    iget-wide v5, v2, Lcom/baidu/mobstat/bs;->c:J

    sub-long v14, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v14, v3

    if-gtz v1, :cond_2

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v7, v0, Lcom/baidu/mobstat/bq;->f:Lcom/baidu/mobstat/bm;

    iget-object v8, v0, Lcom/baidu/mobstat/bq;->d:Landroid/content/Context;

    iget-object v9, v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/baidu/mobstat/bq;->b:Ljava/lang/String;

    const/4 v11, 0x1

    iget-wide v12, v2, Lcom/baidu/mobstat/bs;->c:J

    iget-object v1, v0, Lcom/baidu/mobstat/bq;->e:Lcom/baidu/mobstat/ExtraInfo;

    move-object/from16 v16, v1

    invoke-virtual/range {v7 .. v16}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;)V

    return-void

    :cond_3
    :goto_0
    const-string v1, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    return-void
.end method
