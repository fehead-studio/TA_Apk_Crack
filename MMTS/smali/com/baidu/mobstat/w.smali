.class public Lcom/baidu/mobstat/w;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/mobstat/w;->a:J

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/w;->a:J

    iput-object p3, p0, Lcom/baidu/mobstat/w;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/w;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/w;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/w;->c:Ljava/lang/String;

    return-object v0
.end method
