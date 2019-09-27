.class Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoader"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaExpandableListAdapter;

.field private b:Ljava/lang/String;

.field private c:Lcom/androlua/LuaContext;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaExpandableListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/androlua/LuaExpandableListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v1}, Lcom/androlua/LuaExpandableListAdapter;->d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v1}, Lcom/androlua/LuaExpandableListAdapter;->d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {p1}, Lcom/androlua/LuaExpandableListAdapter;->e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->start()V

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {p1}, Lcom/androlua/LuaExpandableListAdapter;->e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {p1}, Lcom/androlua/LuaExpandableListAdapter;->f(Lcom/androlua/LuaExpandableListAdapter;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->g(Lcom/androlua/LuaExpandableListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaContext;

    const-string v2, "AsyncLoader"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
