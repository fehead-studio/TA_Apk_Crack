.class Lcom/baidu/mobstat/bv;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/baidu/mobstat/bv;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/bv;

    invoke-direct {v0}, Lcom/baidu/mobstat/bv;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bv;->a:Lcom/baidu/mobstat/bv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bv;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/bv;->d:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/bv;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/bv;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mobstat/bv;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/baidu/mobstat/bv;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/bv;->a:Lcom/baidu/mobstat/bv;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/bv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/bv;->e:Z

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bv;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/bv;->e()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/bv;->c:Z

    :cond_1
    return-void
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/bx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/bx;-><init>(Lcom/baidu/mobstat/bv;Lcom/baidu/mobstat/bw;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bx;->setPriority(I)V

    invoke-virtual {v0}, Lcom/baidu/mobstat/bx;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bv;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bv;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/PrefOperate;->loadMetaDataConfig(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadStatData(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadLastSession(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/bv;->d:Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataAnalyzeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/bv;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/baidu/mobstat/bv;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/bv;->g:Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->g:Landroid/os/Handler;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/bv;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bw;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bw;-><init>(Lcom/baidu/mobstat/bv;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/bv;->e:Z

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->d:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
