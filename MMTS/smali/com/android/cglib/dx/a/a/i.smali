.class public final Lcom/android/cglib/dx/a/a/i;
.super Lcom/android/cglib/dx/d/h;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    iput p2, p0, Lcom/android/cglib/dx/a/a/i;->a:I

    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)Lcom/android/cglib/dx/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/h;",
            ">;I)",
            "Lcom/android/cglib/dx/a/a/i;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/android/cglib/dx/a/a/i;

    invoke-direct {v1, v0, p1}, Lcom/android/cglib/dx/a/a/i;-><init>(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v1, p1, v2}, Lcom/android/cglib/dx/a/a/i;->a(ILcom/android/cglib/dx/a/a/h;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/i;->e()V

    return-object v1
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/a/a/h;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/i;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/h;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/a/a/h;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/a/i;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/d/a;)V
    .locals 10

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->a()I

    move-result v1

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->b()Z

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/a/a/i;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/h;->n()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v7, "  "

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->d()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/cglib/dx/a/a/h;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    :goto_3
    invoke-interface {p1, v6, v5}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    const-string v5, ""

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_5
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/a/i;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/a/h;

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/d/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object p1

    throw p1

    :cond_5
    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->g()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->b()I

    move-result v0

    if-eq p1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write length mismatch; expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/a/i;->a(I)Lcom/android/cglib/dx/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/h;->m()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/i;->a:I

    return v0
.end method

.method public d()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/a/a/i;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/a/a/h;

    instance-of v5, v4, Lcom/android/cglib/dx/a/a/f;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v5

    instance-of v6, v5, Lcom/android/cglib/dx/c/c/d;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/j;->b()I

    move-result v4

    const/16 v6, 0x71

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    check-cast v5, Lcom/android/cglib/dx/c/c/d;

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/c/c/d;->b(Z)I

    move-result v4

    if-le v4, v3, :cond_3

    move v3, v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method
