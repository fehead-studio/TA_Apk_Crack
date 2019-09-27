.class public Lcom/androlua/Ticker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Ticker$OnTickListener;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/androlua/Ticker$OnTickListener;

.field private c:Ljava/lang/Thread;

.field private d:J

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/androlua/Ticker;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/Ticker;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/Ticker;->f:Z

    invoke-direct {p0}, Lcom/androlua/Ticker;->a()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/Ticker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/androlua/Ticker;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/androlua/Ticker;)Lcom/androlua/Ticker$OnTickListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Ticker;->b:Lcom/androlua/Ticker$OnTickListener;

    return-object p0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/androlua/Ticker$1;

    invoke-direct {v0, p0}, Lcom/androlua/Ticker$1;-><init>(Lcom/androlua/Ticker;)V

    iput-object v0, p0, Lcom/androlua/Ticker;->a:Landroid/os/Handler;

    new-instance v0, Lcom/androlua/Ticker$2;

    invoke-direct {v0, p0}, Lcom/androlua/Ticker$2;-><init>(Lcom/androlua/Ticker;)V

    iput-object v0, p0, Lcom/androlua/Ticker;->c:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/androlua/Ticker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/Ticker;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/androlua/Ticker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/Ticker;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/androlua/Ticker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/Ticker;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/androlua/Ticker;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Ticker;->h:J

    return-wide v0
.end method

.method static synthetic e(Lcom/androlua/Ticker;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Ticker;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/androlua/Ticker;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Ticker;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/androlua/Ticker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Ticker;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/Ticker;->e:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Ticker;->d:J

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Ticker;->d:J

    return-wide v0
.end method

.method public isRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/Ticker;->f:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/androlua/Ticker;->e:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androlua/Ticker;->g:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/androlua/Ticker;->h:J

    :cond_0
    return-void
.end method

.method public setInterval(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androlua/Ticker;->g:J

    iput-wide p1, p0, Lcom/androlua/Ticker;->d:J

    return-void
.end method

.method public setOnTickListener(Lcom/androlua/Ticker$OnTickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Ticker;->b:Lcom/androlua/Ticker$OnTickListener;

    return-void
.end method

.method public setPeriod(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androlua/Ticker;->g:J

    iput-wide p1, p0, Lcom/androlua/Ticker;->d:J

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/Ticker;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/Ticker;->f:Z

    return-void
.end method
