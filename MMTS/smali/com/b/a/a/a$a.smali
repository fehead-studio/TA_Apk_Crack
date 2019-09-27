.class Lcom/b/a/a/a$a;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a;

.field private b:I

.field private c:Lcom/b/a/b/g;

.field private d:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/b/a/b/g;

    invoke-direct {p1}, Lcom/b/a/b/g;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a$a;->c:Lcom/b/a/b/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/b/a/a/a$a;->setNotifyOnChange(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/a$a;->d:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a$a;)Lcom/b/a/b/g;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/a$a;->c:Lcom/b/a/b/g;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a$a;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a$a;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->b()V

    return-void
.end method

.method public c()I
    .locals 3

    iget v0, p0, Lcom/b/a/a/a$a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/a/a$a;->b:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/a$a;->b:I

    iget v0, p0, Lcom/b/a/a/a$a;->b:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/b/a/a/a$a$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/a$a$1;-><init>(Lcom/b/a/a/a$a;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {p2}, Lcom/b/a/a/a;->d(Lcom/b/a/a/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
