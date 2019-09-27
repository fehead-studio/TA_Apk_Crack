.class public Lcom/androlua/LuaBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lcom/androlua/LuaGcable;
.implements Ljava/lang/Runnable;


# static fields
.field public static final CENTER:I = 0x5

.field public static final CENTER_CROP:I = 0x6

.field public static final CENTER_INSIDE:I = 0x7

.field public static final FIT_CENTER:I = 0x3

.field public static final FIT_END:I = 0x4

.field public static final FIT_START:I = 0x2

.field public static final FIT_XY:I = 0x1

.field public static final MATRIX:I = 0x0

.field private static q:J = 0x240c8400L


# instance fields
.field private a:Lcom/androlua/LuaContext;

.field private b:I

.field private c:J

.field private d:I

.field private e:Landroid/graphics/Movie;

.field private f:Lcom/androlua/LoadingDrawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lcom/androlua/NineBitmapDrawable;

.field private i:Landroid/graphics/ColorFilter;

.field private j:I

.field private k:I

.field private l:Lcom/androlua/GifDecoder;

.field private m:Lcom/androlua/GifDecoder;

.field private n:Lcom/androlua/GifDecoder$GifFrame;

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->a:Lcom/androlua/LuaContext;

    new-instance v0, Lcom/androlua/LoadingDrawable;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/LoadingDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lcom/androlua/LuaContext;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p2}, Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    return-object p0
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/GifDecoder;)Lcom/androlua/GifDecoder;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    return-object p1
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaBitmapDrawable$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable$1;-><init>(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/LuaContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaBitmapDrawable$1;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/androlua/GifDecoder;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/androlua/LuaBitmapDrawable$2;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaBitmapDrawable$2;-><init>(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/androlua/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/androlua/GifDecoder$GifAction;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->l:Lcom/androlua/GifDecoder;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->l:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaBitmapDrawable;->l:Lcom/androlua/GifDecoder;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/androlua/LuaBitmapDrawable$3;

    invoke-direct {v0, p0}, Lcom/androlua/LuaBitmapDrawable$3;-><init>(Lcom/androlua/LuaBitmapDrawable;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->b:I

    iget p1, p0, Lcom/androlua/LuaBitmapDrawable;->b:I

    if-nez p1, :cond_2

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->b:I

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/androlua/NineBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/androlua/NineBitmapDrawable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/androlua/LuaBitmapDrawable;->a:Lcom/androlua/LuaContext;

    invoke-static {v3, p1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/androlua/LuaBitmapDrawable$4;

    invoke-direct {v0, p0}, Lcom/androlua/LuaBitmapDrawable$4;-><init>(Lcom/androlua/LuaBitmapDrawable;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method static synthetic c(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/LoadingDrawable;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    return-object p0
.end method

.method public static getCacheTime()J
    .locals 2

    sget-wide v0, Lcom/androlua/LuaBitmapDrawable;->q:J

    return-wide v0
.end method

.method public static getHttpBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache"

    invoke-interface {p0, v1}, Lcom/androlua/LuaContext;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v5, v1, v3

    sget-wide v0, Lcom/androlua/LuaBitmapDrawable;->q:J

    cmp-long v2, v5, v0

    if-gez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const v0, 0x1d4c0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "LoadHttpBitmap Error."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method public static setCacheTime(J)V
    .locals 0

    sput-wide p0, Lcom/androlua/LuaBitmapDrawable;->q:J

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    sub-long v6, v4, v0

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->o:I

    int-to-long v0, v0

    cmp-long v2, v6, v0

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->next()Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    iget v0, v0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->o:I

    iget-wide v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    iget v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:I

    int-to-long v6, v2

    add-long v8, v0, v6

    iput-wide v8, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->next()Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    iget v0, v0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->o:I

    iput-wide v4, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v2, v2, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-ne v5, v3, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    mul-float v4, v4, v5

    :goto_2
    float-to-int v4, v4

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    mul-float v4, v4, v3

    goto :goto_2

    :cond_4
    :goto_3
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    goto :goto_4

    :pswitch_1
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v2, v3

    add-int/2addr v4, v5

    invoke-direct {v0, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->invalidateSelf()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_7

    iput-wide v4, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    :cond_7
    iget-wide v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:J

    sub-long v6, v4, v0

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->b:I

    int-to-long v0, v0

    rem-long/2addr v6, v0

    long-to-int v0, v6

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->d:I

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    iget v1, p0, Lcom/androlua/LuaBitmapDrawable;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-ne v5, v3, :cond_8

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-float v2, v2, v5

    :goto_6
    float-to-int v2, v2

    goto :goto_7

    :cond_8
    iget v3, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-eqz v3, :cond_9

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    mul-float v1, v1, v4

    float-to-int v1, v1

    mul-float v2, v2, v4

    goto :goto_6

    :cond_9
    :goto_7
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    packed-switch v6, :pswitch_data_1

    goto :goto_8

    :pswitch_2
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-int v5, v0

    goto :goto_8

    :pswitch_3
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    int-to-float v0, v5

    div-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v5, v0

    move v3, v1

    :goto_8
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    int-to-float v1, v3

    int-to-float v2, v5

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget v4, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-ne v4, v3, :cond_b

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-float v2, v2, v4

    :goto_9
    float-to-int v2, v2

    goto :goto_a

    :cond_b
    iget v3, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-eqz v3, :cond_c

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-float v2, v2, v3

    goto :goto_9

    :cond_c
    :goto_a
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    packed-switch v5, :pswitch_data_2

    goto :goto_b

    :pswitch_4
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    goto :goto_b

    :pswitch_5
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    :goto_b
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/NineBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/androlua/NineBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LoadingDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/androlua/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->free()V

    :cond_0
    return-void
.end method

.method public gc()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->free()V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {v0}, Lcom/androlua/NineBitmapDrawable;->gc()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Lcom/androlua/LoadingDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/androlua/LoadingDrawable;->setState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaBitmapDrawable;->p:Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {v0}, Lcom/androlua/NineBitmapDrawable;->getIntrinsicHeight()I

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {v0}, Lcom/androlua/NineBitmapDrawable;->getIntrinsicWidth()I

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaBitmapDrawable;->p:Z

    return v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->i:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->j:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->j:I

    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    invoke-virtual {p0}, Lcom/androlua/LuaBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
