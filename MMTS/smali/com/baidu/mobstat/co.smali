.class Lcom/baidu/mobstat/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ch;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ch;JJJLandroid/content/Context;Landroid/support/a/a/a;Ljava/lang/Object;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/mobstat/co;->i:I

    iput-wide p2, p0, Lcom/baidu/mobstat/co;->b:J

    iput-wide p4, p0, Lcom/baidu/mobstat/co;->c:J

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mobstat/co;->d:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mobstat/co;->e:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mobstat/co;->f:Ljava/lang/ref/WeakReference;

    iput-wide p6, p0, Lcom/baidu/mobstat/co;->g:J

    iput p11, p0, Lcom/baidu/mobstat/co;->h:I

    iput p12, p0, Lcom/baidu/mobstat/co;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-wide v0, p0, Lcom/baidu/mobstat/co;->c:J

    iget-wide v2, p0, Lcom/baidu/mobstat/co;->b:J

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ch;->c()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v4, v0

    const/4 v0, 0x1

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/baidu/mobstat/co;->b:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    iget-object v1, p0, Lcom/baidu/mobstat/co;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/co;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/a/a/a;

    iget-object v3, p0, Lcom/baidu/mobstat/co;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_6

    :cond_1
    iget-object v4, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v4}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v4

    iget-wide v5, p0, Lcom/baidu/mobstat/co;->b:J

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mobstat/cf;->d(J)V

    iget-object v4, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v4}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/cf;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/mobstat/co;->i:I

    if-ne v5, v0, :cond_2

    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/baidu/mobstat/co;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Landroid/support/a/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/co;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-static {v3}, Lcom/baidu/mobstat/ch;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v4

    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ch;->e()V

    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    iget-wide v2, p0, Lcom/baidu/mobstat/co;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ch;->a(J)V

    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    iget v2, p0, Lcom/baidu/mobstat/co;->h:I

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/ch;->c(I)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;)V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    iget-wide v0, p0, Lcom/baidu/mobstat/co;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/baidu/mobstat/co;->a:Lcom/baidu/mobstat/ch;

    iget v1, p0, Lcom/baidu/mobstat/co;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ch;->c(I)V

    :cond_6
    return-void
.end method
