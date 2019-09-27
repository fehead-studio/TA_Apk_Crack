.class final enum Lcom/baidu/mobstat/ar;
.super Lcom/baidu/mobstat/ao;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/ao;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/ap;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Lcom/baidu/mobstat/l;

    move-result-object p1

    new-instance v1, Lcom/baidu/mobstat/be;

    invoke-direct {v1}, Lcom/baidu/mobstat/be;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/mobstat/be;->a:Z

    const-string v3, "R"

    iput-object v3, v1, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/baidu/mobstat/be;->c:Z

    invoke-virtual {v1}, Lcom/baidu/mobstat/be;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method
