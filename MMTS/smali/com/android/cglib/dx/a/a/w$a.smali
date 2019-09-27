.class Lcom/android/cglib/dx/a/a/w$a;
.super Lcom/android/cglib/dx/a/a/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/cglib/dx/a/a/w;

.field private c:Lcom/android/cglib/dx/c/b/i;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/w;Lcom/android/cglib/dx/a/a/s;Lcom/android/cglib/dx/c/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/w$a;->a:Lcom/android/cglib/dx/a/a/w;

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/a/w$b;-><init>(Lcom/android/cglib/dx/a/a/w;Lcom/android/cglib/dx/a/a/s;)V

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/w$a;->c:Lcom/android/cglib/dx/c/b/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/w$a;->c:Lcom/android/cglib/dx/c/b/i;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/i;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/cglib/dx/a/a/r;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;)V

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/a/a/w$a;->a(Lcom/android/cglib/dx/a/a/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/c/b/j;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/w$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/k;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/c/b/k;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/w$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/t;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/c/b/t;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/w$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/u;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/c/b/u;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/w$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method
