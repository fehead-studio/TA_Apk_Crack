.class public final Lcom/android/cglib/dx/a/a/q;
.super Lcom/android/cglib/dx/a/a/ab;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/o;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/ab;-><init>(Lcom/android/cglib/dx/c/b/s;)V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 2

    new-instance p1, Lcom/android/cglib/dx/a/a/q;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/q;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-direct {p1, v0, v1}, Lcom/android/cglib/dx/a/a/q;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/o;)V

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/o;->b()I

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/o;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/o;->a(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lcom/android/cglib/dx/a/a/r;->a(Lcom/android/cglib/dx/c/b/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/cglib/dx/c/b/o;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    return-object v0
.end method

.method public d(I)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/a/q;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/q;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/q;->a:Lcom/android/cglib/dx/c/b/o;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/o;->b(I)Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/cglib/dx/a/a/q;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/o;)V

    return-object v0
.end method
