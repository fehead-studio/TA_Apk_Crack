.class Lcom/baidu/mobstat/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ch;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ck;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bv;->d()V

    return-void
.end method
