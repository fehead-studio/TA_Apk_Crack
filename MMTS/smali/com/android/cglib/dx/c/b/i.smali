.class public final Lcom/android/cglib/dx/c/b/i;
.super Lcom/android/cglib/dx/d/o;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/o;

.field private final b:[Lcom/android/cglib/dx/c/b/o;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/cglib/dx/c/b/f;",
            "Lcom/android/cglib/dx/c/b/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private b(I)Lcom/android/cglib/dx/c/b/o;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/i;->b:[Lcom/android/cglib/dx/c/b/o;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/m;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/b/m;

    return-object p1
.end method

.method public a(I)Lcom/android/cglib/dx/c/b/o;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/b/i;->b(I)Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/c/b/i;->a:Lcom/android/cglib/dx/c/b/o;

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/c/b/o;
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/i;->a(I)Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    return-object p1
.end method
