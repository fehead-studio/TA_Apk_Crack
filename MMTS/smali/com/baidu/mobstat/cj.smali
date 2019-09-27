.class Lcom/baidu/mobstat/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mobstat/ch;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/cj;->c:Lcom/baidu/mobstat/ch;

    iput-wide p2, p0, Lcom/baidu/mobstat/cj;->a:J

    iput-object p4, p0, Lcom/baidu/mobstat/cj;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/cj;->c:Lcom/baidu/mobstat/ch;

    iget-wide v1, p0, Lcom/baidu/mobstat/cj;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ch;->b(J)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/cj;->c:Lcom/baidu/mobstat/ch;

    iget-object v1, p0, Lcom/baidu/mobstat/cj;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
