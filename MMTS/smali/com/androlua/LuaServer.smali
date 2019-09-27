.class public Lcom/androlua/LuaServer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/LuaGcable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaServer$OnReadLineListener;,
        Lcom/androlua/LuaServer$SocketThread;,
        Lcom/androlua/LuaServer$ServerThread;
    }
.end annotation


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Lcom/androlua/LuaServer$OnReadLineListener;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaServer;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaServer;)Lcom/androlua/LuaServer$OnReadLineListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaServer;->b:Lcom/androlua/LuaServer$OnReadLineListener;

    return-object p0
.end method


# virtual methods
.method public gc()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaServer;->c:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaServer;->c:Z

    return v0
.end method

.method public setOnReadLineListener(Lcom/androlua/LuaServer$OnReadLineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaServer;->b:Lcom/androlua/LuaServer$OnReadLineListener;

    return-void
.end method

.method public start(I)Z
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    new-instance p1, Lcom/androlua/LuaServer$ServerThread;

    iget-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaServer$ServerThread;-><init>(Lcom/androlua/LuaServer;Ljava/net/ServerSocket;)V

    invoke-virtual {p1}, Lcom/androlua/LuaServer$ServerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public stop()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaServer;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
