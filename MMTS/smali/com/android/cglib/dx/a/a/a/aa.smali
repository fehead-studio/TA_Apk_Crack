.class public final Lcom/android/cglib/dx/a/a/a/aa;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/aa;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/aa;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/aa;->b:Lcom/android/cglib/dx/a/a/n;

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

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cglib/dx/a/a/a/aa;->b(Lcom/android/cglib/dx/c/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/aa;->f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/f;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->b()I

    move-result v0

    invoke-static {p2}, Lcom/android/cglib/dx/a/a/a/aa;->h(Lcom/android/cglib/dx/a/a/h;)S

    move-result p2

    int-to-short v0, v0

    int-to-short v2, v3

    invoke-static {p1, p2, v1, v0, v2}, Lcom/android/cglib/dx/a/a/a/aa;->a(Lcom/android/cglib/dx/d/a;SISS)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/aa;->g(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 3

    sget-boolean v0, Lcom/android/cglib/dx/a/a/a/aa;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/cglib/dx/a/a/f;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/a/a/f;

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

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/aa;->c(Lcom/android/cglib/dx/c/b/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/a/aa;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->b()I

    move-result p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/aa;->f(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
