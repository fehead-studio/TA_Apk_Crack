.class public Lcom/androlua/LuaView;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/luajava/LuaTable;

.field private b:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/luajava/LuaTable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/androlua/LuaView;->a:Lcom/luajava/LuaTable;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaView;->a:Lcom/luajava/LuaTable;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaView;->a:Lcom/luajava/LuaTable;

    const-string v1, "onMeasure"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaTable;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaView;->b:Lcom/luajava/LuaObject;

    iget-object v0, p0, Lcom/androlua/LuaView;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaView;->b:Lcom/luajava/LuaObject;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
