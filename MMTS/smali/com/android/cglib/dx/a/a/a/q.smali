.class public final Lcom/android/cglib/dx/a/a/a/q;
.super Lcom/android/cglib/dx/a/a/n;


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/q;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/q;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/q;->b:Lcom/android/cglib/dx/a/a/n;

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
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/q;->d(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Lcom/android/cglib/dx/a/a/z;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/z;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/cglib/dx/a/a/a/q;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/android/cglib/dx/a/a/a/q;->a(Lcom/android/cglib/dx/d/a;SI)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/z;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/a/q;->e(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/z;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
