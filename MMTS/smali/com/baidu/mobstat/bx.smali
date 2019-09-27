.class Lcom/baidu/mobstat/bx;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bv;


# direct methods
.method private constructor <init>(Lcom/baidu/mobstat/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/bv;Lcom/baidu/mobstat/bw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bx;-><init>(Lcom/baidu/mobstat/bv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bv;

    iget-object v1, p0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bv;

    invoke-static {v1}, Lcom/baidu/mobstat/bv;->a(Lcom/baidu/mobstat/bv;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bv;

    invoke-static {v1}, Lcom/baidu/mobstat/bv;->a(Lcom/baidu/mobstat/bv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;)V

    return-void
.end method
