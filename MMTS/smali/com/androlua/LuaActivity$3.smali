.class Lcom/androlua/LuaActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/Ticker$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaActivity;->ticker(Lcom/luajava/LuaObject;J)Lcom/androlua/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaObject;

.field final synthetic b:Lcom/androlua/LuaActivity;


# direct methods
.method constructor <init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity$3;->b:Lcom/androlua/LuaActivity;

    iput-object p2, p0, Lcom/androlua/LuaActivity$3;->a:Lcom/luajava/LuaObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity$3;->a:Lcom/luajava/LuaObject;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity$3;->b:Lcom/androlua/LuaActivity;

    const-string v2, "onTick"

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
