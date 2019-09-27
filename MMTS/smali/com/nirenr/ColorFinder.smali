.class public Lcom/nirenr/ColorFinder;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[[I

.field private d:[[F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/nirenr/ColorFinder;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/ColorFinder;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(II[[IIII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    if-ge v0, v1, :cond_3

    aget-object v1, p3, p1

    add-int v2, p2, v0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    add-int v1, p1, p6

    aget-object v3, p3, v1

    aget v3, v3, v2

    if-nez v3, :cond_1

    add-int/2addr v1, p5

    aget-object v1, p3, v1

    aget v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, p4, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    iget p1, p0, Lcom/nirenr/ColorFinder;->b:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p4

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nirenr/ColorFinder;->a:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v7, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v8, p0, Lcom/nirenr/ColorFinder;->b:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget p1, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {p1, v1}, [I

    move-result-object p1

    const-class v1, I

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcom/nirenr/ColorFinder;->c:[[I

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    mul-int v4, v4, v1

    add-int/2addr v4, v2

    aget v4, v0, v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public find(I)Lcom/nirenr/Point;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, v2, v1}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(III)Lcom/nirenr/Point;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    shl-int/lit8 v4, v3, 0x8

    ushr-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v5, v5, 0x18

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    if-ne v4, p1, :cond_0

    if-ne v5, p2, :cond_0

    if-ne v3, p3, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, v2, v1}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(IIII)Lcom/nirenr/Point;
    .locals 8

    sub-int v0, p1, p4

    add-int/2addr p1, p4

    sub-int v1, p2, p4

    add-int/2addr p2, p4

    sub-int v2, p3, p4

    add-int/2addr p3, p4

    const/4 p4, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v5, v5, v4

    aget v5, v5, v3

    shl-int/lit8 v6, v5, 0x8

    ushr-int/lit8 v6, v6, 0x18

    shl-int/lit8 v7, v5, 0x10

    ushr-int/lit8 v7, v7, 0x18

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    if-lt v6, v0, :cond_0

    if-gt v6, p1, :cond_0

    if-lt v7, v1, :cond_0

    if-gt v7, p2, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, p3, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, v4, v3}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(IIIII)Lcom/nirenr/Point;
    .locals 2

    :goto_0
    if-ge p2, p4, :cond_2

    move v0, p1

    :goto_1
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v1, v1, v0

    aget v1, v1, p2

    if-ne v1, p5, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, v0, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(IIIIIII)Lcom/nirenr/Point;
    .locals 4

    :goto_0
    if-ge p2, p4, :cond_2

    move v0, p1

    :goto_1
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v1, v1, v0

    aget v1, v1, p2

    shl-int/lit8 v2, v1, 0x8

    ushr-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v1, 0x10

    ushr-int/lit8 v3, v3, 0x18

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    if-ne v2, p5, :cond_0

    if-ne v3, p6, :cond_0

    if-ne v1, p7, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, v0, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(IIIIIIII)Lcom/nirenr/Point;
    .locals 6

    sub-int v0, p5, p8

    add-int/2addr p5, p8

    sub-int v1, p6, p8

    add-int/2addr p6, p8

    sub-int v2, p7, p8

    add-int/2addr p7, p8

    :goto_0
    if-ge p2, p4, :cond_2

    move p8, p1

    :goto_1
    if-ge p8, p3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, p8

    aget v3, v3, p2

    shl-int/lit8 v4, v3, 0x8

    ushr-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v5, v5, 0x18

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    if-lt v4, v0, :cond_0

    if-gt v4, p5, :cond_0

    if-lt v5, v1, :cond_0

    if-gt v5, p6, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, p7, :cond_0

    new-instance p1, Lcom/nirenr/Point;

    invoke-direct {p1, p8, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/nirenr/Point;-><init>(II)V

    return-object p1
.end method

.method public find(IIIIIIII[Lcom/nirenr/ColorPoint;)Lcom/nirenr/Point;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p9

    sub-int v6, p5, p8

    add-int v1, p5, p8

    sub-int v7, p6, p8

    add-int v2, p6, p8

    sub-int v8, p7, p8

    add-int v3, p7, p8

    move/from16 v9, p2

    move/from16 v4, p4

    :goto_0
    if-ge v9, v4, :cond_5

    move/from16 v11, p1

    move/from16 v10, p3

    :goto_1
    if-ge v11, v10, :cond_4

    iget-object v12, v0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v12, v12, v11

    aget v12, v12, v9

    shl-int/lit8 v13, v12, 0x8

    ushr-int/lit8 v13, v13, 0x18

    shl-int/lit8 v14, v12, 0x10

    ushr-int/lit8 v14, v14, 0x18

    shl-int/lit8 v12, v12, 0x18

    ushr-int/lit8 v12, v12, 0x18

    if-lt v13, v6, :cond_2

    if-gt v13, v1, :cond_2

    if-lt v14, v7, :cond_2

    if-gt v14, v2, :cond_2

    if-lt v12, v8, :cond_2

    if-gt v12, v3, :cond_2

    array-length v12, v5

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_1

    aget-object v15, v5, v14

    iget-object v13, v0, Lcom/nirenr/ColorFinder;->c:[[I

    move/from16 v0, p1

    move/from16 v16, v1

    move/from16 v1, p2

    invoke-virtual {v15, v13, v0, v1}, Lcom/nirenr/ColorPoint;->check([[III)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_2

    :cond_1
    move/from16 v0, p1

    move/from16 v16, v1

    move/from16 v1, p2

    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_3

    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v11, v9}, Lcom/nirenr/Point;-><init>(II)V

    return-object v0

    :cond_2
    move/from16 v0, p1

    move/from16 v16, v1

    move/from16 v1, p2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    move/from16 v0, p1

    move/from16 v16, v1

    move/from16 v1, p2

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/nirenr/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/nirenr/Point;-><init>(II)V

    return-object v0
.end method

.method public find(IIIIIIII[[I)Lcom/nirenr/Point;
    .locals 12

    move-object/from16 v0, p9

    array-length v1, v0

    new-array v11, v1, [Lcom/nirenr/ColorPoint;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/nirenr/ColorPoint;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lcom/nirenr/ColorPoint;-><init>([I)V

    aput-object v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/nirenr/ColorFinder;->find(IIIIIIII[Lcom/nirenr/ColorPoint;)Lcom/nirenr/Point;

    move-result-object v0

    return-object v0
.end method

.method public find(Lcom/nirenr/Color;)Lcom/nirenr/Point;
    .locals 2

    iget v0, p1, Lcom/nirenr/Color;->red:I

    iget v1, p1, Lcom/nirenr/Color;->green:I

    iget p1, p1, Lcom/nirenr/Color;->blue:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/nirenr/ColorFinder;->find(III)Lcom/nirenr/Point;

    move-result-object p1

    return-object p1
.end method

.method public find(Lcom/nirenr/Color;I)Lcom/nirenr/Point;
    .locals 2

    iget v0, p1, Lcom/nirenr/Color;->red:I

    iget v1, p1, Lcom/nirenr/Color;->green:I

    iget p1, p1, Lcom/nirenr/Color;->blue:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/nirenr/ColorFinder;->find(IIII)Lcom/nirenr/Point;

    move-result-object p1

    return-object p1
.end method

.method public find(Lcom/nirenr/Point;Lcom/nirenr/Point;Lcom/nirenr/Color;)Lcom/nirenr/Point;
    .locals 8

    iget v1, p1, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    iget v3, p2, Lcom/nirenr/Point;->x:I

    iget v4, p2, Lcom/nirenr/Point;->y:I

    iget v5, p3, Lcom/nirenr/Color;->red:I

    iget v6, p3, Lcom/nirenr/Color;->green:I

    iget v7, p3, Lcom/nirenr/Color;->blue:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/nirenr/ColorFinder;->find(IIIIIII)Lcom/nirenr/Point;

    move-result-object p1

    return-object p1
.end method

.method public find(Lcom/nirenr/Point;Lcom/nirenr/Point;Lcom/nirenr/Color;I)Lcom/nirenr/Point;
    .locals 9

    iget v1, p1, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    iget v3, p2, Lcom/nirenr/Point;->x:I

    iget v4, p2, Lcom/nirenr/Point;->y:I

    iget v5, p3, Lcom/nirenr/Color;->red:I

    iget v6, p3, Lcom/nirenr/Color;->green:I

    iget v7, p3, Lcom/nirenr/Color;->blue:I

    move-object v0, p0

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->find(IIIIIIII)Lcom/nirenr/Point;

    move-result-object p1

    return-object p1
.end method

.method public findLine(FI)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int/lit8 v1, p2, 0x10

    sub-int v5, v0, v1

    mul-int/lit8 v7, p2, 0x8

    mul-int/lit8 v8, p2, 0x4

    const/16 v3, 0xa

    move-object v1, p0

    move v6, p1

    move v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public findLine(FII)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FII)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    sub-int v5, v0, p2

    :goto_0
    mul-int/lit8 v8, p3, 0x4

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v3, v0, 0x3

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v5, p0, Lcom/nirenr/ColorFinder;->a:I

    goto :goto_0
.end method

.method public findLine(FIII)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIII)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    sub-int v5, v0, p2

    :goto_0
    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v3, v0, 0x3

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v5, p0, Lcom/nirenr/ColorFinder;->a:I

    goto :goto_0
.end method

.method public findLine(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    add-int/lit8 v4, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int/lit8 v1, p1, 0x10

    sub-int v5, v0, v1

    mul-int/lit8 v7, p1, 0x8

    mul-int/lit8 v8, p1, 0x4

    const/16 v3, 0xa

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v1, p0

    move v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public findLine(IIIIFIII)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIFIII)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    iget-object v0, v7, Lcom/nirenr/ColorFinder;->d:[[F

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, v7, Lcom/nirenr/ColorFinder;->a:I

    iget v2, v7, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, F

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, v7, Lcom/nirenr/ColorFinder;->d:[[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v7, Lcom/nirenr/ColorFinder;->b:I

    if-ge v2, v4, :cond_1

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    iget v5, v7, Lcom/nirenr/ColorFinder;->a:I

    if-ge v3, v5, :cond_0

    iget-object v5, v7, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v5, v5, v3

    aget v5, v5, v2

    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v5, v7, Lcom/nirenr/ColorFinder;->d:[[F

    aget-object v5, v5, v3

    const/4 v6, 0x2

    aget v8, v0, v6

    aput v8, v5, v2

    aget v5, v0, v6

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    iget v0, v7, Lcom/nirenr/ColorFinder;->a:I

    iget v2, v7, Lcom/nirenr/ColorFinder;->b:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, v7, Lcom/nirenr/ColorFinder;->e:F

    :cond_2
    iget v0, v7, Lcom/nirenr/ColorFinder;->a:I

    iget v2, v7, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [[I

    iget v0, v7, Lcom/nirenr/ColorFinder;->e:F

    mul-float v0, v0, p5

    const/4 v2, 0x0

    :goto_2
    iget v3, v7, Lcom/nirenr/ColorFinder;->b:I

    const/4 v9, 0x1

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    :goto_3
    iget v4, v7, Lcom/nirenr/ColorFinder;->a:I

    if-ge v3, v4, :cond_4

    iget v4, v7, Lcom/nirenr/ColorFinder;->a:I

    iget-object v4, v7, Lcom/nirenr/ColorFinder;->d:[[F

    aget-object v4, v4, v3

    aget v4, v4, v2

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    aget-object v4, v8, v3

    aput v9, v4, v2

    goto :goto_4

    :cond_3
    aget-object v4, v8, v3

    aput v1, v4, v2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v12, p1

    move/from16 v11, p3

    :goto_5
    if-ge v12, v11, :cond_8

    move/from16 v14, p2

    move/from16 v13, p4

    :goto_6
    if-ge v14, v13, :cond_7

    move-object v0, v7

    move v1, v12

    move v2, v14

    move-object v3, v8

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/nirenr/ColorFinder;->a(II[[IIII)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_6

    add-int v12, v12, p8

    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v12

    invoke-direct {v2, v12, v14, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/2addr v12, v9

    goto :goto_5

    :cond_8
    return-object v10
.end method

.method public getPixels()[[I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    return-object v0
.end method
