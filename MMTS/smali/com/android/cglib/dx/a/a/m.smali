.class public final Lcom/android/cglib/dx/a/a/m;
.super Lcom/android/cglib/dx/a/a/aa;


# instance fields
.field private a:[Lcom/android/cglib/dx/a/a/x;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/a/aa;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registers.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    return-void
.end method

.method private static a(Lcom/android/cglib/dx/c/b/m;I)Lcom/android/cglib/dx/a/a/x;
    .locals 2

    sget-object v0, Lcom/android/cglib/dx/c/b/s;->a:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/a/a/x;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/m;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v1

    new-array v2, v1, [Lcom/android/cglib/dx/a/a/x;

    iput-object v2, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    invoke-static {v4, v3}, Lcom/android/cglib/dx/a/a/m;->a(Lcom/android/cglib/dx/c/b/m;I)Lcom/android/cglib/dx/a/a/x;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/a/a/h;
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/m;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/m;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/cglib/dx/a/a/m;-><init>(Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/m;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/cglib/dx/a/a/m;->a(Lcom/android/cglib/dx/c/b/m;I)Lcom/android/cglib/dx/a/a/x;

    move-result-object v6

    if-eqz v3, :cond_0

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v6, p1}, Lcom/android/cglib/dx/a/a/x;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/m;->b()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/a/a/x;->a(Lcom/android/cglib/dx/d/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n()I
    .locals 5

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/m;->b()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/m;->a:[Lcom/android/cglib/dx/a/a/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/x;->n()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method
