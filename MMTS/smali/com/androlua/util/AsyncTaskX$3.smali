.class Lcom/androlua/util/AsyncTaskX$3;
.super Ljava/util/concurrent/FutureTask;


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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/util/AsyncTaskX;


# direct methods
.method constructor <init>(Lcom/androlua/util/AsyncTaskX;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/AsyncTaskX$3;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX$3;->a:Lcom/androlua/util/AsyncTaskX;

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/util/AsyncTaskX;->b(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/androlua/util/AsyncTaskX$3;->a:Lcom/androlua/util/AsyncTaskX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/util/AsyncTaskX;->b(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    const-string v1, "AsyncTaskX"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
