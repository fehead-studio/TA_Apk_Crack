.class public final Lcom/android/cglib/dx/a/a/x;
.super Lcom/android/cglib/dx/a/a/l;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/a/l;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/a/x;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/x;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/x;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/a/x;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/x;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/x;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
