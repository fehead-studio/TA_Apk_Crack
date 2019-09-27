.class public final Lcom/android/cglib/dx/a/b/m;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/c;

.field private b:[B


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/c;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/m;->b:[B

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/b/ag;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/m;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/c;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->q:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method protected a(Lcom/android/cglib/dx/a/b/ak;I)V
    .locals 2

    new-instance p2, Lcom/android/cglib/dx/d/d;

    invoke-direct {p2}, Lcom/android/cglib/dx/d/d;-><init>()V

    new-instance v0, Lcom/android/cglib/dx/a/b/au;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ak;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/au;-><init>(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/c/c;Z)V

    invoke-virtual {p2}, Lcom/android/cglib/dx/d/d;->f()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/m;->b:[B

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/m;->b:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/m;->a(I)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    invoke-static {p1, v0}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/c/c/a;)V

    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 3

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/m;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/android/cglib/dx/a/b/au;

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/au;-><init>(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/cglib/dx/a/b/au;->a(Lcom/android/cglib/dx/c/c/c;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/m;->b:[B

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->a([B)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/c;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/m;->a:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/c;->hashCode()I

    move-result v0

    return v0
.end method
