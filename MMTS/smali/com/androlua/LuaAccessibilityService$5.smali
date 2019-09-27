.class Lcom/androlua/LuaAccessibilityService$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAccessibilityService;->postClick(JLcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaTable;

.field final synthetic b:Lcom/luajava/LuaFunction;

.field final synthetic c:Lcom/androlua/LuaAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService$5;->c:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/LuaAccessibilityService$5;->a:Lcom/luajava/LuaTable;

    iput-object p3, p0, Lcom/androlua/LuaAccessibilityService$5;->b:Lcom/luajava/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService$5;->c:Lcom/androlua/LuaAccessibilityService;

    iget-object v1, p0, Lcom/androlua/LuaAccessibilityService$5;->a:Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/androlua/LuaAccessibilityService$5;->b:Lcom/luajava/LuaFunction;

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaAccessibilityService;->click(Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)Z

    return-void
.end method
