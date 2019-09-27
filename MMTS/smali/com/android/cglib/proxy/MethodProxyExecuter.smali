.class public Lcom/android/cglib/proxy/MethodProxyExecuter;
.super Ljava/lang/Object;


# static fields
.field public static final EXECUTE_INTERCEPTOR:Ljava/lang/String; = "executeInterceptor"

.field public static final EXECUTE_METHOD:Ljava/lang/String; = "executeMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeInterceptor(Lcom/android/cglib/proxy/MethodInterceptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/proxy/MethodInterceptor;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    new-array p4, v0, [Ljava/lang/Object;

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v0, [Ljava/lang/Class;

    :cond_1
    if-nez p0, :cond_2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/cglib/proxy/MethodProxyExecuter;->executeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    new-instance v0, Lcom/android/cglib/proxy/MethodProxy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/cglib/proxy/MethodProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {p0, p5, p4, v0}, Lcom/android/cglib/proxy/MethodInterceptor;->intercept(Ljava/lang/Object;[Ljava/lang/Object;Lcom/android/cglib/proxy/MethodProxy;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    new-instance p1, Lcom/android/cglib/proxy/ProxyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/cglib/proxy/ProxyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static executeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_Super"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    new-instance p1, Lcom/android/cglib/proxy/ProxyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/cglib/proxy/ProxyException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
