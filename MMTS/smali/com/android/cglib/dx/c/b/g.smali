.class public final Lcom/android/cglib/dx/c/b/g;
.super Lcom/android/cglib/dx/d/h;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/c/b/f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/g;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/b/f;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/c/b/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/c/b/g;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/g;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/f;->a(Lcom/android/cglib/dx/c/b/f$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lcom/android/cglib/dx/c/b/f;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/g;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v0

    return-object v0
.end method
