.class public Lcom/androlua/LuaEnhancer;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/cglib/proxy/Enhancer;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/cglib/proxy/Enhancer;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/cglib/proxy/Enhancer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaEnhancer;->a:Lcom/android/cglib/proxy/Enhancer;

    iget-object v0, p0, Lcom/androlua/LuaEnhancer;->a:Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {v0, p1}, Lcom/android/cglib/proxy/Enhancer;->setSuperclass(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/LuaEnhancer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaEnhancer;->a:Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {v0}, Lcom/android/cglib/proxy/Enhancer;->create()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public create(Lcom/android/cglib/proxy/MethodFilter;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/proxy/MethodFilter;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaEnhancer;->a:Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {v0, p1}, Lcom/android/cglib/proxy/Enhancer;->setMethodFilter(Lcom/android/cglib/proxy/MethodFilter;)V

    iget-object p1, p0, Lcom/androlua/LuaEnhancer;->a:Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {p1}, Lcom/android/cglib/proxy/Enhancer;->create()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setInterceptor(Lcom/android/cglib/proxy/EnhancerInterface;Lcom/android/cglib/proxy/MethodInterceptor;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/android/cglib/proxy/EnhancerInterface;->setMethodInterceptor_Enhancer(Lcom/android/cglib/proxy/MethodInterceptor;)V

    return-void
.end method
