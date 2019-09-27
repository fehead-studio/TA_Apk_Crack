.class public final Lcom/android/cglib/dx/c/b/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/c;

.field private final b:I

.field private c:[Lcom/android/cglib/dx/d/k;

.field private d:Lcom/android/cglib/dx/d/k;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "blocks == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/c/b/q;->a:Lcom/android/cglib/dx/c/b/c;

    iput p2, p0, Lcom/android/cglib/dx/c/b/q;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/c/b/q;->c:[Lcom/android/cglib/dx/d/k;

    iput-object p1, p0, Lcom/android/cglib/dx/c/b/q;->d:Lcom/android/cglib/dx/d/k;

    return-void
.end method

.method private c()V
    .locals 13

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/q;->a:Lcom/android/cglib/dx/c/b/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/c;->d()I

    move-result v0

    new-array v1, v0, [Lcom/android/cglib/dx/d/k;

    new-instance v2, Lcom/android/cglib/dx/d/k;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/cglib/dx/d/k;-><init>(I)V

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/q;->a:Lcom/android/cglib/dx/c/b/c;

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/c;->a()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lcom/android/cglib/dx/c/b/q;->a:Lcom/android/cglib/dx/c/b/c;

    invoke-virtual {v7, v6}, Lcom/android/cglib/dx/c/b/c;->a(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/b/b;->c()Lcom/android/cglib/dx/d/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/d/k;->a()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Lcom/android/cglib/dx/d/k;->b(I)V

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-virtual {v7, v10}, Lcom/android/cglib/dx/d/k;->a(I)I

    move-result v11

    aget-object v12, v1, v11

    if-nez v12, :cond_1

    new-instance v12, Lcom/android/cglib/dx/d/k;

    invoke-direct {v12, v3}, Lcom/android/cglib/dx/d/k;-><init>(I)V

    aput-object v12, v1, v11

    :cond_1
    invoke-virtual {v12, v8}, Lcom/android/cglib/dx/d/k;->b(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v5, v0, :cond_5

    aget-object v3, v1, v5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/k;->b()V

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/k;->e()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/android/cglib/dx/d/k;->b()V

    invoke-virtual {v2}, Lcom/android/cglib/dx/d/k;->e()V

    iget v0, p0, Lcom/android/cglib/dx/c/b/q;->b:I

    aget-object v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/cglib/dx/c/b/q;->b:I

    sget-object v3, Lcom/android/cglib/dx/d/k;->a:Lcom/android/cglib/dx/d/k;

    aput-object v3, v1, v0

    :cond_6
    iput-object v1, p0, Lcom/android/cglib/dx/c/b/q;->c:[Lcom/android/cglib/dx/d/k;

    iput-object v2, p0, Lcom/android/cglib/dx/c/b/q;->d:Lcom/android/cglib/dx/d/k;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/c/b/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/q;->a:Lcom/android/cglib/dx/c/b/c;

    return-object v0
.end method

.method public a(I)Lcom/android/cglib/dx/d/k;
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/q;->d:Lcom/android/cglib/dx/d/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/b/q;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/q;->c:[Lcom/android/cglib/dx/d/k;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/q;->b:I

    return v0
.end method
