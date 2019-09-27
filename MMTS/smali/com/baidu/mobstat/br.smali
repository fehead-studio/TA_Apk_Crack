.class Lcom/baidu/mobstat/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic f:Lcom/baidu/mobstat/bm;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bm;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/br;->f:Lcom/baidu/mobstat/bm;

    iput-wide p2, p0, Lcom/baidu/mobstat/br;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/br;->b:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/mobstat/br;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/br;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/mobstat/br;->e:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bv;->d()V

    iget-wide v0, p0, Lcom/baidu/mobstat/br;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/br;->f:Lcom/baidu/mobstat/bm;

    iget-object v2, p0, Lcom/baidu/mobstat/br;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/br;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/br;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/mobstat/br;->a:J

    iget-object v10, p0, Lcom/baidu/mobstat/br;->e:Lcom/baidu/mobstat/ExtraInfo;

    invoke-virtual/range {v1 .. v10}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method
