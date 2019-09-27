.class Lcom/androlua/LuaThread$2;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaThread;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaThread;


# direct methods
.method constructor <init>(Lcom/androlua/LuaThread;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaThread$2;->a:Lcom/androlua/LuaThread;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaThread$2;->a:Lcom/androlua/LuaThread;

    invoke-static {v0}, Lcom/androlua/LuaThread;->a(Lcom/androlua/LuaThread;)Lcom/androlua/LuaContext;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaThread$2;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaThread$2;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/androlua/LuaContext;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
