.class public final Lcom/android/cglib/dx/a/b/i;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/s;

.field private final b:Lcom/android/cglib/dx/a/a/g;

.field private c:Lcom/android/cglib/dx/a/b/e;

.field private final d:Z

.field private final e:Lcom/android/cglib/dx/c/d/e;

.field private f:Lcom/android/cglib/dx/a/b/k;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/s;Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/d/e;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p4, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    iput-boolean p3, p0, Lcom/android/cglib/dx/a/b/i;->d:Z

    iput-object p4, p0, Lcom/android/cglib/dx/a/b/i;->e:Lcom/android/cglib/dx/c/d/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    return-void
.end method

.method private b(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 1

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/i;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/a/a/i;->a(Lcom/android/cglib/dx/d/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing instructions for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object p1

    throw p1
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/i;->d:Z

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/s;->b(Z)I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->d()I

    move-result v0

    return v0
.end method

.method private h()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->m:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method protected a(Lcom/android/cglib/dx/a/b/ak;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ak;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    new-instance v0, Lcom/android/cglib/dx/a/b/i$1;

    invoke-direct {v0, p0, p1}, Lcom/android/cglib/dx/a/b/i$1;-><init>(Lcom/android/cglib/dx/a/b/i;Lcom/android/cglib/dx/a/b/l;)V

    invoke-virtual {p2, v0}, Lcom/android/cglib/dx/a/a/g;->a(Lcom/android/cglib/dx/a/a/g$a;)V

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {p2, p1}, Lcom/android/cglib/dx/a/b/e;->a(Lcom/android/cglib/dx/a/b/l;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/e;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/i;->b()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/cglib/dx/a/b/i;->a(I)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->n()Lcom/android/cglib/dx/a/b/af;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/g;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/g;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/android/cglib/dx/a/b/k;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    iget-boolean v4, p0, Lcom/android/cglib/dx/a/b/i;->d:Z

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/cglib/dx/a/b/k;-><init>(Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/c/s;)V

    iput-object v2, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/ap;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/cglib/dx/a/b/e;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/b/e;-><init>(Lcom/android/cglib/dx/a/a/g;)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    :cond_3
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/a/b/l;->a(Lcom/android/cglib/dx/c/c/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 13

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/i;->h()I

    move-result v1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/i;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/i;->c()I

    move-result v3

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/i;->b:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/i;->b()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/e;->a()I

    move-result v7

    :goto_1
    iget-object v8, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    invoke-virtual {v8}, Lcom/android/cglib/dx/a/b/k;->e()I

    move-result v8

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/i;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v11}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  registers_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ins_size:       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  outs_size:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  tries_size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  insns_size:     "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/cglib/dx/a/b/i;->e:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v10}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/cglib/dx/a/b/i;->e:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v11}, Lcom/android/cglib/dx/c/d/b;->a(Lcom/android/cglib/dx/c/d/e;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v7}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v8}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v4}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/b/i;->b(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_4
    invoke-interface {p2, v6}, Lcom/android/cglib/dx/d/a;->c(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/i;->c:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v1, p1, p2}, Lcom/android/cglib/dx/a/b/e;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    if-eqz v0, :cond_7

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->f:Lcom/android/cglib/dx/a/b/k;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/cglib/dx/a/b/k;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/i;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
