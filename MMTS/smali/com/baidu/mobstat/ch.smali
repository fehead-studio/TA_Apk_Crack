.class Lcom/baidu/mobstat/ch;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/baidu/mobstat/ch;

.field private static n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/cl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/baidu/mobstat/cm;

.field private c:Lcom/baidu/mobstat/cm;

.field private d:Lcom/baidu/mobstat/cm;

.field private e:Lcom/baidu/mobstat/cm;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lcom/baidu/mobstat/cf;

.field private j:I

.field private volatile k:I

.field private volatile l:J

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Lcom/baidu/mobstat/ch;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ch;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/cm;

    invoke-direct {v0}, Lcom/baidu/mobstat/cm;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    new-instance v0, Lcom/baidu/mobstat/cm;

    invoke-direct {v0}, Lcom/baidu/mobstat/cm;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    new-instance v0, Lcom/baidu/mobstat/cm;

    invoke-direct {v0}, Lcom/baidu/mobstat/cm;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    new-instance v0, Lcom/baidu/mobstat/cm;

    invoke-direct {v0}, Lcom/baidu/mobstat/cm;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/ch;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ch;->g:Z

    new-instance v0, Lcom/baidu/mobstat/cf;

    invoke-direct {v0}, Lcom/baidu/mobstat/cf;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/ch;->j:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/content/Context;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getActivity"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    return-object p0
.end method

.method public static a()Lcom/baidu/mobstat/ch;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ch;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ch;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "page Object is null"

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/baidu/mobstat/cl;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/cl;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/ch;->g:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/mobstat/cl;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ch;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/cl;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/baidu/mobstat/ch;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__local_last_session.json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "pageName is null"

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/mobstat/ch;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/ch;->g:Z

    return v0
.end method

.method private i()I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Fragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v2, "android.support.a.a.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v2, v0

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    const/4 v6, 0x2

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "onResume"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_4

    :cond_0
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-object v5, v0

    :goto_3
    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    const-class v7, Landroid/app/Activity;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    return v6

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v6

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v6

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x3

    return v6
.end method

