.class Lcom/b/a/a/a$a$1;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a$a;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a$a;


# direct methods
.method constructor <init>(Lcom/b/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    aget-object p1, v1, v3

    aget-object v1, v1, v4

    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/b/a/b/h;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/b/a/b/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v1

    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/b/a/b/h;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/b/a/b/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/h;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/h;->d()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/b/a/a/a;->c()Lcom/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/h;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move-object v1, p1

    :cond_9
    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object p1, p1, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {p1, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    if-eqz p2, :cond_0

    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-static {p1}, Lcom/b/a/a/a$a;->a(Lcom/b/a/a/a$a;)Lcom/b/a/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/g;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-virtual {p1}, Lcom/b/a/a/a$a;->clear()V

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/b/a/a/a$a;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object p1, p1, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {p1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/c;->getCaretY()I

    move-result p1

    iget-object v0, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, v0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, v0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, v0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    iget-object v2, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-virtual {v2}, Lcom/b/a/a/a$a;->c()I

    move-result v2

    iget p2, p2, Landroid/widget/Filter$FilterResults;->count:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int v2, v2, p2

    invoke-static {v0, v2}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;I)V

    iget-object p2, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object p2, p2, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    iget-object v0, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, v0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c;->getCaretX()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v1, v1, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {v1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/b/a/a/a;->b(Lcom/b/a/a/a;I)V

    iget-object p2, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object p2, p2, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    iget-object v0, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object v0, v0, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/b/a/a/a;->c(Lcom/b/a/a/a;I)V

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-virtual {p1}, Lcom/b/a/a/a$a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    iget-object p1, p1, Lcom/b/a/a/a$a;->a:Lcom/b/a/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/a;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/a$a$1;->a:Lcom/b/a/a/a$a;

    invoke-virtual {p1}, Lcom/b/a/a/a$a;->notifyDataSetInvalidated()V

    return-void
.end method
