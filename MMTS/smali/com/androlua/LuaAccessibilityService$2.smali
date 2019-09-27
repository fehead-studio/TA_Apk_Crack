.class Lcom/androlua/LuaAccessibilityService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaAccessibilityService;->postExecute(JLjava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/luajava/LuaFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaFunction;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic d:Lcom/androlua/LuaAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService$2;->d:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/LuaAccessibilityService$2;->a:Lcom/luajava/LuaFunction;

    iput-object p3, p0, Lcom/androlua/LuaAccessibilityService$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/androlua/LuaAccessibilityService$2;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService$2;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaAccessibilityService$2;->d:Lcom/androlua/LuaAccessibilityService;

    iget-object v4, p0, Lcom/androlua/LuaAccessibilityService$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/androlua/LuaAccessibilityService$2;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4, v5}, Lcom/androlua/LuaAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/androlua/LuaAccessibilityService$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/androlua/LuaAccessibilityService$2;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/androlua/LuaAccessibilityService$2;->d:Lcom/androlua/LuaAccessibilityService;

    const-string v2, "postExecute"

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaAccessibilityService;->a(Lcom/androlua/LuaAccessibilityService;Ljava/lang/String;Lcom/luajava/LuaException;)V

    return-void
.end method
