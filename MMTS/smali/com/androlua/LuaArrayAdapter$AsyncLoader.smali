.class Lcom/androlua/LuaArrayAdapter$AsyncLoader;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoader"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaArrayAdapter;

.field private b:Ljava/lang/String;

.field private c:Lcom/androlua/LuaContext;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaArrayAdapter;Lcom/androlua/LuaArrayAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaArrayAdapter;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-static {v1}, Lcom/androlua/LuaArrayAdapter;->a(Lcom/androlua/LuaArrayAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->checkCache(Lcom/androlua/LuaContext;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-static {v1}, Lcom/androlua/LuaArrayAdapter;->a(Lcom/androlua/LuaArrayAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-static {p1}, Lcom/androlua/LuaArrayAdapter;->b(Lcom/androlua/LuaArrayAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->start()V

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-static {p1}, Lcom/androlua/LuaArrayAdapter;->b(Lcom/androlua/LuaArrayAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p1, Lcom/androlua/LoadingDrawable;

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/androlua/LoadingDrawable;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-static {v0}, Lcom/androlua/LuaArrayAdapter;->c(Lcom/androlua/LuaArrayAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    const-string v2, "AsyncLoader"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
