.class public final Lcom/android/cglib/dx/a/b/am;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/v;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/v;)V
    .locals 2

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/am;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    return-void
.end method

.method private static a(Lcom/android/cglib/dx/c/c/v;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/v;->j()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/v;->i()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/am;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/v;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->n:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 0

    return-void
.end method

.method public a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/v;->h()Lcom/android/cglib/dx/d/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->j()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utf16_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->e(I)I

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->a(Lcom/android/cglib/dx/d/c;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->b(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/am;->a:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
