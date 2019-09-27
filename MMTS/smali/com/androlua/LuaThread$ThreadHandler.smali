.class Lcom/androlua/LuaThread$ThreadHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaThread;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaThread;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaThread;Lcom/androlua/LuaThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaThread$ThreadHandler;-><init>(Lcom/androlua/LuaThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "args"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {p1, v2, v0}, Lcom/androlua/LuaThread;->a(Lcom/androlua/LuaThread;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaThread;->b(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaThread;->a(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/androlua/LuaThread;->b(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/androlua/LuaThread$ThreadHandler;->a:Lcom/androlua/LuaThread;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/androlua/LuaThread;->a(Lcom/androlua/LuaThread;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
