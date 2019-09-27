.class Lcom/androlua/Ticker$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/Ticker;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/Ticker;


# direct methods
.method constructor <init>(Lcom/androlua/Ticker;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androlua/Ticker;->a(Lcom/androlua/Ticker;Z)Z

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v0}, Lcom/androlua/Ticker;->b(Lcom/androlua/Ticker;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v2}, Lcom/androlua/Ticker;->c(Lcom/androlua/Ticker;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    iget-object v3, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v3}, Lcom/androlua/Ticker;->d(Lcom/androlua/Ticker;)J

    move-result-wide v3

    sub-long v5, v0, v3

    invoke-static {v2, v5, v6}, Lcom/androlua/Ticker;->a(Lcom/androlua/Ticker;J)J

    :cond_0
    iget-object v2, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v2}, Lcom/androlua/Ticker;->e(Lcom/androlua/Ticker;)J

    move-result-wide v2

    sub-long v4, v0, v2

    iget-object v2, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v2}, Lcom/androlua/Ticker;->f(Lcom/androlua/Ticker;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    iget-object v2, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v2, v0, v1}, Lcom/androlua/Ticker;->a(Lcom/androlua/Ticker;J)J

    iget-object v0, p0, Lcom/androlua/Ticker$2;->a:Lcom/androlua/Ticker;

    invoke-static {v0}, Lcom/androlua/Ticker;->g(Lcom/androlua/Ticker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/androlua/Ticker$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method
