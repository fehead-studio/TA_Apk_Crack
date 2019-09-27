.class public Lcom/androlua/LuaAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaFunction;

.field private c:Lcom/luajava/LuaFunction;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaFunction;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    invoke-virtual {p1}, Lcom/luajava/LuaFunction;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaAnimation;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p2, v2, v3

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/luajava/LuaFunction;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/luajava/LuaFunction;

    iput-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/androlua/LuaAnimation;->a:Lcom/androlua/LuaContext;

    const-string v0, "applyTransformation"

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result p1

    return p1
.end method
