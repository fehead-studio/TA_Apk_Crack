.class Lcom/androlua/LuaMultiAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V
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

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter$2;->a:Lcom/androlua/LuaMultiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter$2;->a:Lcom/androlua/LuaMultiAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/LuaMultiAdapter;->a(Lcom/androlua/LuaMultiAdapter;Z)Z

    return-void
.end method
