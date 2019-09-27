.class public final Lcom/android/cglib/dx/a/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/a/a/u;

.field private final b:Lcom/android/cglib/dx/a/a/p;

.field private final c:Lcom/android/cglib/dx/d/d;

.field private final d:Lcom/android/cglib/dx/a/b/l;

.field private final e:I

.field private final f:I

.field private final g:Lcom/android/cglib/dx/c/d/a;

.field private final h:Z

.field private i:I

.field private j:I

.field private k:Lcom/android/cglib/dx/d/a;

.field private l:Ljava/io/PrintWriter;

.field private m:Ljava/lang/String;

.field private n:Z

.field private final o:[Lcom/android/cglib/dx/a/a/p$b;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/u;Lcom/android/cglib/dx/a/a/p;Lcom/android/cglib/dx/a/b/l;IIZLcom/android/cglib/dx/c/c/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/a/u;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/j;->d:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {p7}, Lcom/android/cglib/dx/c/c/s;->f()Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->g:Lcom/android/cglib/dx/c/d/a;

    iput-boolean p6, p0, Lcom/android/cglib/dx/a/b/j;->h:Z

    iput p4, p0, Lcom/android/cglib/dx/a/b/j;->e:I

    iput p5, p0, Lcom/android/cglib/dx/a/b/j;->f:I

    new-instance p1, Lcom/android/cglib/dx/d/d;

    invoke-direct {p1}, Lcom/android/cglib/dx/d/d;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    new-array p1, p5, [Lcom/android/cglib/dx/a/a/p$b;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    return-void
.end method

.method private a(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/p;->a()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_5

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/p;->a(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v1

    iget v2, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/p;->a(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aput-object p1, v4, v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/cglib/dx/a/a/p$b;->b(Lcom/android/cglib/dx/a/a/p$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/p$b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->b(Lcom/android/cglib/dx/a/a/p$b;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->c(Lcom/android/cglib/dx/a/a/p$b;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->b()Lcom/android/cglib/dx/a/a/p$a;

    move-result-object v1

    sget-object v3, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    if-eq v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->e(Lcom/android/cglib/dx/a/a/p$b;)V

    :cond_4
    :goto_1
    move p1, v2

    goto :goto_0

    :cond_5
    return p1
.end method

.method private static a(II)I
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_1

    const/16 v1, 0xa

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(ILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result v1

    iget v2, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/u$a;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private a(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()Lcom/android/cglib/dx/c/c/v;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/w;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/j;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/android/cglib/dx/a/a/u$a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->b()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/s;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result p1

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/j;->b(I)V

    const/4 v0, 0x0

    :cond_2
    invoke-static {v0, p1}, Lcom/android/cglib/dx/a/b/j;->a(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->c(I)V

    invoke-static {v0, v2}, Lcom/android/cglib/dx/a/b/j;->a(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/j;->b(I)V

    invoke-static {v2, v2}, Lcom/android/cglib/dx/a/b/j;->a(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v3, v1}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    iget v0, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "%04x: line %d"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/c/v;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->d:Lcom/android/cglib/dx/a/b/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->d:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/c/c/v;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/d/d;->e(I)I

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/d/d;->e(I)I

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/c/w;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->d:Lcom/android/cglib/dx/a/b/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->d:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/d/d;->e(I)I

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/d/d;->e(I)I

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/p$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->b()Lcom/android/cglib/dx/c/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/s;->a()I

    move-result p1

    iput p1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/d/d;->e(I)I

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result p1

    sub-int/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line_start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->d()I

    move-result p1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/b;->a()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/cglib/dx/a/b/j;->h:Z

    if-nez v5, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v7

    if-ne p1, v7, :cond_4

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aput-object v6, v5, p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget-object v5, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v5}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v5

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v6, v4}, Lcom/android/cglib/dx/d/d;->e(I)I

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v6}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v6

    sub-int/2addr v6, v5

    const-string v5, "parameters_size: %04x"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_7
    move v1, p1

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v4, :cond_f

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/c/d/b;->b(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v6}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v10

    if-ne v1, v10, :cond_8

    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-direct {p0, v9}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/p$b;->d()Lcom/android/cglib/dx/c/c/v;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    :goto_3
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aput-object v8, v7, v1

    goto :goto_4

    :cond_a
    move-object v8, v9

    :goto_4
    if-nez v8, :cond_b

    invoke-direct {p0, v9}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    :cond_b
    if-eqz v0, :cond_e

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/p$b;->d()Lcom/android/cglib/dx/c/c/v;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_d
    :goto_5
    const-string v7, "<unnamed>"

    :goto_6
    iget-object v8, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v8}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v8

    sub-int/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parameter "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {v5}, Lcom/android/cglib/dx/c/d/c;->g()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->o:[Lcom/android/cglib/dx/a/a/p$b;

    array-length p2, p1

    :goto_7
    if-ge v2, p2, :cond_12

    aget-object v0, p1, v2

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/j;->d(Lcom/android/cglib/dx/a/a/p$b;)V

    :cond_11
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/d/d;->f(I)I

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v0, "line = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/cglib/dx/a/b/j;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->d(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b()[B
    .locals 10

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "%04x: prologue end"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/p;->a()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/cglib/dx/a/b/j;->a(I)I

    move-result v2

    invoke-direct {p0, v4, v0}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/util/ArrayList;)I

    move-result v4

    const v5, 0x7fffffff

    if-ge v2, v3, :cond_2

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v6, v2}, Lcom/android/cglib/dx/a/a/p;->a(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v6

    goto :goto_1

    :cond_2
    const v6, 0x7fffffff

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result v7

    goto :goto_2

    :cond_3
    const v7, 0x7fffffff

    :goto_2
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v5, :cond_4

    goto :goto_3

    :cond_4
    iget v9, p0, Lcom/android/cglib/dx/a/b/j;->e:I

    if-ne v8, v9, :cond_5

    if-ne v6, v5, :cond_5

    if-ne v7, v5, :cond_5

    :goto_3
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->f()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->f()[B

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v8, v7, :cond_6

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/a/a/u$a;

    invoke-direct {p0, v4}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/u$a;)V

    move v4, v5

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v8}, Lcom/android/cglib/dx/a/b/j;->c(I)V

    goto :goto_0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/a/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/a/u;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/u;->a()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/a/u;

    invoke-virtual {v3, v1}, Lcom/android/cglib/dx/a/a/u;->a(I)Lcom/android/cglib/dx/a/a/u$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/cglib/dx/a/b/j$1;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/a/b/j$1;-><init>(Lcom/android/cglib/dx/a/b/j;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/d/d;->e(I)I

    iget v1, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v0, "%04x: advance pc"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->d(Lcom/android/cglib/dx/a/a/p$b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->d(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()Lcom/android/cglib/dx/c/c/v;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/w;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/w;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private d()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/b/j;->f:I

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/b;->b()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/j;->h:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private d(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed value where unsigned required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/d/d;->e(I)I

    return-void
.end method

.method private d(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->d(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()Lcom/android/cglib/dx/c/c/v;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/w;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/w;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->e()Lcom/android/cglib/dx/c/c/v;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/c/c/v;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private e()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/p$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->d()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/android/cglib/dx/a/b/j;->f:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/p;->a()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/a/a/p;->a(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v6

    if-ge v6, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v6, v1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/cglib/dx/a/b/j$2;

    invoke-direct {v1, p0}, Lcom/android/cglib/dx/a/b/j$2;-><init>(Lcom/android/cglib/dx/a/b/j;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private e(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->e(I)I

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/d;->g()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/cglib/dx/a/b/j;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/j;->a(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->c:Lcom/android/cglib/dx/d/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d;->b(I)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/j;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/j;->b()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/j;->l:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/j;->k:Lcom/android/cglib/dx/d/a;

    iput-boolean p4, p0, Lcom/android/cglib/dx/a/b/j;->n:Z

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/j;->a()[B

    move-result-object p1

    return-object p1
.end method
