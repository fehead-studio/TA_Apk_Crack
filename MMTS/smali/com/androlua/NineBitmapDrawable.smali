.class public Lcom/androlua/NineBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lcom/androlua/LuaGcable;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Rect;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/Rect;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, -0x1000000

    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_f

    add-int/lit8 v3, v0, -0x1

    if-ne v6, v3, :cond_2

    goto/16 :goto_b

    :cond_2
    move v3, v6

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-eq v5, v4, :cond_3

    sub-int/2addr v0, v3

    move v8, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    goto :goto_a

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_7

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-ne v5, v4, :cond_6

    move v7, v3

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_d

    add-int/lit8 v3, v1, -0x1

    if-ne v7, v3, :cond_8

    goto :goto_9

    :cond_8
    move v3, v7

    :goto_6
    if-ge v3, v1, :cond_a

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-eq v5, v4, :cond_9

    sub-int v2, v1, v3

    move v9, v2

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_c

    if-ne v9, v0, :cond_b

    goto :goto_8

    :cond_b
    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/androlua/NineBitmapDrawable;->a(Landroid/graphics/Bitmap;IIII)V

    return-void

    :cond_c
    :goto_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found y2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found y1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found x2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found x1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p5}, Lcom/androlua/NineBitmapDrawable;->a(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/NineBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;IIII)V
    .locals 3

    iput-object p1, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p2, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iput p3, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    iput p4, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    iput p5, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int p4, v0, p4

    sub-int p5, p1, p5

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->g:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v2, p4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->h:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    invoke-direct {v1, p4, v2, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->i:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, p3, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->j:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->k:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p4, p3, v0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->l:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    sub-int/2addr p1, v2

    invoke-direct {p3, v2, p5, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/androlua/NineBitmapDrawable;->m:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p2, p5, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/androlua/NineBitmapDrawable;->n:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p4, p5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/androlua/NineBitmapDrawable;->o:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/androlua/NineBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iget v4, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iget v6, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v6, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    invoke-direct {v4, v6, v5, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    iget v8, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iget v9, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v9, v0, v9

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iget v9, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    iget v10, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v10, v1, v10

    iget v11, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v11, v0, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v9, v1, v9

    iget v10, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    iget v11, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v11, v0, v11

    invoke-direct {v8, v9, v10, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget v10, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v10, v0, v10

    iget v11, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    invoke-direct {v9, v5, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget v10, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iget v11, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v11, v0, v11

    iget v12, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v12, v1, v12

    invoke-direct {v5, v10, v11, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    iget v11, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    sub-int v11, v1, v11

    iget v12, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    sub-int v12, v0, v12

    invoke-direct {v10, v11, v12, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->g:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->m:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->n:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public gc()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/NineBitmapDrawable;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/NineBitmapDrawable;->p:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
