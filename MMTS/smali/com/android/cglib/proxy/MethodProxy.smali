.class public Lcom/android/cglib/proxy/MethodProxy;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/proxy/MethodProxy;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/cglib/proxy/MethodProxy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/cglib/proxy/MethodProxy;->c:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/proxy/MethodProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalMethod()Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/proxy/MethodProxy;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/cglib/proxy/MethodProxy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/cglib/proxy/MethodProxy;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/cglib/proxy/ProxyException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/cglib/proxy/ProxyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProxyMethod()Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/cglib/proxy/MethodProxy;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/cglib/proxy/MethodProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Super"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/proxy/MethodProxy;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/cglib/proxy/ProxyException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/cglib/proxy/ProxyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invokeSuper(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/cglib/proxy/EnhancerInterface;

    iget-object v0, p0, Lcom/android/cglib/proxy/MethodProxy;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/cglib/proxy/MethodProxy;->c:[Ljava/lang/Class;

    invoke-interface {p1, v0, v1, p2}, Lcom/android/cglib/proxy/EnhancerInterface;->executeSuperMethod_Enhancer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
