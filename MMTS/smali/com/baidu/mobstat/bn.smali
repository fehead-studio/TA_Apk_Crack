.class Lcom/baidu/mobstat/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Lcom/baidu/mobstat/bm;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bn;->j:Lcom/baidu/mobstat/bm;

    iput-object p2, p0, Lcom/baidu/mobstat/bn;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bn;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bn;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bn;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bn;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/bn;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mobstat/bn;->g:Ljava/lang/String;

    iput p10, p0, Lcom/baidu/mobstat/bn;->h:I

    iput-boolean p11, p0, Lcom/baidu/mobstat/bn;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bv;->d()V

    iget-object v1, p0, Lcom/baidu/mobstat/bn;->j:Lcom/baidu/mobstat/bm;

    iget-object v2, p0, Lcom/baidu/mobstat/bn;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/bn;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/bn;->c:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/mobstat/bn;->d:I

    iget-wide v6, p0, Lcom/baidu/mobstat/bn;->e:J

    iget-object v10, p0, Lcom/baidu/mobstat/bn;->f:Ljava/lang/String;

    iget-object v11, p0, Lcom/baidu/mobstat/bn;->g:Ljava/lang/String;

    iget v12, p0, Lcom/baidu/mobstat/bn;->h:I

    iget-boolean v13, p0, Lcom/baidu/mobstat/bn;->i:Z

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
