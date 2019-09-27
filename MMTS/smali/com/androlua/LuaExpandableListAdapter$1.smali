.class Lcom/androlua/LuaExpandableListAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaExpandableListAdapter;


# direct methods
.method constructor <init>(Lcom/androlua/LuaExpandableListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$1;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$1;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-virtual {p1}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
