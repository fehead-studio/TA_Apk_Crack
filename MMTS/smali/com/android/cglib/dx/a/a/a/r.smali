.class public final Lcom/android/cglib/dx/a/a/a/r;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/r;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/r;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/r;->b:Lcom/android/cglib/dx/a/a/n;

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

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/r;->f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

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

    check-cast v1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/f;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/a/r;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/android/cglib/dx/a/a/a/r;->a(Lcom/android/cglib/dx/d/a;SI)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/r;->g(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 5

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    if-eq v4, v0, :cond_1

    return v1

    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/a/r;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    instance-of v0, p1, Lcom/android/cglib/dx/c/c/w;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/cglib/dx/c/c/j;

    if-nez v0, :cond_3

    instance-of p1, p1, Lcom/android/cglib/dx/c/c/v;

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v3

    invoke-static {v3}, Lcom/android/cglib/dx/a/a/a/r;->d(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    return-object v1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    return-object v1
.end method
