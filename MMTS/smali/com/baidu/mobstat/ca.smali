.class Lcom/baidu/mobstat/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bz;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ca;->a:Lcom/baidu/mobstat/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->a:Lcom/baidu/mobstat/bz;

    iget-object v0, v0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/by;

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->a:Lcom/baidu/mobstat/bz;

    iget-object v1, v1, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;Landroid/content/Context;)V

    return-void
.end method
