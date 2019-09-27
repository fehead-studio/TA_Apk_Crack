.class public Lcom/androlua/LuaService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;
.implements Lcom/androlua/LuaContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaService$MainHandler;,
        Lcom/androlua/LuaService$LuaBinder;
    }
.end annotation


# static fields
.field private static b:Lcom/androlua/LuaService;


# instance fields
.field a:Lcom/androlua/LuaService$LuaBinder;

.field private c:Lcom/androlua/LuaDexLoader;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androlua/LuaGcable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/androlua/LuaService$MainHandler;

.field private g:Ljava/lang/String;

.field private h:Lcom/luajava/LuaState;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public luaCpath:Ljava/lang/String;

.field public luaDir:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Ljava/lang/StringBuilder;

.field private p:Landroid/widget/Toast;

.field private q:Ljava/lang/StringBuilder;

.field private r:J

.field private s:Lcom/androlua/LuaResources;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/androlua/LuaService$LuaBinder;

    invoke-direct {v0, p0}, Lcom/androlua/LuaService$LuaBinder;-><init>(Lcom/androlua/LuaService;)V

    iput-object v0, p0, Lcom/androlua/LuaService;->a:Lcom/androlua/LuaService$LuaBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->o:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

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

.method static synthetic a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaService;->o:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushContext(Lcom/androlua/LuaContext;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "luaextdir"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "luapath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    new-instance v0, Lcom/androlua/LuaAssetLoader;

    iget-object v3, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v3}, Lcom/androlua/LuaAssetLoader;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v3, "package"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaService;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v3, "cpath"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    new-instance v0, Lcom/androlua/LuaService$2;

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaService$2;-><init>(Lcom/androlua/LuaService;Lcom/luajava/LuaState;)V

    const-string v1, "print"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaService$3;

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaService$3;-><init>(Lcom/androlua/LuaService;Lcom/luajava/LuaState;)V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaService$4;

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaService$4;-><init>(Lcom/androlua/LuaService;Lcom/luajava/LuaState;)V

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaService;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p2, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x1000

    new-array p2, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p1, p2, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u590d\u5236\u6587\u4ef6\u64cd\u4f5c\u51fa\u9519"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method public static getService()Lcom/androlua/LuaService;
    .locals 1

    sget-object v0, Lcom/androlua/LuaService;->b:Lcom/androlua/LuaService;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaService;->push(ILjava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaService;->push(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaService;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs doAsset(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->readAsset(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0, p1}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "debug"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v1, "traceback"

    invoke-virtual {p1, v0, v1}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->insert(I)V

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    sub-int/2addr v1, p1

    invoke-virtual {p2, p1, v2, v1}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

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

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->LloadFile(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v1, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    if-eqz p2, :cond_1

    array-length p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v3, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs doString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->LloadString(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaService;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBinder()Lcom/androlua/LuaService$LuaBinder;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->a:Lcom/androlua/LuaService$LuaBinder;

    return-object v0
.end method

.method public getClassLoaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getClassLoaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getGlobalData()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getLibrarys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getLibrarys()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLuaCpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaLpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->getLuaDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaResources()Lcom/androlua/LuaResources;
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v1}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/androlua/LuaService;->s:Lcom/androlua/LuaResources;

    iget-object v1, p0, Lcom/androlua/LuaService;->s:Lcom/androlua/LuaResources;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaResources;->setSuperResources(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/androlua/LuaService;->s:Lcom/androlua/LuaResources;

    return-object v0
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaService;->s:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaService;->s:Lcom/androlua/LuaResources;

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSuperResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public loadLib(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaService;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaService;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".so"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/androlua/LuaService;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v2, "require"

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadResources(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadResources(Ljava/lang/String;)V

    return-void
.end method

.method public newTask(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaService;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaService;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0
.end method

.method public newThread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newTimer(Lcom/luajava/LuaObject;)Lcom/androlua/LuaTimer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaService;->startForeground(ILandroid/app/Notification;)V

    new-instance p1, Lcom/androlua/LuaService$LuaBinder;

    invoke-direct {p1, p0}, Lcom/androlua/LuaService$LuaBinder;-><init>(Lcom/androlua/LuaService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/androlua/LuaService;->b:Lcom/androlua/LuaService;

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLocalDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getOdexDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getMdDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaCpath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->luaCpath:Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/LuaService;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaLpath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaService;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    new-instance v0, Lcom/androlua/LuaService$MainHandler;

    invoke-direct {v0, p0}, Lcom/androlua/LuaService$MainHandler;-><init>(Lcom/androlua/LuaService;)V

    iput-object v0, p0, Lcom/androlua/LuaService;->f:Lcom/androlua/LuaService$MainHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaService;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "onReceive"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaService;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    sput-object p0, Lcom/androlua/LuaService;->b:Lcom/androlua/LuaService;

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaService;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "luaPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->i:Ljava/lang/String;

    const-string v0, "luaDir"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?.lua;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lua/?.lua;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaService;->luaDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?/init.lua;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaService;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaService;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/androlua/LuaService;->a()V

    new-instance v2, Lcom/androlua/LuaDexLoader;

    invoke-direct {v2, p0}, Lcom/androlua/LuaDexLoader;-><init>(Lcom/androlua/LuaContext;)V

    iput-object v2, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    iget-object v2, p0, Lcom/androlua/LuaService;->c:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v2}, Lcom/androlua/LuaDexLoader;->loadLibs()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "service.lua"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, "onStartCommand"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaService;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onStart"

    const-string v1, "arg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaService;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public push(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaService;->f:Lcom/androlua/LuaService$MainHandler;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public push(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

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

    iget-object p1, p0, Lcom/androlua/LuaService;->f:Lcom/androlua/LuaService$MainHandler;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaService;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public regGc(Lcom/androlua/LuaGcable;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;)V

    iput-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/androlua/LuaService;->n:Landroid/content/BroadcastReceiver;

    invoke-super {p0, v0, p1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p1}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;)V

    invoke-super {p0, v0, p2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public varargs runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v3, "debug"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const-string v3, "traceback"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v0, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->insert(I)V

    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    sub-int/2addr v3, v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v3}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

    invoke-virtual {p2, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :cond_2
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/androlua/LuaService;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/androlua/LuaService;->h:Lcom/luajava/LuaState;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "onError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaService;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/androlua/LuaService;->f:Lcom/androlua/LuaService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/androlua/LuaService;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBinder(Lcom/androlua/LuaService$LuaBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaService;->a:Lcom/androlua/LuaService$LuaBinder;

    return-void
.end method

.method public setLuaExtDir(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v5, v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/androlua/LuaService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaService;->m:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/LuaService;->p:Landroid/widget/Toast;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/androlua/LuaService;->r:J

    const/4 v2, 0x0

    sub-long v6, v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaService;->p:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaService;->p:Landroid/widget/Toast;

    invoke-virtual {p1, v3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaService;->p:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaService;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iput-wide v0, p0, Lcom/androlua/LuaService;->r:J

    iget-object p1, p0, Lcom/androlua/LuaService;->p:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public task(JLcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/androlua/LuaService;->task(J[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(J[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;JLcom/luajava/LuaObject;)V

    invoke-virtual {v0, p3}, Lcom/androlua/LuaAsyncTask;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public task(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/androlua/LuaService;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0, p2}, Lcom/androlua/LuaAsyncTask;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public thread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaService;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaThread;->start()V

    return-object p1
.end method

.method public thread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/androlua/LuaThread;->start()V

    return-object v0
.end method

.method public ticker(Lcom/luajava/LuaObject;J)Lcom/androlua/Ticker;
    .locals 2

    new-instance v0, Lcom/androlua/Ticker;

    invoke-direct {v0}, Lcom/androlua/Ticker;-><init>()V

    new-instance v1, Lcom/androlua/LuaService$1;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaService$1;-><init>(Lcom/androlua/LuaService;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0, v1}, Lcom/androlua/Ticker;->setOnTickListener(Lcom/androlua/Ticker$OnTickListener;)V

    invoke-virtual {v0, p2, p3}, Lcom/androlua/Ticker;->setPeriod(J)V

    invoke-virtual {v0}, Lcom/androlua/Ticker;->start()V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ)Lcom/androlua/LuaTimer;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p6}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/androlua/LuaTimer;->start(JJ)V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaService;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method
