.class final Lcom/androlua/util/TimerX$FinalizerHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/TimerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizerHelper"
.end annotation


# instance fields
.field private final a:Lcom/androlua/util/TimerX$TimerImpl;


# direct methods
.method constructor <init>(Lcom/androlua/util/TimerX$TimerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/util/TimerX$FinalizerHelper;->a:Lcom/androlua/util/TimerX$TimerImpl;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/util/TimerX$FinalizerHelper;->a:Lcom/androlua/util/TimerX$TimerImpl;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/androlua/util/TimerX$FinalizerHelper;->a:Lcom/androlua/util/TimerX$TimerImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/androlua/util/TimerX$TimerImpl;->a(Lcom/androlua/util/TimerX$TimerImpl;Z)Z

    iget-object v1, p0, Lcom/androlua/util/TimerX$FinalizerHelper;->a:Lcom/androlua/util/TimerX$TimerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