.method private j()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mobstat/ch;->h()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ch;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/ck;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ck;-><init>(Lcom/baidu/mobstat/ch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/baidu/mobstat/ch;->j:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/cf;->a(J)V

    return-void
.end method

.method public a(Landroid/app/Fragment;J)V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object v13, p0

    const-string v0, "post resume job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    iget-boolean v0, v0, Lcom/baidu/mobstat/cm;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v13, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mobstat/cm;->c:Z

    invoke-direct {v13}, Lcom/baidu/mobstat/ch;->j()V

    new-instance v14, Lcom/baidu/mobstat/co;

    iget-wide v2, v13, Lcom/baidu/mobstat/ch;->f:J

    iget-wide v6, v13, Lcom/baidu/mobstat/ch;->l:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    move-object v0, v14

    move-object v1, v13

    move-wide/from16 v4, p2

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/co;-><init>(Lcom/baidu/mobstat/ch;JJJLandroid/content/Context;Landroid/support/a/a/a;Ljava/lang/Object;II)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/cm;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "clearLastSession context is null, invalid"

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dc;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__local_last_session.json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->l:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/mobstat/ci;

    invoke-direct {p1, p0, p2, p3}, Lcom/baidu/mobstat/ci;-><init>(Lcom/baidu/mobstat/ch;J)V

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-wide p2, p0, Lcom/baidu/mobstat/ch;->l:J

    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 20

    move-object/from16 v13, p0

    move-wide/from16 v14, p2

    const-string v0, "AnalysisPageStart"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u4e3a null"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Lcom/baidu/mobstat/ch;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cl;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "get page info, PageInfo null"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/baidu/mobstat/cl;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/baidu/mobstat/cl;->b:Z

    iput-wide v14, v0, Lcom/baidu/mobstat/cl;->c:J

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/ch;->j()V

    iget-boolean v0, v13, Lcom/baidu/mobstat/ch;->h:Z

    if-nez v0, :cond_3

    new-instance v11, Lcom/baidu/mobstat/co;

    iget-wide v2, v13, Lcom/baidu/mobstat/ch;->f:J

    iget-wide v6, v13, Lcom/baidu/mobstat/ch;->l:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/ch;->i()I

    move-result v16

    const/16 v17, 0x1

    move-object v0, v11

    move-object v1, v13

    move-wide v4, v14

    move-object/from16 v8, p1

    move-object/from16 v18, v11

    move/from16 v11, v16

    const/4 v14, 0x1

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/co;-><init>(Lcom/baidu/mobstat/ch;JJJLandroid/content/Context;Landroid/support/a/a/a;Ljava/lang/Object;II)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v14, v13, Lcom/baidu/mobstat/ch;->h:Z

    :cond_3
    iget-object v0, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/cm;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 23

    move-object/from16 v15, p0

    move-wide/from16 v13, p2

    move-object/from16 v12, p5

    const-string v0, "post pause job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/baidu/mobstat/ch;->h:Z

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u65e0\u6548\u503c"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {v15, v12}, Lcom/baidu/mobstat/ch;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cl;

    move-result-object v11

    if-nez v11, :cond_1

    const-string v0, "get page info, PageInfo null"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, v11, Lcom/baidu/mobstat/cl;->b:Z

    if-nez v1, :cond_2

    const-string v0, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-boolean v0, v11, Lcom/baidu/mobstat/cl;->b:Z

    iput-wide v13, v11, Lcom/baidu/mobstat/cl;->d:J

    new-instance v10, Lcom/baidu/mobstat/cn;

    const/4 v5, 0x0

    iget-wide v6, v11, Lcom/baidu/mobstat/cl;->c:J

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iget-object v0, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v10

    move-object v1, v15

    move-wide v2, v13

    move-object/from16 v4, p1

    move-object/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v21, v11

    move-object v11, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, p4

    move/from16 v15, v19

    move-object/from16 v16, p6

    move-object/from16 v17, v21

    invoke-direct/range {v0 .. v17}, Lcom/baidu/mobstat/cn;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ch;->c(Ljava/lang/String;)V

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/ch;->f:J

    return-void
.end method

.method public a(Landroid/content/Context;JZ)V
    .locals 20

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v11, p2

    const/4 v15, 0x1

    if-eqz p4, :cond_0

    iget-object v1, v13, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    iput-boolean v15, v1, Lcom/baidu/mobstat/cm;->c:Z

    iget-object v1, v13, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    iget-object v1, v13, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    iput-wide v11, v1, Lcom/baidu/mobstat/cm;->a:J

    :cond_0
    const-string v1, "AnalysisResume job"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    if-nez p4, :cond_1

    iget-object v1, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iget-boolean v1, v1, Lcom/baidu/mobstat/cm;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_1
    if-nez p4, :cond_2

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iput-boolean v15, v0, Lcom/baidu/mobstat/cm;->c:Z

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mobstat/ch;->j()V

    iget-boolean v0, v13, Lcom/baidu/mobstat/ch;->h:Z

    if-nez v0, :cond_3

    new-instance v10, Lcom/baidu/mobstat/co;

    iget-wide v2, v13, Lcom/baidu/mobstat/ch;->f:J

    iget-wide v6, v13, Lcom/baidu/mobstat/ch;->l:J

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v0, v10

    move-object v1, v13

    move-wide v4, v11

    move-object v8, v14

    move-object v15, v10

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/co;-><init>(Lcom/baidu/mobstat/ch;JJJLandroid/content/Context;Landroid/support/a/a/a;Ljava/lang/Object;II)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/baidu/mobstat/ch;->h:Z

    :cond_3
    iget-object v0, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/cm;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;JZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 24

    move-object/from16 v15, p0

    move-wide/from16 v13, p2

    const-string v0, "post pause job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/baidu/mobstat/ch;->h:Z

    if-eqz p4, :cond_0

    iget-object v1, v15, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    iput-boolean v0, v1, Lcom/baidu/mobstat/cm;->c:Z

    new-instance v12, Lcom/baidu/mobstat/cn;

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    iget-wide v6, v0, Lcom/baidu/mobstat/cm;->a:J

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->e:Lcom/baidu/mobstat/cm;

    iget-object v0, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v12

    move-object v1, v15

    move-wide v2, v13

    move-object/from16 v4, p1

    move-object/from16 v21, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v20

    invoke-direct/range {v0 .. v17}, Lcom/baidu/mobstat/cn;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v13, p2

    iput-wide v13, v15, Lcom/baidu/mobstat/ch;->f:J

    return-void

    :cond_0
    iget-object v1, v15, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iget-boolean v1, v1, Lcom/baidu/mobstat/cm;->c:Z

    if-nez v1, :cond_1

    const-string v0, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v15, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iput-boolean v0, v1, Lcom/baidu/mobstat/cm;->c:Z

    new-instance v12, Lcom/baidu/mobstat/cn;

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iget-wide v6, v0, Lcom/baidu/mobstat/cm;->a:J

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->b:Lcom/baidu/mobstat/cm;

    iget-object v0, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v12

    move-object v1, v15

    move-wide v2, v13

    move-object/from16 v4, p1

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v20

    invoke-direct/range {v0 .. v17}, Lcom/baidu/mobstat/cn;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/ch;->f:J

    return-void
.end method

.method public a(Landroid/support/a/a/a;J)V
    .locals 15

    move-object v13, p0

    const-string v0, "post resume job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    iget-boolean v0, v0, Lcom/baidu/mobstat/cm;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v13, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mobstat/cm;->c:Z

    invoke-direct {v13}, Lcom/baidu/mobstat/ch;->j()V

    new-instance v14, Lcom/baidu/mobstat/co;

    iget-wide v2, v13, Lcom/baidu/mobstat/ch;->f:J

    iget-wide v6, v13, Lcom/baidu/mobstat/ch;->l:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x2

    move-object v0, v14

    move-object v1, v13

    move-wide/from16 v4, p2

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/co;-><init>(Lcom/baidu/mobstat/ch;JJJLandroid/content/Context;Landroid/support/a/a/a;Ljava/lang/Object;II)V

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    iget-object v0, v13, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/cm;->a:J

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/ch;->k:I

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->b(I)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/cf;->b(J)V

    return-void
.end method

.method public b(Landroid/app/Fragment;J)V
    .locals 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v15, p0

    const-string v0, "post pause job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    iget-boolean v0, v0, Lcom/baidu/mobstat/cm;->c:Z

    if-nez v0, :cond_0

    const-string v0, "\u9057\u6f0fandroid.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v15, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/mobstat/cm;->c:Z

    new-instance v14, Lcom/baidu/mobstat/cn;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    iget-wide v6, v0, Lcom/baidu/mobstat/cm;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->d:Lcom/baidu/mobstat/cm;

    iget-object v0, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v14

    move-object v1, v15

    move-wide/from16 v2, p2

    move-object/from16 v13, p1

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v0 .. v17}, Lcom/baidu/mobstat/cn;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/ch;->f:J

    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/cj;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/baidu/mobstat/cj;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;)V

    iget-object p1, p0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/support/a/a/a;J)V
    .locals 22

    move-object/from16 v15, p0

    const-string v0, "post pause job"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    iget-boolean v0, v0, Lcom/baidu/mobstat/cm;->c:Z

    if-nez v0, :cond_0

    const-string v0, "\u9057\u6f0fandroid.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v15, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/mobstat/cm;->c:Z

    new-instance v14, Lcom/baidu/mobstat/cn;

    const/4 v4, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    iget-wide v6, v0, Lcom/baidu/mobstat/cm;->a:J

    const/4 v8, 0x0

    iget-object v0, v15, Lcom/baidu/mobstat/ch;->c:Lcom/baidu/mobstat/cm;

    iget-object v0, v0, Lcom/baidu/mobstat/cm;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/support/a/a/a;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v14

    move-object v1, v15

    move-wide/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v0 .. v17}, Lcom/baidu/mobstat/cn;-><init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/ch;->m:Landroid/os/Handler;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/ch;->f:J

    return-void
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/baidu/mobstat/ch;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/ch;->j:I

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/ch;->j:I

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->a(I)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mobstat/ch;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ch;->b(I)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->a()V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->d()I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->i:Lcom/baidu/mobstat/cf;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cf;->b()J

    move-result-wide v0

    return-wide v0
.end method
