.class public final Lcom/android/cglib/dx/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/android/cglib/dx/a/a/e;

.field private final b:[Lcom/android/cglib/dx/a/a/e;

.field private final c:[Lcom/android/cglib/dx/a/a/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/q;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/c;->d()I

    move-result v0

    new-array v1, v0, [Lcom/android/cglib/dx/a/a/e;

    iput-object v1, p0, Lcom/android/cglib/dx/a/a/a;->a:[Lcom/android/cglib/dx/a/a/e;

    new-array v1, v0, [Lcom/android/cglib/dx/a/a/e;

    iput-object v1, p0, Lcom/android/cglib/dx/a/a/a;->b:[Lcom/android/cglib/dx/a/a/e;

    new-array v0, v0, [Lcom/android/cglib/dx/a/a/e;

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/a;->c:[Lcom/android/cglib/dx/a/a/e;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/a;->a(Lcom/android/cglib/dx/c/b/q;)V

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/q;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/q;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/c;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/c/b/c;->a(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/b;->b()Lcom/android/cglib/dx/c/b/g;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v5

    iget-object v6, p0, Lcom/android/cglib/dx/a/a/a;->a:[Lcom/android/cglib/dx/a/a/e;

    new-instance v7, Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/cglib/dx/a/a/e;-><init>(Lcom/android/cglib/dx/c/b/s;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/b;->f()Lcom/android/cglib/dx/c/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v3

    iget-object v5, p0, Lcom/android/cglib/dx/a/a/a;->b:[Lcom/android/cglib/dx/a/a/e;

    new-instance v6, Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v6, v3}, Lcom/android/cglib/dx/a/a/e;-><init>(Lcom/android/cglib/dx/c/b/s;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/android/cglib/dx/a/a/a;->c:[Lcom/android/cglib/dx/a/a/e;

    new-instance v6, Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v6, v3}, Lcom/android/cglib/dx/a/a/e;-><init>(Lcom/android/cglib/dx/c/b/s;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/a;->a:[Lcom/android/cglib/dx/a/a/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/a;->a:[Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/a;->b:[Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/a;->c:[Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
