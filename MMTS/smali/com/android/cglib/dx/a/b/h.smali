.class public final Lcom/android/cglib/dx/a/b/h;
.super Lcom/android/cglib/dx/a/b/as;


# instance fields
.field private final a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/cglib/dx/c/d/c;",
            "Lcom/android/cglib/dx/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    const-string v0, "class_defs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/cglib/dx/a/b/as;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/d/c;II)I
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    if-gez p3, :cond_1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "class circularity with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/g;->d()Lcom/android/cglib/dx/c/c/w;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/b/h;->a(Lcom/android/cglib/dx/c/d/c;II)I

    move-result p2

    :cond_2
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/g;->e()Lcom/android/cglib/dx/c/d/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p1, v2}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/android/cglib/dx/a/b/h;->a(Lcom/android/cglib/dx/c/d/c;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/g;->a(I)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    :cond_4
    return p2
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->b:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/g;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/g;->c()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/h;->j()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "clazz == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/h;->i()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/h;->g()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class_defs_size: "

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

    const-string v4, "class_defs_off:  "

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

.method protected b()V
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/cglib/dx/a/b/h;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/h;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/c/d/c;

    sub-int v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/cglib/dx/a/b/h;->a(Lcom/android/cglib/dx/c/d/c;II)I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method
