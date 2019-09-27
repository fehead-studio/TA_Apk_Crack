.class public abstract Lcom/androlua/util/AsyncTaskX;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;,
        Lcom/androlua/util/AsyncTaskX$WorkerRunnable;,
        Lcom/androlua/util/AsyncTaskX$InternalHandler;,
        Lcom/androlua/util/AsyncTaskX$Status;,
        Lcom/androlua/util/AsyncTaskX$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final a:I

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Ljava/util/concurrent/Executor;

.field private static e:Lcom/androlua/util/AsyncTaskX$InternalHandler;


# instance fields
.field private final f:Lcom/androlua/util/AsyncTaskX$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androlua/util/AsyncTaskX$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/androlua/util/AsyncTaskX$Status;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/androlua/util/AsyncTaskX;->a:I

    new-instance v0, Lcom/androlua/util/AsyncTaskX$1;

    invoke-direct {v0}, Lcom/androlua/util/AsyncTaskX$1;-><init>()V

    sput-object v0, Lcom/androlua/util/AsyncTaskX;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/androlua/util/AsyncTaskX;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/androlua/util/AsyncTaskX;->b:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x2

    const/16 v4, 0x80

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/androlua/util/AsyncTaskX$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androlua/util/AsyncTaskX$SerialExecutor;-><init>(Lcom/androlua/util/AsyncTaskX$1;)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/androlua/util/AsyncTaskX;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/androlua/util/AsyncTaskX;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Lcom/androlua/util/AsyncTaskX;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/androlua/util/AsyncTaskX$Status;->PENDING:Lcom/androlua/util/AsyncTaskX$Status;

    iput-object v0, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/androlua/util/AsyncTaskX;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/androlua/util/AsyncTaskX;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/androlua/util/AsyncTaskX;->c()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/androlua/util/AsyncTaskX;->k:Landroid/os/Handler;

    new-instance p1, Lcom/androlua/util/AsyncTaskX$2;

    invoke-direct {p1, p0}, Lcom/androlua/util/AsyncTaskX$2;-><init>(Lcom/androlua/util/AsyncTaskX;)V

    iput-object p1, p0, Lcom/androlua/util/AsyncTaskX;->f:Lcom/androlua/util/AsyncTaskX$WorkerRunnable;

    new-instance p1, Lcom/androlua/util/AsyncTaskX$3;

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->f:Lcom/androlua/util/AsyncTaskX$WorkerRunnable;

    invoke-direct {p1, p0, v0}, Lcom/androlua/util/AsyncTaskX$3;-><init>(Lcom/androlua/util/AsyncTaskX;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/androlua/util/AsyncTaskX;->g:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/androlua/util/AsyncTaskX;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/androlua/util/AsyncTaskX;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/util/AsyncTaskX;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/androlua/util/AsyncTaskX;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private static c()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/androlua/util/AsyncTaskX;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/androlua/util/AsyncTaskX;->e:Lcom/androlua/util/AsyncTaskX$InternalHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/androlua/util/AsyncTaskX$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/androlua/util/AsyncTaskX$InternalHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/androlua/util/AsyncTaskX;->e:Lcom/androlua/util/AsyncTaskX$InternalHandler;

    :cond_0
    sget-object v1, Lcom/androlua/util/AsyncTaskX;->e:Lcom/androlua/util/AsyncTaskX$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/androlua/util/AsyncTaskX;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;-><init>(Lcom/androlua/util/AsyncTaskX;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/util/AsyncTaskX;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/androlua/util/AsyncTaskX;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/androlua/util/AsyncTaskX$Status;->FINISHED:Lcom/androlua/util/AsyncTaskX$Status;

    iput-object p1, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/androlua/util/AsyncTaskX;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lcom/androlua/util/AsyncTaskX;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->b()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs c([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;->d()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;-><init>(Lcom/androlua/util/AsyncTaskX;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/androlua/util/AsyncTaskX<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/androlua/util/AsyncTaskX;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/androlua/util/AsyncTaskX;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/androlua/util/AsyncTaskX<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->PENDING:Lcom/androlua/util/AsyncTaskX$Status;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/androlua/util/AsyncTaskX$4;->a:[I

    iget-object v1, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    invoke-virtual {v1}, Lcom/androlua/util/AsyncTaskX$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    sget-object v0, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    iput-object v0, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->a()V

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->f:Lcom/androlua/util/AsyncTaskX$WorkerRunnable;

    iput-object p2, v0, Lcom/androlua/util/AsyncTaskX$WorkerRunnable;->b:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/androlua/util/AsyncTaskX;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/androlua/util/AsyncTaskX$Status;
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->h:Lcom/androlua/util/AsyncTaskX$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
