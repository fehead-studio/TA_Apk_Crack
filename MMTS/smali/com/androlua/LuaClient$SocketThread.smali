.class Lcom/androlua/LuaClient$SocketThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaClient;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaClient;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaClient$SocketThread;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
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

.method public flush()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v0}, Lcom/androlua/LuaClient;->c(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
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

.method public newLine()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v0}, Lcom/androlua/LuaClient;->c(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v0}, Lcom/androlua/LuaClient;->c(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
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

.method public run()V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v0}, Lcom/androlua/LuaClient;->a(Lcom/androlua/LuaClient;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v1}, Lcom/androlua/LuaClient;->b(Lcom/androlua/LuaClient;)Lcom/androlua/LuaClient$OnReadLineListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v1}, Lcom/androlua/LuaClient;->b(Lcom/androlua/LuaClient;)Lcom/androlua/LuaClient$OnReadLineListener;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-interface {v1, v2, p0, v0}, Lcom/androlua/LuaClient$OnReadLineListener;->onReadLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaClient$SocketThread;->a:Lcom/androlua/LuaClient;

    invoke-static {v0}, Lcom/androlua/LuaClient;->c(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
