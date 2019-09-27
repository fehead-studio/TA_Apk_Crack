.class public Lcom/luajava/LuaMethodInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaMethodInterceptor$SuperCall;
    }
.end annotation


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object p1

    iput-object p1, p0, Lcom/luajava/LuaMethodInterceptor;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public intercept(Ljava/lang/Object;[Ljava/lang/Object;Lcom/android/cglib/proxy/MethodProxy;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/luajava/LuaMethodInterceptor;->b:Lcom/luajava/LuaObject;

    iget-object v0, v0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/cglib/proxy/MethodProxy;->getOriginalMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/luajava/LuaMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v3}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/luajava/LuaMethodInterceptor;->b:Lcom/luajava/LuaObject;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/luajava/LuaMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-class p1, Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v5

    :cond_3
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    array-length v4, p2

    const/4 v7, 0x1

    add-int/2addr v4, v7

    new-array v4, v4, [Ljava/lang/Object;

    array-length v8, p2

    invoke-static {p2, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lcom/luajava/LuaMethodInterceptor$SuperCall;

    invoke-direct {p2, p0, p1, p3}, Lcom/luajava/LuaMethodInterceptor$SuperCall;-><init>(Lcom/luajava/LuaMethodInterceptor;Ljava/lang/Object;Lcom/android/cglib/proxy/MethodProxy;)V

    aput-object p2, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class p1, Ljava/lang/Void;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v4}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_7

    :try_start_2
    instance-of p2, p1, Ljava/lang/Double;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Ljava/lang/Double;

    invoke-static {p2, v1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v5
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v5, p1

    goto :goto_4

    :cond_7
    move-object v5, p1

    goto :goto_5

    :cond_8
    :goto_3
    :try_start_3
    invoke-virtual {v3, v4}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception p2

    :goto_4
    :try_start_4
    iget-object p1, p0, Lcom/luajava/LuaMethodInterceptor;->a:Lcom/androlua/LuaContext;

    invoke-interface {p1, v2, p2}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5
    if-nez v5, :cond_c

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-class p1, Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_a

    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_b
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_c
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
