.class public final Lcom/android/cglib/dx/c/b/n;
.super Lcom/android/cglib/dx/d/h;

# interfaces
.implements Lcom/android/cglib/dx/c/d/e;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/b/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    return-object v0
.end method

.method public static a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/b/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    return-object v0
.end method

.method public static a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/b/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    return-object v0
.end method


# virtual methods
.method public a(IZLjava/util/BitSet;)Lcom/android/cglib/dx/c/b/n;
    .locals 7

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v2, 0x0

    move v3, p2

    move p2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/n;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/c/b/m;

    const/4 v5, 0x1

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v4, p2}, Lcom/android/cglib/dx/c/b/m;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v4

    add-int/2addr p2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1, v4}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->e()V

    :cond_7
    return-object v1
.end method

.method public a(Ljava/util/BitSet;)Lcom/android/cglib/dx/c/b/n;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    return-object p1

    :cond_0
    new-instance v1, Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/n;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->e()V

    :cond_3
    return-object v1
.end method

.method public a(I)Lcom/android/cglib/dx/c/d/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/c;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/c/b/m;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/c/b/n;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/c;->g()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public b(I)Lcom/android/cglib/dx/c/b/m;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/n;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/b/m;

    return-object p1
.end method

.method public b(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    new-instance v1, Lcom/android/cglib/dx/c/b/n;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/c/b/n;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->e()V

    :cond_1
    return-object v1
.end method

.method public c(I)Lcom/android/cglib/dx/c/b/n;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/c/b/n;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/c/b/m;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/c/b/m;->c(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/cglib/dx/c/b/n;->a(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/n;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->e()V

    :cond_3
    return-object v1
.end method
