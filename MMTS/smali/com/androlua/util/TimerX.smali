.class public Lcom/androlua/util/TimerX;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/util/TimerX$FinalizerHelper;,
        Lcom/androlua/util/TimerX$TimerImpl;
    }
.end annotation


# static fields
.field private static a:J


# instance fields
.field private final b:Lcom/androlua/util/TimerX$TimerImpl;

.field private final c:Lcom/androlua/util/TimerX$FinalizerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/androlua/util/TimerX;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/androlua/util/TimerX;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/androlua/util/TimerX$TimerImpl;

    invoke-direct {v0, p1, p2}, Lcom/androlua/util/TimerX$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    new-instance p1, Lcom/androlua/util/TimerX$FinalizerHelper;

    iget-object p2, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-direct {p1, p2}, Lcom/androlua/util/TimerX$FinalizerHelper;-><init>(Lcom/androlua/util/TimerX$TimerImpl;)V

    iput-object p1, p0, Lcom/androlua/util/TimerX;->c:Lcom/androlua/util/TimerX$FinalizerHelper;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/androlua/util/TimerX;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/androlua/util/TimerX;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static declared-synchronized a()J
    .locals 7

    const-class v0, Lcom/androlua/util/TimerX;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/androlua/util/TimerX;->a:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/androlua/util/TimerX;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/androlua/util/TimerTaskX;JJZ)V
    .locals 5

    iget-object v0, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-static {v1}, Lcom/androlua/util/TimerX$TimerImpl;->a(Lcom/androlua/util/TimerX$TimerImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timer was canceled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    add-long v3, p2, v1

    const-wide/16 p2, 0x0

    cmp-long v1, v3, p2

    if-gez v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal delay to start the TimerTask: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p1, Lcom/androlua/util/TimerTaskX;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/androlua/util/TimerTaskX;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "TimerTask is scheduled already"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p3, p1, Lcom/androlua/util/TimerTaskX;->c:Z

    if-eqz p3, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "TimerTask is canceled"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-wide v3, p1, Lcom/androlua/util/TimerTaskX;->d:J

    iput-wide p4, p1, Lcom/androlua/util/TimerTaskX;->e:J

    iput-boolean p6, p1, Lcom/androlua/util/TimerTaskX;->f:Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-static {p2, p1}, Lcom/androlua/util/TimerX$TimerImpl;->a(Lcom/androlua/util/TimerX$TimerImpl;Lcom/androlua/util/TimerTaskX;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-virtual {v0}, Lcom/androlua/util/TimerX$TimerImpl;->cancel()V

    return-void
.end method

.method public purge()I
    .locals 2

    iget-object v0, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/util/TimerX;->b:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-virtual {v1}, Lcom/androlua/util/TimerX$TimerImpl;->purge()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public schedule(Lcom/androlua/util/TimerTaskX;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void
.end method

.method public schedule(Lcom/androlua/util/TimerTaskX;JJ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public schedule(Lcom/androlua/util/TimerTaskX;Ljava/util/Date;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    move-wide v10, v2

    goto :goto_0

    :cond_1
    move-wide v10, v6

    :goto_0
    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void
.end method

.method public schedule(Lcom/androlua/util/TimerTaskX;Ljava/util/Date;J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v2, v4

    cmp-long v2, v8, v0

    if-gez v2, :cond_1

    move-wide v4, v0

    goto :goto_0

    :cond_1
    move-wide v4, v8

    :goto_0
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public scheduleAtFixedRate(Lcom/androlua/util/TimerTaskX;JJ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public scheduleAtFixedRate(Lcom/androlua/util/TimerTaskX;Ljava/util/Date;J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v0, v2

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/androlua/util/TimerX;->a(Lcom/androlua/util/TimerTaskX;JJZ)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
