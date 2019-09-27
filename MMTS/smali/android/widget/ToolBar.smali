.class public Landroid/widget/ToolBar;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ToolBar$OnMenuItemClickListener;,
        Landroid/widget/ToolBar$OnNaviClickListener;,
        Landroid/widget/ToolBar$OnLogoClickListener;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/PopupMenu;

.field private h:Landroid/widget/ToolBar$OnLogoClickListener;

.field private i:Landroid/widget/ToolBar$OnNaviClickListener;

.field private j:Landroid/widget/ToolBar$OnMenuItemClickListener;

.field private k:Landroid/util/DisplayMetrics;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/widget/ToolBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Landroid/widget/ToolBar;->k:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnNaviClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToolBar;->i:Landroid/widget/ToolBar$OnNaviClickListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/ToolBar;->k:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {v0, v2}, Landroid/widget/ToolBar;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/ToolBar;->l:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/widget/ToolBar;->l:I

    iget v4, v0, Landroid/widget/ToolBar;->l:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, v0, Landroid/widget/ToolBar;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/ToolBar;->setMinimumHeight(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    iget-object v3, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    invoke-super {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    iget-object v3, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    const/high16 v5, 0x7f010000

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    invoke-super {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5}, Landroid/widget/ToolBar;->a(F)I

    move-result v6

    mul-int/lit8 v7, v6, 0x4

    invoke-virtual {v3, v7, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v0, Landroid/widget/ToolBar;->l:I

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-super {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-direct {v0, v10}, Landroid/widget/ToolBar;->a(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7}, Landroid/widget/ToolBar;->a(F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/widget/ToolBar;->f:Landroid/widget/LinearLayout;

    iget-object v3, v0, Landroid/widget/ToolBar;->f:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v0, Landroid/widget/ToolBar;->l:I

    const/4 v7, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    iget-object v1, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    invoke-super {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RippleHelper;

    iget-object v2, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/RippleHelper;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RippleHelper;

    iget-object v2, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/RippleHelper;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Landroid/widget/ToolBar;->l:I

    iget v3, v0, Landroid/widget/ToolBar;->l:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, v0, Landroid/widget/ToolBar;->l:I

    int-to-double v10, v3

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double v3, v10, v3

    double-to-int v5, v3

    int-to-float v12, v5

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    div-double v13, v10, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v13

    double-to-int v5, v5

    int-to-float v5, v5

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    mul-double v3, v3, v15

    double-to-int v3, v3

    int-to-float v8, v3

    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    mul-double v3, v3, v13

    double-to-int v3, v3

    int-to-float v7, v3

    move-object v3, v9

    move v4, v12

    move v6, v8

    move/from16 v17, v8

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    mul-double v3, v3, v13

    double-to-int v3, v3

    int-to-float v5, v3

    const-wide/high16 v3, 0x4031000000000000L    # 17.0

    mul-double v3, v3, v13

    double-to-int v3, v3

    int-to-float v7, v3

    move-object v3, v9

    move v4, v12

    move/from16 v6, v17

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double v3, v3, v13

    double-to-int v3, v3

    int-to-float v5, v3

    const-wide/high16 v3, 0x4036000000000000L    # 22.0

    mul-double v13, v13, v3

    double-to-int v3, v13

    int-to-float v7, v3

    move-object v3, v9

    move v4, v12

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v2, v0, Landroid/widget/ToolBar;->l:I

    iget v3, v0, Landroid/widget/ToolBar;->l:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v10, v4

    double-to-int v6, v6

    int-to-float v6, v6

    div-double v7, v10, v15

    double-to-int v9, v7

    int-to-float v9, v9

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    div-double/2addr v10, v12

    double-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v3, v6, v9, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v6, v6, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-double v7, v7, v4

    double-to-int v4, v7

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ToolBar$1;

    invoke-direct {v2, v0}, Landroid/widget/ToolBar$1;-><init>(Landroid/widget/ToolBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ToolBar$2;

    invoke-direct {v2, v0}, Landroid/widget/ToolBar$2;-><init>(Landroid/widget/ToolBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ToolBar$3;

    invoke-direct {v2, v0}, Landroid/widget/ToolBar$3;-><init>(Landroid/widget/ToolBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, v0, Landroid/widget/ToolBar;->g:Landroid/widget/PopupMenu;

    iget-object v1, v0, Landroid/widget/ToolBar;->g:Landroid/widget/PopupMenu;

    new-instance v2, Landroid/widget/ToolBar$4;

    invoke-direct {v2, v0}, Landroid/widget/ToolBar$4;-><init>(Landroid/widget/ToolBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method static synthetic b(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnLogoClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToolBar;->h:Landroid/widget/ToolBar$OnLogoClickListener;

    return-object p0
.end method

.method static synthetic c(Landroid/widget/ToolBar;)Landroid/widget/PopupMenu;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToolBar;->g:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic d(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ToolBar;->j:Landroid/widget/ToolBar$OnMenuItemClickListener;

    return-object p0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ToolBar;->setMenuEnabled(Z)V

    iget-object v0, p0, Landroid/widget/ToolBar;->g:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogoEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMenuEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setNaviEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setNaviIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnLogoClickListener(Landroid/widget/ToolBar$OnLogoClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ToolBar;->h:Landroid/widget/ToolBar$OnLogoClickListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ToolBar$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ToolBar;->j:Landroid/widget/ToolBar$OnMenuItemClickListener;

    return-void
.end method

.method public setOnNaviClickListener(Landroid/widget/ToolBar$OnNaviClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ToolBar;->i:Landroid/widget/ToolBar$OnNaviClickListener;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
