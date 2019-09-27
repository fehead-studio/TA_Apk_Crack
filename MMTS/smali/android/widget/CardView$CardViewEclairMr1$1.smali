.class Landroid/widget/CardView$CardViewEclairMr1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CardView$CardViewEclairMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CardView$CardViewEclairMr1;


# direct methods
.method constructor <init>(Landroid/widget/CardView$CardViewEclairMr1;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v3, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v2

    sub-float v11, v3, v9

    cmpl-float v2, p3, v9

    const/4 v12, 0x0

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v13, p3, v2

    iget-object v1, v0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    iget-object v1, v1, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    neg-float v2, v13

    invoke-virtual {v1, v2, v2, v13, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    iget-object v2, v1, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object v1, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    iget-object v2, v1, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    iget-object v2, v1, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/widget/CardView$CardViewEclairMr1$1;->a:Landroid/widget/CardView$CardViewEclairMr1;

    iget-object v2, v1, Landroid/widget/CardView$CardViewEclairMr1;->a:Landroid/graphics/RectF;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    sub-float v2, v1, v9

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v5, v1, v13

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    sub-float v2, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    add-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v4, v1, v9

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move/from16 v13, p3

    :goto_0
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v13, v9

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v1

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    add-float v5, v1, v9

    move-object v1, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
