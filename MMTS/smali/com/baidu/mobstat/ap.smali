.class final enum Lcom/baidu/mobstat/ap;
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
    .locals 3

    invoke-static {p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Lcom/baidu/mobstat/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.baidu.bottom.service.BottomService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SDK_PRODUCT_LY"

    const-string v2, "MS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/Throwable;)V

    return-void
.end method
