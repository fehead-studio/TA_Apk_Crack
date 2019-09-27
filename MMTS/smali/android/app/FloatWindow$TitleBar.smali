.class Landroid/app/FloatWindow$TitleBar;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleBar"
.end annotation


# instance fields
.field final synthetic a:Landroid/app/FloatWindow;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Landroid/app/FloatWindow$TitleBar;->a:Landroid/app/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/app/FloatWindow$TitleView;

    invoke-direct {v0, p1, p2}, Landroid/app/FloatWindow$TitleView;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow$TitleBar;->b:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/app/FloatWindow$TitleBar;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p2, "X"

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x440000ff

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p1}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v2, 0x88

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p2, Landroid/app/FloatWindow$TitleBar$1;

    invoke-direct {p2, p0, p1}, Landroid/app/FloatWindow$TitleBar$1;-><init>(Landroid/app/FloatWindow$TitleBar;Landroid/app/FloatWindow;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroid/app/FloatWindow$TitleBar;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p1, v2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;F)I

    move-result v3

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, v1}, Landroid/app/FloatWindow$TitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;F)I

    move-result v1

    invoke-static {p1, v2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;F)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2}, Landroid/app/FloatWindow$TitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow$TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
