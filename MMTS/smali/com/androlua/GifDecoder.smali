.class public Lcom/androlua/GifDecoder;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/GifDecoder$GifAction;,
        Lcom/androlua/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private A:Z

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:[S

.field private J:[B

.field private K:[B

.field private L:[B

.field private M:Lcom/androlua/GifDecoder$GifFrame;

.field private N:I

.field private O:Lcom/androlua/GifDecoder$GifAction;

.field private P:[B

.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:[I

.field private g:[I

.field private h:[I

.field public height:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field public width:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Lcom/androlua/GifDecoder$GifFrame;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p1, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>([BLcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p1, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method private a()V
    .locals 12

    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v1, p0, Lcom/androlua/GifDecoder;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iget v1, p0, Lcom/androlua/GifDecoder;->E:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/androlua/GifDecoder;->E:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/androlua/GifDecoder;->N:I

    sub-int/2addr v1, v10

    if-lez v1, :cond_0

    sub-int/2addr v1, v11

    invoke-virtual {p0, v1}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, p0, Lcom/androlua/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/androlua/GifDecoder;->width:I

    iget v8, p0, Lcom/androlua/GifDecoder;->height:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v1, p0, Lcom/androlua/GifDecoder;->E:I

    if-ne v1, v10, :cond_4

    iget-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/androlua/GifDecoder;->k:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/androlua/GifDecoder;->w:I

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/androlua/GifDecoder;->u:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/androlua/GifDecoder;->width:I

    mul-int v3, v3, v4

    iget v4, p0, Lcom/androlua/GifDecoder;->t:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/androlua/GifDecoder;->v:I

    add-int/2addr v4, v3

    :goto_4
    if-ge v3, v4, :cond_3

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    :goto_5
    iget v4, p0, Lcom/androlua/GifDecoder;->s:I

    if-ge v9, v4, :cond_a

    iget-boolean v4, p0, Lcom/androlua/GifDecoder;->n:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/androlua/GifDecoder;->s:I

    const/4 v5, 0x4

    if-lt v1, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/4 v1, 0x1

    const/4 v3, 0x2

    goto :goto_6

    :pswitch_1
    const/4 v1, 0x2

    const/4 v3, 0x4

    goto :goto_6

    :pswitch_2
    const/4 v1, 0x4

    :cond_5
    :goto_6
    add-int v4, v1, v3

    goto :goto_7

    :cond_6
    move v4, v1

    move v1, v9

    :goto_7
    iget v5, p0, Lcom/androlua/GifDecoder;->q:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/androlua/GifDecoder;->height:I

    if-ge v1, v5, :cond_9

    iget v5, p0, Lcom/androlua/GifDecoder;->width:I

    mul-int v1, v1, v5

    iget v5, p0, Lcom/androlua/GifDecoder;->p:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/androlua/GifDecoder;->r:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/androlua/GifDecoder;->width:I

    add-int/2addr v7, v1

    if-ge v7, v6, :cond_7

    iget v6, p0, Lcom/androlua/GifDecoder;->width:I

    add-int/2addr v6, v1

    :cond_7
    iget v1, p0, Lcom/androlua/GifDecoder;->r:I

    mul-int v1, v1, v9

    :goto_8
    if-ge v5, v6, :cond_9

    iget-object v7, p0, Lcom/androlua/GifDecoder;->L:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/androlua/GifDecoder;->h:[I

    aget v1, v7, v1

    if-eqz v1, :cond_8

    aput v1, v0, v5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move v1, v8

    goto :goto_8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move v1, v4

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/androlua/GifDecoder;->width:I

    iget v2, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v2

    move v3, v6

    move v2, v7

    goto :goto_1

    :cond_1
    move-object p1, v0

    return-object p1
.end method

.method private b()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/androlua/GifDecoder;->P:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->c()I

    move-result v0

    return v0
.end method

.method private c()I
    .locals 4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->f()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->k()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->i()V

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    const/4 v3, 0x1

    if-gez v0, :cond_0

    iput v3, p0, Lcom/androlua/GifDecoder;->b:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/androlua/GifDecoder;->b:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v3, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v1, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v1, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    :goto_2
    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    return v0
.end method

.method private d()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/androlua/GifDecoder;->r:I

    iget v2, v0, Lcom/androlua/GifDecoder;->s:I

    mul-int v1, v1, v2

    iget-object v2, v0, Lcom/androlua/GifDecoder;->L:[B

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/androlua/GifDecoder;->L:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->L:[B

    :cond_1
    iget-object v2, v0, Lcom/androlua/GifDecoder;->I:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    new-array v2, v3, [S

    iput-object v2, v0, Lcom/androlua/GifDecoder;->I:[S

    :cond_2
    iget-object v2, v0, Lcom/androlua/GifDecoder;->J:[B

    if-nez v2, :cond_3

    new-array v2, v3, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->J:[B

    :cond_3
    iget-object v2, v0, Lcom/androlua/GifDecoder;->K:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->K:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_5

    iget-object v11, v0, Lcom/androlua/GifDecoder;->I:[S

    aput-short v9, v11, v10

    iget-object v11, v0, Lcom/androlua/GifDecoder;->J:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v14, v2

    move v9, v7

    move/from16 v17, v8

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-ge v11, v1, :cond_12

    if-nez v12, :cond_11

    if-ge v13, v14, :cond_8

    if-nez v15, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->h()I

    move-result v15

    if-gtz v15, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v18, 0x0

    :cond_7
    iget-object v10, v0, Lcom/androlua/GifDecoder;->B:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int v16, v16, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/2addr v15, v10

    goto :goto_1

    :cond_8
    const/4 v10, -0x1

    and-int v4, v16, v17

    shr-int v16, v16, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_12

    if-ne v4, v6, :cond_9

    goto/16 :goto_6

    :cond_9
    if-ne v4, v5, :cond_a

    move v14, v2

    move v9, v7

    move/from16 v17, v8

    const/4 v3, -0x1

    goto/16 :goto_5

    :cond_a
    if-ne v3, v10, :cond_b

    iget-object v3, v0, Lcom/androlua/GifDecoder;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lcom/androlua/GifDecoder;->J:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto/16 :goto_5

    :cond_b
    move/from16 v21, v2

    if-ne v4, v9, :cond_c

    iget-object v2, v0, Lcom/androlua/GifDecoder;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    goto :goto_2

    :cond_c
    move/from16 v22, v4

    move v10, v12

    move/from16 v2, v22

    :goto_2
    if-le v2, v5, :cond_d

    iget-object v4, v0, Lcom/androlua/GifDecoder;->K:[B

    add-int/lit8 v12, v10, 0x1

    move/from16 v23, v5

    iget-object v5, v0, Lcom/androlua/GifDecoder;->J:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v10

    iget-object v4, v0, Lcom/androlua/GifDecoder;->I:[S

    aget-short v2, v4, v2

    move v10, v12

    move/from16 v5, v23

    goto :goto_2

    :cond_d
    move/from16 v23, v5

    iget-object v4, v0, Lcom/androlua/GifDecoder;->J:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x1000

    if-lt v9, v4, :cond_e

    goto :goto_6

    :cond_e
    iget-object v4, v0, Lcom/androlua/GifDecoder;->K:[B

    add-int/lit8 v12, v10, 0x1

    int-to-byte v5, v2

    aput-byte v5, v4, v10

    iget-object v4, v0, Lcom/androlua/GifDecoder;->I:[S

    int-to-short v3, v3

    aput-short v3, v4, v9

    iget-object v3, v0, Lcom/androlua/GifDecoder;->J:[B

    aput-byte v5, v3, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v17

    if-nez v3, :cond_f

    const/16 v5, 0x1000

    if-ge v9, v5, :cond_10

    add-int/lit8 v14, v14, 0x1

    add-int v17, v17, v9

    goto :goto_3

    :cond_f
    const/16 v5, 0x1000

    :cond_10
    :goto_3
    move/from16 v19, v2

    move/from16 v3, v22

    goto :goto_4

    :cond_11
    move/from16 v21, v2

    move/from16 v23, v5

    move/from16 v4, v19

    const/16 v5, 0x1000

    :goto_4
    const/4 v2, -0x1

    add-int/2addr v12, v2

    iget-object v4, v0, Lcom/androlua/GifDecoder;->L:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v2, v0, Lcom/androlua/GifDecoder;->K:[B

    aget-byte v2, v2, v12

    aput-byte v2, v4, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v2, v21

    move/from16 v5, v23

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_12
    :goto_6
    move/from16 v2, v20

    :goto_7
    if-ge v2, v1, :cond_13

    iget-object v3, v0, Lcom/androlua/GifDecoder;->L:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method

.method private e()Z
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    iput v0, p0, Lcom/androlua/GifDecoder;->N:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    return-void
.end method

.method private g()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 v0, 0x0

    return v0
.end method

.method private h()I
    .locals 4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->C:I

    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/androlua/GifDecoder;->B:[B

    iget v3, p0, Lcom/androlua/GifDecoder;->C:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_2
    return v1
.end method

.method private i()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/16 v4, 0x21

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_1

    iput v3, p0, Lcom/androlua/GifDecoder;->b:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->l()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v2

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->q()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->h()I

    const-string v2, ""

    move-object v3, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/GifDecoder;->B:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->n()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->j()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private j()V
    .locals 3

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iget v1, p0, Lcom/androlua/GifDecoder;->D:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/androlua/GifDecoder;->D:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/androlua/GifDecoder;->F:Z

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->H:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()V

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->c:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/androlua/GifDecoder;->d:I

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->i:I

    aget v0, v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->j:I

    :cond_2
    return-void
.end method

.method private l()V
    .locals 6

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->p:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->q:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->r:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->s:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->m:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->n:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/androlua/GifDecoder;->o:I

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->m:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/androlua/GifDecoder;->o:I

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v0, p0, Lcom/androlua/GifDecoder;->i:I

    iget v1, p0, Lcom/androlua/GifDecoder;->H:I

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/androlua/GifDecoder;->j:I

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->H:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v4, p0, Lcom/androlua/GifDecoder;->H:I

    aput v2, v1, v4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/androlua/GifDecoder;->h:[I

    if-nez v1, :cond_5

    iput v3, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_5
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->q()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/androlua/GifDecoder;->N:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/androlua/GifDecoder;->N:I

    iget v1, p0, Lcom/androlua/GifDecoder;->width:I

    iget v2, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->a()V

    iget-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v1, :cond_8

    new-instance v1, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v2, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {v1, v2, v4}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v1, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    :goto_4
    iget-object v2, v1, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {v2, v4, v5}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, v1, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    :goto_5
    iget-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v2, p0, Lcom/androlua/GifDecoder;->H:I

    aput v0, v1, v2

    :cond_a
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->p()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iget v1, p0, Lcom/androlua/GifDecoder;->N:I

    invoke-interface {v0, v3, v1}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    return-void
.end method

.method private m()V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->width:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->height:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->c:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/androlua/GifDecoder;->d:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->i:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->l:I

    return-void
.end method

.method private n()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->h()I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/androlua/GifDecoder;->B:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    :cond_1
    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private o()I
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private p()V
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->D:I

    iput v0, p0, Lcom/androlua/GifDecoder;->E:I

    iget v0, p0, Lcom/androlua/GifDecoder;->p:I

    iput v0, p0, Lcom/androlua/GifDecoder;->t:I

    iget v0, p0, Lcom/androlua/GifDecoder;->q:I

    iput v0, p0, Lcom/androlua/GifDecoder;->u:I

    iget v0, p0, Lcom/androlua/GifDecoder;->r:I

    iput v0, p0, Lcom/androlua/GifDecoder;->v:I

    iget v0, p0, Lcom/androlua/GifDecoder;->s:I

    iput v0, p0, Lcom/androlua/GifDecoder;->w:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/androlua/GifDecoder;->j:I

    iput v0, p0, Lcom/androlua/GifDecoder;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/GifDecoder;->D:I

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    return-void
.end method

.method private q()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->h()I

    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    :cond_1
    iput-object v1, p0, Lcom/androlua/GifDecoder;->P:[B

    return-void
.end method

.method public getCurrentFrame()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lcom/androlua/GifDecoder;->G:I

    :cond_0
    iget p1, p0, Lcom/androlua/GifDecoder;->G:I

    return p1
.end method

.method public getDelays()[I
    .locals 4

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget v1, p0, Lcom/androlua/GifDecoder;->N:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/androlua/GifDecoder;->N:I

    if-ge v2, v3, :cond_0

    iget v3, v0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    aput v3, v1, v2

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFrame(I)Lcom/androlua/GifDecoder$GifFrame;
    .locals 2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->e:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    return v0
.end method

.method public next()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->A:Z

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    :goto_0
    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0
.end method

.method public parseOk()Z
    .locals 2

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->c()I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()I

    :cond_1
    return-void
.end method
