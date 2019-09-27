.class public final Lcom/android/cglib/dx/a/a/a/a;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/a;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/a;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/a;->b:Lcom/android/cglib/dx/a/a/n;

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

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/a;->d(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/z;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/a/a;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    invoke-static {p1, p2}, Lcom/android/cglib/dx/a/a/a/a;->a(Lcom/android/cglib/dx/d/a;S)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/z;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/z;->d()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/a;->e(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/z;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/z;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/a/a;->a(Lcom/android/cglib/dx/a/a/z;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
