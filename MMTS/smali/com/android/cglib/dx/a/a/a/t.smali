.class public final Lcom/android/cglib/dx/a/a/a/t;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/t;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/t;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/t;->b:Lcom/android/cglib/dx/a/a/n;

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

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

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

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/t;->d(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/z;->d()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/android/cglib/dx/a/a/a/t;->a(Lcom/android/cglib/dx/d/a;SI)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/z;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/t;->e(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    instance-of p1, p1, Lcom/android/cglib/dx/a/a/z;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/t;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
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

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/t;->d(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method
