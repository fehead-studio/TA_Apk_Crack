.class public final Lcom/luajava/LuaStateFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/luajava/LuaState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getExistingState(J)Lcom/luajava/LuaState;
    .locals 3

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/luajava/LuaState;

    invoke-direct {v1, p0, p1}, Lcom/luajava/LuaState;-><init>(J)V

    sget-object v2, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized insertLuaState(Lcom/luajava/LuaState;)J
    .locals 4

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized newLuaState()Lcom/luajava/LuaState;
    .locals 5

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/luajava/LuaState;

    invoke-direct {v1}, Lcom/luajava/LuaState;-><init>()V

    sget-object v2, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized removeLuaState(J)V
    .locals 2

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luajava/LuaStateFactory;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
