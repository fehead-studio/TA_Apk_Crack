.class public Lbsh/XThis;
.super Lbsh/This;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/XThis$Handler;
    }
.end annotation


# static fields
.field static e:Ljava/lang/Class;


# instance fields
.field c:Ljava/util/Hashtable;

.field d:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>(Lbsh/NameSpace;Lbsh/Interpreter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbsh/This;-><init>(Lbsh/NameSpace;Lbsh/Interpreter;)V

    new-instance p1, Lbsh/XThis$Handler;

    invoke-direct {p1, p0}, Lbsh/XThis$Handler;-><init>(Lbsh/XThis;)V

    iput-object p1, p0, Lbsh/XThis;->d:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/XThis;->getInterface([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInterface([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbsh/XThis;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/XThis;->c:Ljava/util/Hashtable;

    :cond_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x15

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lbsh/XThis;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lbsh/XThis;->d:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v1, p1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    iget-object p1, p0, Lbsh/XThis;->c:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2

    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int v2, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'this\' reference (XThis) to Bsh object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/XThis;->a:Lbsh/NameSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
