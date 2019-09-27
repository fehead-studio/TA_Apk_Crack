.class public final Lcom/android/cglib/dx/a/b/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/a/b/l;

.field private final b:Lcom/android/cglib/dx/d/a;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    return-void
.end method

.method private a(IJ)V
    .locals 4

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/android/cglib/dx/d/a;->b(I)V

    :goto_0
    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/a;->b(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/a/a;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/a/a;->b()Lcom/android/cglib/dx/c/c/w;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/ap;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/a/a;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/a/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/d;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/ao;->a(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/an;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/d;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/c/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/c/a;)V
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/c/c/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/c/c/b;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/b;->b()Lcom/android/cglib/dx/c/a/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/a/a;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/cglib/dx/c/c/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c;->b()Lcom/android/cglib/dx/c/c/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c$a;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/c/c$a;->a(I)Lcom/android/cglib/dx/c/c/a;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/l;->a(Lcom/android/cglib/dx/c/c/a;)V

    :cond_2
    return-void
.end method

.method public static b(Lcom/android/cglib/dx/c/c/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/cglib/dx/a/b/au;->c(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(IJ)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/android/cglib/dx/d/a;->b(I)V

    :goto_0
    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/a;->b(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    instance-of v0, p0, Lcom/android/cglib/dx/c/c/f;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/u;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/g;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/l;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/q;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/k;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/h;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/v;

    if-eqz v0, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/w;

    if-eqz v0, :cond_8

    const/16 p0, 0x18

    return p0

    :cond_8
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/j;

    if-eqz v0, :cond_9

    const/16 p0, 0x19

    return p0

    :cond_9
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/s;

    if-eqz v0, :cond_a

    const/16 p0, 0x1a

    return p0

    :cond_a
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/i;

    if-eqz v0, :cond_b

    const/16 p0, 0x1b

    return p0

    :cond_b
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/c;

    if-eqz v0, :cond_c

    const/16 p0, 0x1c

    return p0

    :cond_c
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/b;

    if-eqz v0, :cond_d

    const/16 p0, 0x1d

    return p0

    :cond_d
    instance-of v0, p0, Lcom/android/cglib/dx/c/c/m;

    if-eqz v0, :cond_e

    const/16 p0, 0x1e

    return p0

    :cond_e
    instance-of p0, p0, Lcom/android/cglib/dx/c/c/e;

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    return p0

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(IJ)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/android/cglib/dx/d/a;->b(I)V

    :goto_0
    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/a;->b(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/a/a;Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/a/a;->b()Lcom/android/cglib/dx/c/c/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result v4

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  type_idx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/a/a;->b()Lcom/android/cglib/dx/c/c/w;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/cglib/dx/d/a;->e(I)I

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/a/a;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {v3, v2}, Lcom/android/cglib/dx/d/a;->e(I)I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/c/a/d;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/a/d;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/c/c/v;)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/a/d;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v3

    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  elements["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    name_idx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " // "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {v4, v5}, Lcom/android/cglib/dx/d/a;->e(I)I

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/a/b/au;->b(Lcom/android/cglib/dx/c/c/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/c/a;)V

    goto/16 :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->c()V

    :cond_6
    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/c/a;)V
    .locals 3

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/au;->c(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lcom/android/cglib/dx/c/c/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/e;->g()I

    move-result p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/android/cglib/dx/d/a;->b(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {p1, v0}, Lcom/android/cglib/dx/d/a;->b(I)V

    return-void

    :pswitch_2
    iget-object v2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {v2, v0}, Lcom/android/cglib/dx/d/a;->b(I)V

    check-cast p1, Lcom/android/cglib/dx/c/c/b;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/b;->b()Lcom/android/cglib/dx/c/a/a;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/a/a;Z)V

    return-void

    :pswitch_3
    iget-object v2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {v2, v0}, Lcom/android/cglib/dx/d/a;->b(I)V

    check-cast p1, Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {p0, p1, v1}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/c/c;Z)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/cglib/dx/c/c/i;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/i;->f()Lcom/android/cglib/dx/c/c/j;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->l()Lcom/android/cglib/dx/a/b/s;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object v1

    check-cast p1, Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/ae;->b(Lcom/android/cglib/dx/c/c/d;)I

    move-result p1

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->l()Lcom/android/cglib/dx/a/b/s;

    move-result-object v1

    check-cast p1, Lcom/android/cglib/dx/c/c/j;

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/s;->b(Lcom/android/cglib/dx/c/c/j;)I

    move-result p1

    goto :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v1

    check-cast p1, Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result p1

    goto :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/au;->a:Lcom/android/cglib/dx/a/b/l;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v1

    check-cast p1, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/c/c/v;)I

    move-result p1

    :goto_1
    int-to-long v1, p1

    goto :goto_3

    :pswitch_9
    check-cast p1, Lcom/android/cglib/dx/c/c/h;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/h;->h()J

    move-result-wide v1

    goto :goto_2

    :pswitch_a
    check-cast p1, Lcom/android/cglib/dx/c/c/k;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/k;->h()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/android/cglib/dx/a/b/au;->c(IJ)V

    return-void

    :pswitch_b
    check-cast p1, Lcom/android/cglib/dx/c/c/p;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/p;->h()J

    move-result-wide v1

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/cglib/dx/a/b/au;->b(IJ)V

    return-void

    :cond_0
    :pswitch_c
    check-cast p1, Lcom/android/cglib/dx/c/c/p;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/p;->h()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/cglib/dx/a/b/au;->a(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/android/cglib/dx/c/c/c;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c;->b()Lcom/android/cglib/dx/c/c/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c$a;->a()I

    move-result v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {v2, v1}, Lcom/android/cglib/dx/d/a;->e(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/c/c/c$a;->a(I)Lcom/android/cglib/dx/c/c/a;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/a/b/au;->b(Lcom/android/cglib/dx/c/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/au;->b:Lcom/android/cglib/dx/d/a;

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->c()V

    :cond_4
    return-void
.end method
