.class public final Lcom/android/cglib/dx/a/a/a/v;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/v;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/v;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/v;->b:Lcom/android/cglib/dx/a/a/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/n;-><init>()V

    return-void
.end method

.method private static d(Lcom/android/cglib/dx/c/b/n;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/cglib/dx/a/a/a/v;->b(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method

.method private static e(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/n;
    .locals 7

    invoke-static {p0}, Lcom/android/cglib/dx/a/a/a/v;->d(Lcom/android/cglib/dx/c/b/n;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v2, v0}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/android/cglib/dx/c/d/c;->i:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v4, v6}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->e()V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/a/v;->e(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/a/v;->a(Lcom/android/cglib/dx/c/b/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/v;->f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 9

    move-object v0, p2

    check-cast v0, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/f;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cglib/dx/a/a/a/v;->e(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x2

    if-le v2, v6, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x3

    if-le v2, v7, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x4

    if-le v2, v8, :cond_4

    invoke-virtual {v1, v8}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    :cond_4
    invoke-static {v3, v2}, Lcom/android/cglib/dx/a/a/a/v;->b(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/cglib/dx/a/a/a/v;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    int-to-short v0, v0

    invoke-static {v4, v5, v6, v7}, Lcom/android/cglib/dx/a/a/a/v;->a(IIII)S

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/cglib/dx/a/a/a/v;->a(Lcom/android/cglib/dx/d/a;SSS)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/v;->g(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->c()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/a/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    instance-of v2, v0, Lcom/android/cglib/dx/c/c/s;

    if-nez v2, :cond_2

    instance-of v0, v0, Lcom/android/cglib/dx/c/c/w;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/v;->d(Lcom/android/cglib/dx/c/b/n;)I

    move-result p1

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/android/cglib/dx/a/a/a/v;->b(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
