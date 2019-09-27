.class public Lcom/androlua/LuaThread;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/androlua/LuaGcable;
.implements Lcom/luajava/LuaMetaTable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaThread$ThreadHandler;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/luajava/LuaState;

.field private c:Landroid/os/Handler;

.field private d:Lcom/androlua/LuaContext;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/Object;

.field private h:[B

.field public isRun:Z


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    :cond_0
    iput-boolean p3, p0, Lcom/androlua/LuaThread;->e:Z

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->dump()[B

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaThread;->h:[B

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaThread;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/androlua/LuaThread;->e:Z

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;Z[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaThread;)Lcom/androlua/LuaContext;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    return-object p0
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

.method private a()V
    .locals 3

    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    instance-of v0, v0, Lcom/androlua/LuaActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "activity"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    instance-of v0, v0, Lcom/androlua/LuaService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "service"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushContext(Lcom/androlua/LuaContext;)V

    new-instance v0, Lcom/androlua/LuaPrint;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    iget-object v2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-direct {v0, v1, v2}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    const-string v1, "print"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaLpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "path"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaCpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "cpath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    new-instance v0, Lcom/androlua/LuaThread$2;

    iget-object v1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaThread$2;-><init>(Lcom/androlua/LuaThread;Lcom/luajava/LuaState;)V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaThread$3;

    iget-object v1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaThread$3;-><init>(Lcom/androlua/LuaThread;Lcom/luajava/LuaState;)V

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaThread;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaThread;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaThread;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p2, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    const-string v0, "^\\w+$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lua"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaThread;->doAsset(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "^[\\w\\.\\_/]+$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "luapath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaThread;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaThread;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->quit()V

    return-void
.end method

.method private varargs a([B[Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "TimerTask"

    invoke-virtual {v0, p1, v2}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    array-length p1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    invoke-virtual {p2, p1, v1, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaThread;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->quit()V

    return-void
.end method

.method static synthetic b(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaThread;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->LloadFile(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    array-length p1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    invoke-virtual {p2, p1, v1, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaThread;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->LloadString(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    array-length p1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    invoke-virtual {p2, p1, v1, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaThread;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v3, "debug"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v3, "traceback"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->insert(I)V

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    sub-int/2addr v3, v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v3}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/androlua/LuaThread;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p2, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/androlua/LuaThread$1;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaThread$1;-><init>(Lcom/androlua/LuaThread;Ljava/lang/String;)V

    return-object v0
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaThread;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaThread;->push(ILjava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaThread;->push(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaThread;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs doAsset(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androlua/LuaUtil;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0, p1}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "debug"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v1, "traceback"

    invoke-virtual {p1, v0, v1}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->insert(I)V

    array-length p1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    sub-int/2addr v1, p1

    invoke-virtual {p2, p1, v2, v1}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaThread;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public gc()V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->quit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaThread;->a:Z

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaThread;->a:Z

    return v0
.end method

.method public push(ILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    const-string p2, "thread is not running"

    invoke-interface {p1, p2}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaThread;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public push(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    const-string p2, "thread is not running"

    invoke-interface {p1, p2}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "args"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaThread;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public quit()V
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/LuaThread;->isRun:Z

    iget-object v0, p0, Lcom/androlua/LuaThread;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/LuaThread;->a()V

    iget-object v0, p0, Lcom/androlua/LuaThread;->h:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaThread;->h:[B

    iget-object v1, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaThread;->a([B[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaThread;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/LuaThread;->g:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaThread;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/androlua/LuaThread;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/androlua/LuaThread$ThreadHandler;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/androlua/LuaThread$ThreadHandler;-><init>(Lcom/androlua/LuaThread;Lcom/androlua/LuaThread$1;)V

    iput-object v0, p0, Lcom/androlua/LuaThread;->c:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/androlua/LuaThread;->isRun:Z

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const-string v3, "run"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    const-string v0, "run"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/androlua/LuaThread;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_3
    iput-boolean v1, p0, Lcom/androlua/LuaThread;->isRun:Z

    iget-object v0, p0, Lcom/androlua/LuaThread;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->gc(II)I

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaThread;->d:Lcom/androlua/LuaContext;

    invoke-virtual {p0}, Lcom/androlua/LuaThread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1, v0}, Lcom/androlua/LuaThread;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
