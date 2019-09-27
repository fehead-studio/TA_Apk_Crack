.class Lcom/baidu/mobstat/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobstat/l;


# instance fields
.field private a:Lcom/baidu/mobstat/ba;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mobstat/ba;->a:Lcom/baidu/mobstat/ba;

    iput-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ba;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
