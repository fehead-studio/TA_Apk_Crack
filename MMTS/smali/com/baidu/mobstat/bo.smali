.class Lcom/baidu/mobstat/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic g:Lcom/baidu/mobstat/bm;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bo;->g:Lcom/baidu/mobstat/bm;

    iput-object p2, p0, Lcom/baidu/mobstat/bo;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bo;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bo;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bo;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bo;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/bo;->f:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bv;->d()V

    iget-object v1, p0, Lcom/baidu/mobstat/bo;->g:Lcom/baidu/mobstat/bm;

    iget-object v2, p0, Lcom/baidu/mobstat/bo;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/bo;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/bo;->c:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/mobstat/bo;->d:I

    iget-wide v6, p0, Lcom/baidu/mobstat/bo;->e:J

    iget-object v10, p0, Lcom/baidu/mobstat/bo;->f:Lcom/baidu/mobstat/ExtraInfo;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method
