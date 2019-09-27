.class Lcom/androlua/LuaAccessibilityService$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/util/ClickRunnable$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAccessibilityService;->loopClick(Lcom/luajava/LuaTable;)Lcom/androlua/util/ClickRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaTable;

.field final synthetic b:Lcom/androlua/LuaAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService$7;->b:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/LuaAccessibilityService$7;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaAccessibilityService$7;->b:Lcom/androlua/LuaAccessibilityService;

    iget-object p2, p0, Lcom/androlua/LuaAccessibilityService$7;->a:Lcom/luajava/LuaTable;

    invoke-virtual {p1, p2}, Lcom/androlua/LuaAccessibilityService;->loopClick(Lcom/luajava/LuaTable;)Lcom/androlua/util/ClickRunnable;

    return-void
.end method
