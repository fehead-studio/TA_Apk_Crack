.class public Landroid/widget/ArrayPageAdapter;
.super Landroid/widget/BasePageAdapter;


# instance fields
.field public mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BasePageAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BasePageAdapter;-><init>()V

    iput-object p1, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BasePageAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/PageView;

    iget-object p3, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/PageView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public insert(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/widget/PageView;

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/PageView;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

.method public remove(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public remove(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayPageAdapter;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
