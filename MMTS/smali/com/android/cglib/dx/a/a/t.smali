.class public final Lcom/android/cglib/dx/a/a/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/a/b;

.field private final b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/t;->a:Lcom/android/cglib/dx/a/b;

    iput p3, p0, Lcom/android/cglib/dx/a/a/t;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/cglib/dx/a/a/t;->d:Z

    iput-boolean p1, p0, Lcom/android/cglib/dx/a/a/t;->e:Z

    return-void
.end method

.method private a(Lcom/android/cglib/dx/a/a/h;Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/j;
    .locals 1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/n;->b(Lcom/android/cglib/dx/a/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->a:Lcom/android/cglib/dx/a/b;

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/k;->a(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/a/b;)Lcom/android/cglib/dx/a/a/j;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static a(Lcom/android/cglib/dx/a/a/f;Lcom/android/cglib/dx/a/a/g$a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/cglib/dx/a/a/g$a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/a/a/f;->a(I)V

    :cond_0
    instance-of v1, v0, Lcom/android/cglib/dx/c/c/r;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/cglib/dx/c/c/r;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/cglib/dx/a/a/g$a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/f;->b(I)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/HashSet;Lcom/android/cglib/dx/a/a/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/c/a;",
            ">;",
            "Lcom/android/cglib/dx/a/a/h;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/cglib/dx/a/a/q;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/cglib/dx/a/a/q;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/q;->b()Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/o;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/cglib/dx/a/a/t;->a(Ljava/util/HashSet;Lcom/android/cglib/dx/c/b/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/cglib/dx/a/a/r;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/r;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/cglib/dx/a/a/t;->a(Ljava/util/HashSet;Lcom/android/cglib/dx/c/b/m;)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/HashSet;Lcom/android/cglib/dx/c/b/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/c/a;",
            ">;",
            "Lcom/android/cglib/dx/c/b/m;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/h;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/h;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    sget-object v2, Lcom/android/cglib/dx/c/d/c;->j:Lcom/android/cglib/dx/c/d/c;

    if-eq p1, v2, :cond_1

    invoke-static {p1}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/c/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private a([Lcom/android/cglib/dx/a/a/j;)V
    .locals 7

    iget v0, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/t;->b([Lcom/android/cglib/dx/a/a/j;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iput v0, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    return-void

    :cond_1
    sub-int v0, v2, v0

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cglib/dx/a/a/h;

    instance-of v6, v5, Lcom/android/cglib/dx/a/a/e;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lcom/android/cglib/dx/a/a/h;->d(I)Lcom/android/cglib/dx/a/a/h;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private static a(Lcom/android/cglib/dx/c/b/m;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/h;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b([Lcom/android/cglib/dx/a/a/j;)I
    .locals 6

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    aget-object v4, p1, v2

    invoke-direct {p0, v3, v4}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/cglib/dx/a/a/t;->d(Lcom/android/cglib/dx/a/a/h;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/cglib/dx/a/a/n;->c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/cglib/dx/a/a/h;->a(Ljava/util/BitSet;)I

    move-result v3

    if-le v3, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    aput-object v5, p1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 5

    instance-of v0, p0, Lcom/android/cglib/dx/a/a/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/cglib/dx/a/a/q;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/q;->b()Lcom/android/cglib/dx/c/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/o;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/cglib/dx/a/a/r;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/r;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    invoke-static {p0}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private c(Lcom/android/cglib/dx/a/a/h;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/a/t;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/s;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/cglib/dx/a/a/t;->d:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/cglib/dx/a/a/t;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/t;->b(Lcom/android/cglib/dx/a/a/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/cglib/dx/a/a/t;->e:Z

    :cond_1
    return-void
.end method

.method private c([Lcom/android/cglib/dx/a/a/j;)V
    .locals 5

    iget v0, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/t;->d([Lcom/android/cglib/dx/a/a/j;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private d(Lcom/android/cglib/dx/a/a/h;)Lcom/android/cglib/dx/a/a/j;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->k()Lcom/android/cglib/dx/a/a/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/cglib/dx/d/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expanded opcode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/cglib/dx/d/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private d([Lcom/android/cglib/dx/a/a/j;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/cglib/dx/a/a/j;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v4

    aget-object v5, p1, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v8, v6

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/cglib/dx/a/a/t;->d(Lcom/android/cglib/dx/a/a/h;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/cglib/dx/a/a/n;->c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/cglib/dx/a/a/h;->b(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/android/cglib/dx/a/a/h;->c(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v8

    invoke-virtual {v3, v6}, Lcom/android/cglib/dx/a/a/h;->d(Ljava/util/BitSet;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v3

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private e()[Lcom/android/cglib/dx/a/a/j;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/cglib/dx/a/a/j;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private f()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/t;->g()V

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/t;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v3, v2}, Lcom/android/cglib/dx/a/a/h;->c(I)V

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->n()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 11

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    instance-of v4, v3, Lcom/android/cglib/dx/a/a/z;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/z;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/j;->b()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/a/e;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/android/cglib/dx/a/a/z;

    sget-object v7, Lcom/android/cglib/dx/a/a/k;->P:Lcom/android/cglib/dx/a/a/j;

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/z;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v8

    sget-object v9, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/z;->b()Lcom/android/cglib/dx/a/a/e;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V

    iget-object v7, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/a/a/e;)Lcom/android/cglib/dx/a/a/z;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_1
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v2
.end method


# virtual methods
.method public a(ILcom/android/cglib/dx/a/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/z;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/a/a/e;)Lcom/android/cglib/dx/a/a/z;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/a/a/g$a;)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/a/h;

    instance-of v2, v1, Lcom/android/cglib/dx/a/a/f;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/cglib/dx/a/a/f;

    invoke-static {v1, p1}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/f;Lcom/android/cglib/dx/a/a/g$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/t;->c(Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/a/t;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/a/t;->e:Z

    return v0
.end method

.method public c()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/c/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/a/h;

    invoke-static {v0, v2}, Lcom/android/cglib/dx/a/a/t;->a(Ljava/util/HashSet;Lcom/android/cglib/dx/a/a/h;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()Lcom/android/cglib/dx/a/a/i;
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/t;->e()[Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/a/t;->a([Lcom/android/cglib/dx/a/a/j;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/a/t;->c([Lcom/android/cglib/dx/a/a/j;)V

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/t;->f()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/t;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/cglib/dx/a/a/t;->f:I

    iget v2, p0, Lcom/android/cglib/dx/a/a/t;->b:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/cglib/dx/a/a/i;->a(Ljava/util/ArrayList;I)Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    return-object v0
.end method
