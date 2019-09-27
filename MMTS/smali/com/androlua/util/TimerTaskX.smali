.class public abstract Lcom/androlua/util/TimerTaskX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field final b:Ljava/lang/Object;

.field c:Z

.field d:J

.field e:J

.field f:Z

.field private g:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 6

    iget-object v0, p0, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/androlua/util/TimerTaskX;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p0, Lcom/androlua/util/TimerTaskX;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancel()Z
    .locals 7

    iget-object v0, p0, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/androlua/util/TimerTaskX;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-wide v3, p0, Lcom/androlua/util/TimerTaskX;->d:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/androlua/util/TimerTaskX;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/util/TimerTaskX;->e:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/util/TimerTaskX;->g:Z

    return v0
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 3

    iget-object v0, p0, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/androlua/util/TimerTaskX;->a:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/util/TimerTaskX;->g:Z

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/androlua/util/TimerTaskX;->e:J

    return-void
.end method

.method public setScheduledTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/androlua/util/TimerTaskX;->a:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
