.class public final Lcom/android/cglib/dx/c/c/j;
.super Lcom/android/cglib/dx/c/c/r;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/c/c/r;-><init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/c/c/r;->b(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/j;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/t;->c()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/j;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/t;->c()Lcom/android/cglib/dx/c/c/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/v;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/j;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/t;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method
