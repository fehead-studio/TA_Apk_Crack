.class Lcom/androlua/LuaAsyncTask$1;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaAsyncTask;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAsyncTask;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask$1;->a:Lcom/androlua/LuaAsyncTask;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask$1;->a:Lcom/androlua/LuaAsyncTask;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask$1;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaAsyncTask;->update(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
