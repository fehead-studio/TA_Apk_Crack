.class public Lcom/androlua/LuaFragment;
.super Landroid/app/Fragment;


# instance fields
.field private a:Lcom/luajava/LuaTable;

.field private b:Lcom/luajava/LuaObject;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    iput-object v0, p0, Lcom/androlua/LuaFragment;->b:Lcom/luajava/LuaObject;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    const-string p2, "require"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "loadlayout"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaObject;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_1
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/androlua/LuaFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method

.method public setLayout(Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    return-void
.end method
