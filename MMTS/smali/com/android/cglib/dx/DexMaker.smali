.class public final Lcom/android/cglib/dx/DexMaker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/DexMaker$b;,
        Lcom/android/cglib/dx/DexMaker$a;,
        Lcom/android/cglib/dx/DexMaker$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Lcom/android/cglib/dx/DexMaker$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/DexMaker;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/DexMaker$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)",
            "Lcom/android/cglib/dx/DexMaker$c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/DexMaker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/DexMaker$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/cglib/dx/DexMaker$c;

    invoke-direct {v0, p1}, Lcom/android/cglib/dx/DexMaker$c;-><init>(Lcom/android/cglib/dx/TypeId;)V

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 8

    :try_start_0
    const-string v0, "dalvik.system.DexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/ClassLoader;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x0

    aput-object p1, v1, v6

    aput-object p3, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "load() requires a Dalvik VM"

    invoke-direct {p2, p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/cglib/dx/DexMaker;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/TypeId;

    invoke-direct {p0, v4}, Lcom/android/cglib/dx/DexMaker;->a(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/DexMaker$c;

    move-result-object v4

    invoke-static {v4}, Lcom/android/cglib/dx/DexMaker$c;->b(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4}, Lcom/android/cglib/dx/DexMaker$c;->d(Lcom/android/cglib/dx/DexMaker$c;)Lcom/android/cglib/dx/TypeId;

    move-result-object v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    invoke-static {v4}, Lcom/android/cglib/dx/DexMaker$c;->d(Lcom/android/cglib/dx/DexMaker$c;)Lcom/android/cglib/dx/TypeId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/TypeId;->hashCode()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1f

    invoke-interface {v5}, Ljava/util/Set;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v0, v3

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    array-length v1, v0

    const/4 v3, 0x1

    :goto_1
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/MethodId<",
            "**>;I)",
            "Lcom/android/cglib/dx/Code;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/DexMaker;->a(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/DexMaker$c;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/DexMaker$c;->b(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already declared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    and-int/lit8 v1, p2, -0x40

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_2

    and-int/lit8 p2, p2, -0x21

    const/high16 v1, 0x20000

    or-int/2addr p2, v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/cglib/dx/MethodId;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    :cond_3
    new-instance v1, Lcom/android/cglib/dx/DexMaker$b;

    invoke-direct {v1, p1, p2}, Lcom/android/cglib/dx/DexMaker$b;-><init>(Lcom/android/cglib/dx/MethodId;I)V

    invoke-static {v0}, Lcom/android/cglib/dx/DexMaker$c;->b(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/cglib/dx/DexMaker$b;->a(Lcom/android/cglib/dx/DexMaker$b;)Lcom/android/cglib/dx/Code;

    move-result-object p1

    return-object p1
.end method

.method public declare(Lcom/android/cglib/dx/FieldId;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/FieldId<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/cglib/dx/FieldId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/DexMaker;->a(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/DexMaker$c;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/DexMaker$c;->c(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already declared: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    and-int/lit16 v1, p2, -0xe0

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected flag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "staticValue is non-null, but field is not static"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Lcom/android/cglib/dx/DexMaker$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/cglib/dx/DexMaker$a;-><init>(Lcom/android/cglib/dx/FieldId;ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/android/cglib/dx/DexMaker$c;->c(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs declare(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;ILcom/android/cglib/dx/TypeId;[Lcom/android/cglib/dx/TypeId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;[",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/DexMaker;->a(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/DexMaker$c;

    move-result-object v0

    and-int/lit16 v1, p3, -0x412

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected flag: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {v0}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "already declared: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;Z)Z

    invoke-static {v0, p3}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;I)I

    invoke-static {v0, p4}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/TypeId;

    invoke-static {v0, p2}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/android/cglib/dx/TypeList;

    invoke-direct {p1, p5}, Lcom/android/cglib/dx/TypeList;-><init>([Lcom/android/cglib/dx/TypeId;)V

    invoke-static {v0, p1}, Lcom/android/cglib/dx/DexMaker$c;->a(Lcom/android/cglib/dx/DexMaker$c;Lcom/android/cglib/dx/TypeList;)Lcom/android/cglib/dx/TypeList;

    return-void
.end method

.method public generate()[B
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/b;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/b;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/cglib/dx/a/b;->a:I

    new-instance v1, Lcom/android/cglib/dx/a/b/l;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/a/b/l;-><init>(Lcom/android/cglib/dx/a/b;)V

    iget-object v0, p0, Lcom/android/cglib/dx/DexMaker;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/DexMaker$c;

    invoke-virtual {v2}, Lcom/android/cglib/dx/DexMaker$c;->a()Lcom/android/cglib/dx/a/b/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/l;->a(Lcom/android/cglib/dx/a/b/g;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/android/cglib/dx/a/b/l;->a(Ljava/io/Writer;Z)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 6

    if-nez p2, :cond_1

    const-string p2, "dexmaker.dexcache"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/cglib/dx/a;

    invoke-direct {p2}, Lcom/android/cglib/dx/a;-><init>()V

    invoke-virtual {p2}, Lcom/android/cglib/dx/a;->a()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/cglib/dx/DexMaker;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p2, p1}, Lcom/android/cglib/dx/DexMaker;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/android/cglib/dx/DexMaker;->generate()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/jar/JarEntry;

    const-string v4, "classes.dex"

    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/jar/JarEntry;->setSize(J)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v2, v1}, Ljava/util/jar/JarOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->close()V

    invoke-direct {p0, v0, p2, p1}, Lcom/android/cglib/dx/DexMaker;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method
