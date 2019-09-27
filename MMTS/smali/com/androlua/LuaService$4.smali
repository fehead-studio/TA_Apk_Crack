.class Lcom/androlua/LuaService$4;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaService;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaService$4;->a:Lcom/androlua/LuaService;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaService$4;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaThread;

    iget-object v1, p0, Lcom/androlua/LuaService$4;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    add-int/lit8 v3, v1, -0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    :goto_0
    if-gt v4, v1, :cond_0

    add-int/lit8 v5, v4, -0x4

    iget-object v6, p0, Lcom/androlua/LuaService$4;->b:Lcom/luajava/LuaState;

    invoke-virtual {v6, v4}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaService$4;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/androlua/LuaThread;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/androlua/LuaService$4;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaThread;->call(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
