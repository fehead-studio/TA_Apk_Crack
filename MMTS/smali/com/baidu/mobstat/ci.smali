.class Lcom/baidu/mobstat/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/baidu/mobstat/ch;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ch;J)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ci;->b:Lcom/baidu/mobstat/ch;

    iput-wide p2, p0, Lcom/baidu/mobstat/ci;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ci;->b:Lcom/baidu/mobstat/ch;

    iget-wide v1, p0, Lcom/baidu/mobstat/ci;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ch;->a(J)V

    return-void
.end method
