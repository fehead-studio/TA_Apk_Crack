.class public Lcom/androlua/LuaAsyncTask;
.super Lcom/androlua/util/AsyncTaskX;

# interfaces
.implements Lcom/androlua/LuaGcable;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Z

.field private c:Lcom/luajava/LuaState;

.field private d:Lcom/androlua/LuaContext;

.field private e:[B

.field private f:J

.field private g:Lcom/luajava/LuaObject;

.field private h:Lcom/luajava/LuaObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/androlua/util/AsyncTaskX;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/androlua/util/AsyncTaskX;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;JLcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    iput-wide p2, p0, Lcom/androlua/LuaAsyncTask;->f:J

    iput-object p4, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->dump()[B

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->e:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    const-string p2, "luajava"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const-string p2, "imported"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->asArray()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->a:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->dump()[B

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->e:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->h:Lcom/luajava/LuaObject;

    iput-object p4, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->e:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "error error"

    return-object p1

    :pswitch_1
    const-string p1, "GC error"

    return-object p1

    :pswitch_2
    const-string p1, "Out of memory"

    return-object p1

    :pswitch_3
    const-string p1, "Syntax error"

    return-object p1

    :pswitch_4
    const-string p1, "Runtime error"

    return-object p1

    :pswitch_5
    const-string p1, "Yield error"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/androlua/LuaAsyncTask;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1

    :cond_0
    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    instance-of v0, v0, Lcom/androlua/LuaActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v1, "activity"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    instance-of v0, v0, Lcom/androlua/LuaService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v1, "service"

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushContext(Lcom/androlua/LuaContext;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    :try_start_1
    new-instance v0, Lcom/androlua/LuaPrint;

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    iget-object v4, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-direct {v0, v3, v4}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    const-string v3, "print"

    invoke-virtual {v0, v3}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaAsyncTask$1;

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v3}, Lcom/androlua/LuaAsyncTask$1;-><init>(Lcom/androlua/LuaAsyncTask;Lcom/luajava/LuaState;)V

    const-string v3, "update"

    invoke-virtual {v0, v3}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v3, "package"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-interface {v3}, Lcom/androlua/LuaContext;->getLuaLpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    invoke-interface {v3}, Lcom/androlua/LuaContext;->getLuaCpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v3, "cpath"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    const-string v4, "AsyncTask"

    invoke-interface {v3, v4, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v4, "require"

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    :try_start_2
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "import"

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v4, "import"

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    iget-object v4, p0, Lcom/androlua/LuaAsyncTask;->a:[Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-virtual {v0, v8}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_2
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    iget-object v4, p0, Lcom/androlua/LuaAsyncTask;->e:[B

    const-string v5, "LuaAsyncTask"

    invoke-virtual {v0, v4, v5}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v5, "debug"

    invoke-virtual {v0, v5}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const-string v5, "traceback"

    invoke-virtual {v0, v4, v5}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->insert(I)V

    array-length v0, p1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v4, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    new-array v0, p1, [Ljava/lang/Object;

    :goto_5
    if-ge v3, p1, :cond_5

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-object v0

    :cond_6
    new-instance p1, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaAsyncTask;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    const-string v1, "doInBackground"

    invoke-interface {v0, v1, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->g:Lcom/luajava/LuaObject;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    const-string v1, "onPostExecute"

    invoke-interface {v0, v1, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaAsyncTask;->c:Lcom/luajava/LuaState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/luajava/LuaState;->gc(II)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected b([Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->h:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->h:Lcom/luajava/LuaObject;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->d:Lcom/androlua/LuaContext;

    const-string v2, "onProgressUpdate"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, v0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public gc()V
    .locals 3

    invoke-virtual {p0}, Lcom/androlua/LuaAsyncTask;->getStatus()Lcom/androlua/util/AsyncTaskX$Status;

    move-result-object v0

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/androlua/LuaAsyncTask;->cancel(Z)Z

    :cond_0
    iput-boolean v2, p0, Lcom/androlua/LuaAsyncTask;->b:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaAsyncTask;->b:Z

    return v0
.end method

.method public update(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAsyncTask;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAsyncTask;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAsyncTask;->c([Ljava/lang/Object;)V

    return-void
.end method
