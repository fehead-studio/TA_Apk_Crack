.class Lcom/androlua/LuaAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaAdapter;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-virtual {p1}, Lcom/androlua/LuaAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->d(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v3}, Lcom/androlua/LuaAdapter;->b(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v3}, Lcom/androlua/LuaAdapter;->c(Lcom/androlua/LuaAdapter;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v0, p1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;Lcom/luajava/LuaTable;)Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-virtual {p1}, Lcom/androlua/LuaAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->e(Lcom/androlua/LuaAdapter;)Lcom/androlua/LuaContext;

    move-result-object v0

    const-string v1, "performFiltering"

    invoke-interface {v0, v1, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
