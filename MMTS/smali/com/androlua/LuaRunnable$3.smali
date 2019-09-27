.class Lcom/androlua/LuaRunnable$3;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaRunnable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaRunnable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaRunnable;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaRunnable$3;->a:Lcom/androlua/LuaRunnable;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    :goto_0
    if-gt v4, v0, :cond_0

    add-int/lit8 v5, v4, -0x3

    iget-object v6, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/luajava/LuaState;

    invoke-virtual {v6, v4}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaRunnable$3;->a:Lcom/androlua/LuaRunnable;

    invoke-static {v0}, Lcom/androlua/LuaRunnable;->a(Lcom/androlua/LuaRunnable;)Lcom/androlua/LuaContext;

    move-result-object v0

    iget-object v4, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/luajava/LuaState;

    invoke-virtual {v4, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaRunnable$3;->a:Lcom/androlua/LuaRunnable;

    invoke-static {v0}, Lcom/androlua/LuaRunnable;->a(Lcom/androlua/LuaRunnable;)Lcom/androlua/LuaContext;

    move-result-object v0

    iget-object v3, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/luajava/LuaState;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    :goto_1
    invoke-interface {v0, v2, v3}, Lcom/androlua/LuaContext;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method
