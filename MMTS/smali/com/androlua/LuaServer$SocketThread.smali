.class Lcom/androlua/LuaServer$SocketThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaServer;

.field private final b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaServer;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaServer$SocketThread;->a:Lcom/androlua/LuaServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaServer$SocketThread;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaServer$SocketThread;->b:Ljava/net/Socket;

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
    iget-object v0, p0, Lcom/androlua/LuaServer$SocketThread;->c:Ljava/io/BufferedWriter;

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
    iget-object v0, p0, Lcom/androlua/LuaServer$SocketThread;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/androlua/LuaServer$SocketThread;->c:Ljava/io/BufferedWriter;

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
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/androlua/LuaServer$SocketThread;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/androlua/LuaServer$SocketThread;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/androlua/LuaServer$SocketThread;->c:Ljava/io/BufferedWriter;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/androlua/LuaServer$SocketThread;->a:Lcom/androlua/LuaServer;

    invoke-static {v2}, Lcom/androlua/LuaServer;->b(Lcom/androlua/LuaServer;)Lcom/androlua/LuaServer$OnReadLineListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaServer$SocketThread;->a:Lcom/androlua/LuaServer;

    invoke-static {v2}, Lcom/androlua/LuaServer;->b(Lcom/androlua/LuaServer;)Lcom/androlua/LuaServer$OnReadLineListener;

    move-result-object v2

    iget-object v3, p0, Lcom/androlua/LuaServer$SocketThread;->a:Lcom/androlua/LuaServer;

    invoke-interface {v2, v3, p0, v1}, Lcom/androlua/LuaServer$OnReadLineListener;->onReadLine(Lcom/androlua/LuaServer;Lcom/androlua/LuaServer$SocketThread;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/androlua/LuaServer$SocketThread;->c:Ljava/io/BufferedWriter;

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
