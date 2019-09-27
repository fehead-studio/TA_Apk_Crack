.class final Lcom/androlua/util/TimerX$TimerImpl;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/TimerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;-><init>(Lcom/androlua/util/TimerX$1;)V

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/androlua/util/TimerX$TimerImpl;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/androlua/util/TimerX$TimerImpl;->start()V

    return-void
.end method

.method private a(Lcom/androlua/util/TimerTaskX;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0, p1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->insert(Lcom/androlua/util/TimerTaskX;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl;Lcom/androlua/util/TimerTaskX;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl;->a(Lcom/androlua/util/TimerTaskX;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/util/TimerX$TimerImpl;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/util/TimerX$TimerImpl;->b:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->a:Z

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->reset()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .locals 2

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-static {v0, v1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;I)I

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->deleteIfCancelled()V

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-static {v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->a:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->b:Z

    if-eqz v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :catch_0
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v2}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->minimum()Lcom/androlua/util/TimerTaskX;

    move-result-object v2

    iget-object v3, v2, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-boolean v4, v2, Lcom/androlua/util/TimerTaskX;->c:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v0, v5}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->delete(I)V

    monitor-exit v3

    goto :goto_1

    :cond_4
    iget-wide v6, v2, Lcom/androlua/util/TimerTaskX;->d:J

    const/4 v4, 0x0

    sub-long v8, v6, v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v0, 0x0

    cmp-long v3, v8, v0

    if-lez v3, :cond_5

    :try_start_4
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :cond_5
    :try_start_5
    iget-object v3, v2, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v4}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->minimum()Lcom/androlua/util/TimerTaskX;

    move-result-object v4

    iget-wide v6, v4, Lcom/androlua/util/TimerTaskX;->d:J

    iget-wide v8, v2, Lcom/androlua/util/TimerTaskX;->d:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-static {v4, v2}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I

    move-result v5

    :cond_6
    iget-boolean v4, v2, Lcom/androlua/util/TimerTaskX;->c:Z

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-static {v1, v2}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->delete(I)V

    monitor-exit v3

    goto :goto_1

    :cond_7
    iget-wide v6, v2, Lcom/androlua/util/TimerTaskX;->d:J

    invoke-virtual {v2, v6, v7}, Lcom/androlua/util/TimerTaskX;->setScheduledTime(J)V

    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl;->c:Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;

    invoke-virtual {v4, v5}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->delete(I)V

    iget-wide v4, v2, Lcom/androlua/util/TimerTaskX;->e:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_9

    iget-boolean v0, v2, Lcom/androlua/util/TimerTaskX;->f:Z

    if-eqz v0, :cond_8

    iget-wide v0, v2, Lcom/androlua/util/TimerTaskX;->d:J

    iget-wide v4, v2, Lcom/androlua/util/TimerTaskX;->e:J

    const/4 v6, 0x0

    add-long v6, v0, v4

    iput-wide v6, v2, Lcom/androlua/util/TimerTaskX;->d:J

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/androlua/util/TimerTaskX;->e:J

    const/4 v6, 0x0

    add-long v6, v0, v4

    iput-wide v6, v2, Lcom/androlua/util/TimerTaskX;->d:J

    :goto_2
    invoke-direct {p0, v2}, Lcom/androlua/util/TimerX$TimerImpl;->a(Lcom/androlua/util/TimerTaskX;)V

    goto :goto_3

    :cond_9
    iput-wide v0, v2, Lcom/androlua/util/TimerTaskX;->d:J

    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v2}, Lcom/androlua/util/TimerTaskX;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/androlua/util/TimerTaskX;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/androlua/util/TimerX$TimerImpl;->a:Z

    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :goto_4
    throw v0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method
