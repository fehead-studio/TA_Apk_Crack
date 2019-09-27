.class public final Lcom/android/cglib/dx/a/a/r;
.super Lcom/android/cglib/dx/a/a/ab;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/m;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/ab;-><init>(Lcom/android/cglib/dx/c/b/s;)V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/c/b/m;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->f()Lcom/android/cglib/dx/c/d/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/cglib/dx/c/d/d;->a_()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 2

    new-instance p1, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/r;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    invoke-direct {p1, v0, v1}, Lcom/android/cglib/dx/a/a/r;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;)V

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/r;->a(Lcom/android/cglib/dx/c/b/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/cglib/dx/c/b/m;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    return-object v0
.end method

.method public d(I)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/r;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/r;->a:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/m;->c(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/cglib/dx/a/a/r;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;)V

    return-object v0
.end method
