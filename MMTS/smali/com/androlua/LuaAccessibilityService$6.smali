.class Lcom/androlua/LuaAccessibilityService$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/util/ClickRunnable$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAccessibilityService;->click(Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaFunction;

.field final synthetic b:Lcom/androlua/LuaAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService$6;->b:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/LuaAccessibilityService$6;->a:Lcom/luajava/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService$6;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/androlua/LuaAccessibilityService$6;->b:Lcom/androlua/LuaAccessibilityService;

    const-string p3, "click"

    invoke-static {p2, p3, p1}, Lcom/androlua/LuaAccessibilityService;->a(Lcom/androlua/LuaAccessibilityService;Ljava/lang/String;Lcom/luajava/LuaException;)V

    return-void
.end method
