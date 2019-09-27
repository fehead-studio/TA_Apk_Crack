.class public Landroid/widget/PullingLayout$FootView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FootView"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/PullingLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Landroid/widget/PullingLayout$FootView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/PullingLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Landroid/widget/PullingLayout$FootView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/PullingLayout;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Landroid/widget/PullingLayout$FootView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-static {v4, v3}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/PullingLayout$FootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PullingLayout$FootView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/PullingLayout$FootView;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/PullingLayout$PullUpDrawable;

    iget-object v7, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-direct {v6, v7}, Landroid/widget/PullingLayout$PullUpDrawable;-><init>(Landroid/widget/PullingLayout;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v6, v7}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v6

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Landroid/widget/PullingLayout$FootView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PullingLayout$FootView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/PullingLayout$FootView;->b:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/PullingLayout$FootView;->b:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/PullingLayout$LoadingDrawable;

    iget-object v10, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-direct {v9, v10}, Landroid/widget/PullingLayout$LoadingDrawable;-><init>(Landroid/widget/PullingLayout;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-static {v9, v7}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v9

    invoke-virtual {v1, v9, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Landroid/widget/PullingLayout$FootView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PullingLayout$FootView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout$FootView;->c:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-static {v9}, Landroid/widget/PullingLayout;->l(Landroid/widget/PullingLayout;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/PullingLayout$FootView;->c:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Landroid/widget/PullingLayout$FootView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PullingLayout$FootView;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Landroid/widget/PullingLayout$FootView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->a:Landroid/widget/PullingLayout;

    invoke-static {v0, v7}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)I

    move-result v0

    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getLoadingView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPullView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStateText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStateView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$FootView;->d:Landroid/widget/ImageView;

    return-object v0
.end method
