.class public abstract Lcom/android/cglib/dx/a/a/l;
.super Lcom/android/cglib/dx/a/a/h;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/a/h;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/l;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/cglib/dx/d/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/l;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method

.method public final d(I)Lcom/android/cglib/dx/a/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/l;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/n;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/l;->a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/l;->g()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->c()Lcom/android/cglib/dx/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/n;->a()I

    move-result v0

    return v0
.end method
