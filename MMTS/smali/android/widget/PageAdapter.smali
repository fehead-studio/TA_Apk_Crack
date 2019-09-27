.class public Landroid/widget/PageAdapter;
.super Landroid/widget/BasePageAdapter;


# instance fields
.field private final a:Landroid/widget/Adapter;

.field private b:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BasePageAdapter;-><init>()V

    iput-object p1, p0, Landroid/widget/PageAdapter;->a:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Landroid/view/View;

    check-cast p1, Landroid/widget/PageView;

    invoke-virtual {p1, p3}, Landroid/widget/PageView;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PageAdapter;->a:Landroid/widget/Adapter;

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p2

    aput-object p3, p1, p2

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/PageAdapter;->a:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/widget/PageAdapter;->a:Landroid/widget/Adapter;

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/PageView;

    iget-object v2, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/PageView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/PageAdapter;->a:Landroid/widget/Adapter;

    iget-object v2, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    aget-object v2, v2, v0

    check-cast p1, Landroid/widget/PageView;

    invoke-interface {v1, p2, v2, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/widget/PageView;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/widget/PageAdapter;->b:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
