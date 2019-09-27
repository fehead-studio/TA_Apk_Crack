.class Landroid/widget/ArrayListAdapter$ArrayFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayListAdapter;Landroid/widget/ArrayListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ArrayListAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v1}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v1}, Landroid/widget/ArrayListAdapter;->b(Landroid/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v4}, Landroid/widget/ArrayListAdapter;->c(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v1}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {p1}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v1}, Landroid/widget/ArrayListAdapter;->d(Landroid/widget/ArrayListAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    iget-object v3, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v3}, Landroid/widget/ArrayListAdapter;->d(Landroid/widget/ArrayListAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v6}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    invoke-virtual {v3, v4}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    :cond_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v1}, Landroid/widget/ArrayListAdapter;->b(Landroid/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v4}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_3
    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {p1}, Landroid/widget/ArrayListAdapter;->b(Landroid/widget/ArrayListAdapter;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-static {v2}, Landroid/widget/ArrayListAdapter;->a(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/widget/ArrayListAdapter;->b(Landroid/widget/ArrayListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/widget/ArrayListAdapter$ArrayFilter;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
