.class Lcom/androlua/LuaThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/luajava/LuaMetaTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaThread;->__index(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/androlua/LuaThread;


# direct methods
.method constructor <init>(Lcom/androlua/LuaThread;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaThread$1;->b:Lcom/androlua/LuaThread;

    iput-object p2, p0, Lcom/androlua/LuaThread$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaThread$1;->b:Lcom/androlua/LuaThread;

    iget-object v1, p0, Lcom/androlua/LuaThread$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/androlua/LuaThread;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
