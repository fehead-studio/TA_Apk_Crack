.class Lcom/androlua/LuaAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAdapter;->notifyDataSetChanged()V
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

    iput-object p1, p0, Lcom/androlua/LuaAdapter$2;->a:Lcom/androlua/LuaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAdapter$2;->a:Lcom/androlua/LuaAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;Z)Z

    return-void
.end method
