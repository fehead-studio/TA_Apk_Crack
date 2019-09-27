.class Lcom/androlua/LuaMultiAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaMultiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaMultiAdapter;


# direct methods
.method constructor <init>(Lcom/androlua/LuaMultiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter$1;->a:Lcom/androlua/LuaMultiAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter$1;->a:Lcom/androlua/LuaMultiAdapter;

    invoke-virtual {p1}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    return-void
.end method
