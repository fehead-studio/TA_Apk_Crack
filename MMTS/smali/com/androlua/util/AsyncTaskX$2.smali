.class Lcom/androlua/util/AsyncTaskX$2;
.super Lcom/androlua/util/AsyncTaskX$WorkerRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/util/AsyncTaskX;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/util/AsyncTaskX;


# direct methods
.method constructor <init>(Lcom/androlua/util/AsyncTaskX;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX$WorkerRunnable;-><init>(Lcom/androlua/util/AsyncTaskX$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-static {v0}, Lcom/androlua/util/AsyncTaskX;->a(Lcom/androlua/util/AsyncTaskX;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    iget-object v3, p0, Lcom/androlua/util/AsyncTaskX$2;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/androlua/util/AsyncTaskX;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-static {v1, v0}, Lcom/androlua/util/AsyncTaskX;->a(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-static {v3}, Lcom/androlua/util/AsyncTaskX;->b(Lcom/androlua/util/AsyncTaskX;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX$2;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-static {v0, v2}, Lcom/androlua/util/AsyncTaskX;->a(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
