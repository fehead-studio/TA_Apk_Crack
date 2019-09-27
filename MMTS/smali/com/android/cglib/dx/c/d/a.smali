.class public final Lcom/android/cglib/dx/c/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/cglib/dx/c/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/cglib/dx/c/d/c;

.field private final d:Lcom/android/cglib/dx/c/d/b;

.field private e:Lcom/android/cglib/dx/c/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p1, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/cglib/dx/c/d/a;->c:Lcom/android/cglib/dx/c/d/c;

    iput-object p3, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/c/d/a;->e:Lcom/android/cglib/dx/c/d/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/a;
    .locals 8

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    sget-object v0, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/d/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/cglib/dx/c/d/a;->b(Ljava/lang/String;)[Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/d/c;->b(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    new-instance v3, Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v3, v4}, Lcom/android/cglib/dx/c/d/b;-><init>(I)V

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    invoke-virtual {v3, v2, v5}, Lcom/android/cglib/dx/c/d/b;->a(ILcom/android/cglib/dx/c/d/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/cglib/dx/c/d/a;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/cglib/dx/c/d/a;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/b;)V

    invoke-static {v1}, Lcom/android/cglib/dx/c/d/a;->b(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/d/a;

    move-result-object p0

    return-object p0

    :cond_3
    move v6, v0

    :goto_2
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_4
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_6

    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v5, v6

    :goto_3
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/d/c;->a(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static b(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/d/a;
    .locals 3

    sget-object v0, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/a;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/d/a;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/cglib/dx/c/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Ljava/lang/String;)[Lcom/android/cglib/dx/c/d/c;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x29

    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v5, 0x41

    if-lt v6, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v6, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v1, v2

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-array p0, v4, [Lcom/android/cglib/dx/c/d/c;

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/d/a;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/c/d/a;->c:Lcom/android/cglib/dx/c/d/c;

    iget-object v2, p1, Lcom/android/cglib/dx/c/d/a;->c:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/c/d/c;->a(Lcom/android/cglib/dx/c/d/c;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/b;->a()I

    move-result v1

    iget-object v2, p1, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/d/b;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/c/d/b;->b(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v5

    iget-object v6, p1, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v6, v4}, Lcom/android/cglib/dx/c/d/b;->b(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/c/d/c;->a(Lcom/android/cglib/dx/c/d/c;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/d/a;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/c/d/b;->b(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/b;->e()V

    new-instance v1, Lcom/android/cglib/dx/c/d/a;

    iget-object v2, p0, Lcom/android/cglib/dx/c/d/a;->c:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/cglib/dx/c/d/a;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/b;)V

    invoke-static {v1}, Lcom/android/cglib/dx/c/d/a;->b(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->c:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public c()Lcom/android/cglib/dx/c/d/b;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/d/a;->a(Lcom/android/cglib/dx/c/d/a;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/android/cglib/dx/c/d/b;
    .locals 6

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->e:Lcom/android/cglib/dx/c/d/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/b;->a()I

    move-result v0

    new-instance v1, Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/c/d/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    invoke-virtual {v4, v2}, Lcom/android/cglib/dx/c/d/b;->b(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/d/c;->i()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lcom/android/cglib/dx/c/d/c;->f:Lcom/android/cglib/dx/c/d/c;

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v2, v4}, Lcom/android/cglib/dx/c/d/b;->a(ILcom/android/cglib/dx/c/d/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/cglib/dx/c/d/a;->d:Lcom/android/cglib/dx/c/d/b;

    :goto_1
    iput-object v1, p0, Lcom/android/cglib/dx/c/d/a;->e:Lcom/android/cglib/dx/c/d/b;

    :cond_3
    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->e:Lcom/android/cglib/dx/c/d/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/cglib/dx/c/d/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/cglib/dx/c/d/a;

    iget-object p1, p1, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/d/a;->b:Ljava/lang/String;

    return-object v0
.end method
