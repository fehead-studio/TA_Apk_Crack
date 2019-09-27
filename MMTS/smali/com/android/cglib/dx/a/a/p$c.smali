.class public Lcom/android/cglib/dx/a/a/p$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/android/cglib/dx/c/b/o;

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    iput p1, p0, Lcom/android/cglib/dx/a/a/p$c;->e:I

    return-void
.end method

.method private static a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->j:Lcom/android/cglib/dx/c/d/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->o:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/m;->a(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/cglib/dx/a/a/p$c;->e:I

    if-ne p1, v3, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/android/cglib/dx/a/a/p$c;->e:I

    if-ge p1, v3, :cond_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    array-length p1, p1

    if-lt p2, p1, :cond_5

    :cond_3
    add-int/2addr p2, v1

    new-instance p1, Lcom/android/cglib/dx/c/b/o;

    invoke-direct {p1, p2}, Lcom/android/cglib/dx/c/b/o;-><init>(I)V

    new-array p2, p2, [I

    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/c/b/o;->a(Lcom/android/cglib/dx/c/b/o;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    array-length v1, v1

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    :cond_5
    return-void
.end method

.method private a(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V
    .locals 3

    invoke-virtual {p3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/cglib/dx/a/a/p$b;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/cglib/dx/a/a/p$b;-><init>(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1, p3}, Lcom/android/cglib/dx/c/b/o;->c(Lcom/android/cglib/dx/c/b/m;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1, p3}, Lcom/android/cglib/dx/c/b/o;->b(Lcom/android/cglib/dx/c/b/m;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    iget-object p2, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    return-void
.end method

.method private b(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V
    .locals 3

    sget-object v0, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    if-ne p2, v0, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$b;->h()Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/cglib/dx/c/b/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/a/a/p$a;)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1, p3}, Lcom/android/cglib/dx/c/b/o;->b(Lcom/android/cglib/dx/c/b/m;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/a/a/p$a;)V

    return-void
.end method

.method private c(ILcom/android/cglib/dx/c/b/m;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/p$b;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v4

    if-eq v4, p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v3, p2}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v3, p2}, Lcom/android/cglib/dx/c/b/o;->b(Lcom/android/cglib/dx/c/b/m;)V

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/cglib/dx/a/a/p$b;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/p$b;->h()Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    if-ne v3, p2, :cond_4

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    aput v0, v2, p2

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result p2

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/cglib/dx/a/a/p$a;->b:Lcom/android/cglib/dx/a/a/p$a;

    invoke-virtual {v4, p2}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/a/a/p$a;)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v1
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/a/p;
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v1, v0}, Lcom/android/cglib/dx/a/a/p$c;->a(II)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    sub-int v2, v1, v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/cglib/dx/a/a/p;->a:Lcom/android/cglib/dx/a/a/p;

    return-object v0

    :cond_0
    new-array v3, v2, [Lcom/android/cglib/dx/a/a/p$b;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cglib/dx/a/a/p$b;

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Lcom/android/cglib/dx/a/a/p;

    invoke-direct {v1, v2}, Lcom/android/cglib/dx/a/a/p;-><init>(I)V

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {v1, v0, v4}, Lcom/android/cglib/dx/a/a/p;->a(ILcom/android/cglib/dx/a/a/p$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p;->e()V

    return-object v1
.end method

.method public a(ILcom/android/cglib/dx/c/b/m;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {p2}, Lcom/android/cglib/dx/a/a/p$c;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/a/p$c;->a(II)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/cglib/dx/c/b/m;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v2, p2}, Lcom/android/cglib/dx/c/b/o;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/cglib/dx/a/a/p$a;->d:Lcom/android/cglib/dx/a/a/p$a;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    :cond_1
    iget-object v2, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    aget v2, v2, v0

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v3

    if-ne v3, p1, :cond_4

    invoke-virtual {v1, p2}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/cglib/dx/a/a/p$c;->b:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/c/b/o;->c(Lcom/android/cglib/dx/c/b/m;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_3
    sget-object v3, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    invoke-virtual {v1, v3}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/a/a/p$a;)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v1

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/p$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/m;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/cglib/dx/a/a/p$a;->f:Lcom/android/cglib/dx/a/a/p$a;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    :cond_5
    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->e:Lcom/android/cglib/dx/a/a/p$a;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    :cond_6
    sget-object v0, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    return-void
.end method

.method public a(ILcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/a/a/p$a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {p2}, Lcom/android/cglib/dx/a/a/p$c;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/a/p$c;->a(II)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$c;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/a/p$c;->c(ILcom/android/cglib/dx/c/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    return-void
.end method

.method public a(ILcom/android/cglib/dx/c/b/o;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/o;->a()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/cglib/dx/a/a/p$c;->a(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/p$c;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v2, v1}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cglib/dx/a/a/p$c;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/c/b/m;)V

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/c/b/m;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/cglib/dx/c/b/m;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/c/b/m;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(ILcom/android/cglib/dx/c/b/m;)V
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/a/p$a;->b:Lcom/android/cglib/dx/a/a/p$a;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/a/a/p$a;)V

    return-void
.end method
