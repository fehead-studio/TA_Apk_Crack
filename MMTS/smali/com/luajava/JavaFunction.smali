.class public abstract Lcom/luajava/JavaFunction;
.super Ljava/lang/Object;


# instance fields
.field protected b:Lcom/luajava/LuaState;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/JavaFunction;->b:Lcom/luajava/LuaState;

    return-void
.end method


# virtual methods
.method public abstract execute()I
.end method

.method public getParam(I)Lcom/luajava/LuaObject;
    .locals 1

    iget-object v0, p0, Lcom/luajava/JavaFunction;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/luajava/JavaFunction;->b:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/JavaFunction;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, p0}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    iget-object v1, p0, Lcom/luajava/JavaFunction;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
