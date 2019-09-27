.class public final Lcom/android/cglib/dx/a/b/ao;
.super Lcom/android/cglib/dx/a/b/as;


# instance fields
.field private final a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/cglib/dx/c/c/v;",
            "Lcom/android/cglib/dx/a/b/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/cglib/dx/a/b/as;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/an;)Lcom/android/cglib/dx/a/b/an;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ao;->j()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/an;->c()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/an;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/an;
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/b/an;

    invoke-direct {v0, p1}, Lcom/android/cglib/dx/a/b/an;-><init>(Lcom/android/cglib/dx/c/c/v;)V

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/b/ao;->a(Lcom/android/cglib/dx/a/b/an;)Lcom/android/cglib/dx/a/b/an;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/c/a;)Lcom/android/cglib/dx/a/b/w;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ao;->i()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    check-cast p1, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/w;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/cglib/dx/a/b/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/cglib/dx/c/c/v;)I
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ao;->i()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/an;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/an;->g()I

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/an;

    invoke-virtual {v2, v1}, Lcom/android/cglib/dx/a/b/an;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/android/cglib/dx/d/a;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ao;->i()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/ao;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/ao;->g()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string_ids_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string_ids_off:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method
