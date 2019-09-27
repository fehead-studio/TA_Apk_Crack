.class Lcom/android/cglib/dx/c/b/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/c/b/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cglib/dx/c/b/c$a;->a:I

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/f;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->f()Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/m;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->g()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/m;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->h()I

    move-result p1

    iget v0, p0, Lcom/android/cglib/dx/c/b/c$a;->a:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/android/cglib/dx/c/b/c$a;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/c$a;->a:I

    return v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/b/c$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method
