.class public final Lcom/android/cglib/dx/c/b/t;
.super Lcom/android/cglib/dx/c/b/d;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/d/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/d;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p4, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p4, p0, Lcom/android/cglib/dx/c/b/t;->a:Lcom/android/cglib/dx/c/d/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/c/b/f$b;->a(Lcom/android/cglib/dx/c/b/t;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/t;->c()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lcom/android/cglib/dx/c/c/v;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/t;->a:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/u;->a(Lcom/android/cglib/dx/c/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/t;->a:Lcom/android/cglib/dx/c/d/e;

    return-object v0
.end method
