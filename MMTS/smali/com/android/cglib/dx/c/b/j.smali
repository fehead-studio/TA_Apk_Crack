.class public final Lcom/android/cglib/dx/c/b/j;
.super Lcom/android/cglib/dx/c/b/d;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/cglib/dx/c/b/d;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/c/b/f$b;->a(Lcom/android/cglib/dx/c/b/j;)V

    return-void
.end method

.method public i()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    return-object v0
.end method
