.class public final Lcom/android/cglib/dx/a/a/a/h;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/h;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/h;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/h;->b:Lcom/android/cglib/dx/a/a/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/c/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/h;->a(Lcom/android/cglib/dx/c/c/p;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/c/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/p;->g()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    :goto_0
    int-to-short v1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/p;->h()J

    move-result-wide v3

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/a/h;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/android/cglib/dx/a/a/a/h;->a(Lcom/android/cglib/dx/d/a;SS)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p2

    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/c/p;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    :goto_0
    invoke-static {p1, p2}, Lcom/android/cglib/dx/a/a/a/h;->a(Lcom/android/cglib/dx/c/c/p;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    instance-of v1, p1, Lcom/android/cglib/dx/a/a/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v1

    invoke-static {v1}, Lcom/android/cglib/dx/a/a/a/h;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    instance-of v1, p1, Lcom/android/cglib/dx/c/c/p;

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/c/c/p;

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/p;->g()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/p;->h()J

    move-result-wide v0

    const-wide v4, 0xffffffffffffL

    and-long v6, v0, v4

    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-nez p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/h;->d(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method
