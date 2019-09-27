.class Lcom/baidu/mobstat/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/mobstat/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/g;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/h;->a:Lcom/baidu/mobstat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/i;Lcom/baidu/mobstat/i;)I
    .locals 2

    iget v0, p2, Lcom/baidu/mobstat/i;->b:I

    iget v1, p1, Lcom/baidu/mobstat/i;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-boolean v1, p1, Lcom/baidu/mobstat/i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Lcom/baidu/mobstat/i;->d:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p1, Lcom/baidu/mobstat/i;->d:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-boolean p1, p2, Lcom/baidu/mobstat/i;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/mobstat/i;

    check-cast p2, Lcom/baidu/mobstat/i;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/h;->a(Lcom/baidu/mobstat/i;Lcom/baidu/mobstat/i;)I

    move-result p1

    return p1
.end method
