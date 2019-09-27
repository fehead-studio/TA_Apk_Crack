.class public Lcom/androlua/LuaDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaObject;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/luajava/LuaFunction;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaFunction;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaDrawable;->b:Lcom/luajava/LuaObject;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaDrawable;->c:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/androlua/LuaDrawable;->b:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaDrawable;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaDrawable;->d:Lcom/luajava/LuaFunction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->b:Lcom/luajava/LuaObject;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v4, p0, Lcom/androlua/LuaDrawable;->c:Landroid/graphics/Paint;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-virtual {v0, v3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/luajava/LuaFunction;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/luajava/LuaFunction;

    iput-object v0, p0, Lcom/androlua/LuaDrawable;->d:Lcom/luajava/LuaFunction;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaDrawable;->d:Lcom/luajava/LuaFunction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->d:Lcom/luajava/LuaFunction;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->a:Lcom/androlua/LuaContext;

    const-string v1, "onDraw"

    invoke-interface {v0, v1, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
