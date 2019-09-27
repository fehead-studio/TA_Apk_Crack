.class public Lcom/android/cglib/proxy/Enhancer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/android/cglib/proxy/MethodInterceptor;

.field private d:Lcom/android/cglib/proxy/MethodFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/DexMaker;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "TS;>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    const-class v1, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v7

    const-class v1, Lcom/android/cglib/proxy/MethodProxyExecuter;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v11

    const-class v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v12

    const-class v1, [Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v13

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v14

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v15

    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v6

    const-string v1, "methodInterceptor"

    invoke-virtual {v10, v7, v1}, Lcom/android/cglib/dx/TypeId;->getField(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;)Lcom/android/cglib/dx/FieldId;

    move-result-object v5

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-virtual {v9, v5, v4, v1}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/FieldId;ILjava/lang/Object;)V

    iget-object v1, v8, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_2

    move-object/from16 v17, v5

    aget-object v5, v3, v11

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v18

    and-int/lit8 v18, v18, 0x8

    if-nez v18, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v18

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v19, v12

    const/4 v12, 0x0

    move-object v1, v8

    move/from16 v18, v2

    move-object v2, v9

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v21, v17

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/proxy/Enhancer;->a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/reflect/Constructor;Lcom/android/cglib/dx/FieldId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v6

    move-object/from16 v19, v12

    move-object/from16 v21, v17

    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v18

    move-object/from16 v12, v19

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v1, 0x0

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v12

    const/4 v12, 0x0

    sget-object v1, Lcom/android/cglib/dx/TypeId;->VOID:Lcom/android/cglib/dx/TypeId;

    const-string v2, "setMethodInterceptor_Enhancer"

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/cglib/dx/TypeId;

    aput-object v7, v4, v12

    invoke-virtual {v10, v1, v2, v4}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v1

    invoke-virtual {v9, v1, v3}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/cglib/dx/Code;->getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v2

    invoke-virtual {v1, v12, v7}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    move-object/from16 v11, v21

    invoke-virtual {v1, v11, v2, v4}, Lcom/android/cglib/dx/Code;->iput(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v1}, Lcom/android/cglib/dx/Code;->returnVoid()V

    sget-object v1, Lcom/android/cglib/dx/TypeId;->OBJECT:Lcom/android/cglib/dx/TypeId;

    const-string v2, "executeSuperMethod_Enhancer"

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/android/cglib/dx/TypeId;

    aput-object v14, v5, v12

    aput-object v13, v5, v3

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v10, v1, v2, v5}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v1

    invoke-virtual {v9, v1, v3}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v2

    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    invoke-virtual {v1, v10}, Lcom/android/cglib/dx/Code;->getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v7

    const-string v3, "getClass"

    move-object/from16 v23, v11

    new-array v11, v12, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v10, v5, v3, v11}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v3

    new-array v11, v12, [Lcom/android/cglib/dx/Local;

    invoke-virtual {v1, v3, v4, v7, v11}, Lcom/android/cglib/dx/Code;->invokeVirtual(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    sget-object v3, Lcom/android/cglib/dx/TypeId;->OBJECT:Lcom/android/cglib/dx/TypeId;

    const-string v11, "executeMethod"

    const/4 v10, 0x5

    new-array v9, v10, [Lcom/android/cglib/dx/TypeId;

    aput-object v5, v9, v12

    const/4 v5, 0x1

    aput-object v14, v9, v5

    const/4 v5, 0x2

    aput-object v13, v9, v5

    const/16 v17, 0x3

    aput-object v6, v9, v17

    const/16 v18, 0x4

    aput-object v15, v9, v18

    move-object/from16 v15, v16

    invoke-virtual {v15, v3, v11, v9}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v3

    new-array v9, v10, [Lcom/android/cglib/dx/Local;

    aput-object v4, v9, v12

    invoke-virtual {v1, v12, v14}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v1, v10, v13}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    aput-object v4, v9, v5

    invoke-virtual {v1, v5, v6}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    aput-object v4, v9, v17

    aput-object v7, v9, v18

    invoke-virtual {v1, v3, v2, v9}, Lcom/android/cglib/dx/Code;->invokeStatic(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/Code;->returnValue(Lcom/android/cglib/dx/Local;)V

    iget-object v1, v8, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    :goto_3
    if-ge v12, v10, :cond_8

    aget-object v5, v9, v12

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "_Enhancer"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const-string v1, "_Super"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_6

    iget-object v1, v8, Lcom/android/cglib/proxy/Enhancer;->d:Lcom/android/cglib/proxy/MethodFilter;

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/android/cglib/proxy/Enhancer;->d:Lcom/android/cglib/proxy/MethodFilter;

    invoke-interface {v1, v5, v6}, Lcom/android/cglib/proxy/MethodFilter;->filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, v23

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/cglib/proxy/Enhancer;->a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/reflect/Method;Ljava/lang/String;Lcom/android/cglib/dx/FieldId;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/reflect/Constructor;Lcom/android/cglib/dx/FieldId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/DexMaker;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Ljava/lang/reflect/Constructor;",
            "Lcom/android/cglib/dx/FieldId<",
            "*",
            "Lcom/android/cglib/proxy/MethodInterceptor;",
            ">;)V"
        }
    .end annotation

    const-class p5, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    const-class p5, Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    const-class p5, [Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    const-class p5, Ljava/lang/String;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    const-class p5, Ljava/lang/Object;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    const-class p5, [Ljava/lang/Object;

    invoke-static {p5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    array-length v1, p5

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, p5

    new-array v3, v3, [Lcom/android/cglib/dx/TypeId;

    const/4 v4, 0x0

    :goto_1
    array-length v5, p5

    if-ge v4, v5, :cond_2

    aget-object v5, p5, v4

    invoke-static {v5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p3, v3}, Lcom/android/cglib/dx/TypeId;->getConstructor([Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v4

    invoke-virtual {p2, v3}, Lcom/android/cglib/dx/TypeId;->getConstructor([Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-array v4, v0, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {p3, v4}, Lcom/android/cglib/dx/TypeId;->getConstructor([Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v4

    new-array v5, v0, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {p2, v5}, Lcom/android/cglib/dx/TypeId;->getConstructor([Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object p2

    :goto_2
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p4

    invoke-virtual {p1, v4, p4}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/cglib/dx/Code;->getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object p3

    if-eqz v1, :cond_4

    array-length p4, p5

    new-array p4, p4, [Lcom/android/cglib/dx/Local;

    :goto_3
    array-length v1, p5

    if-ge v0, v1, :cond_5

    aget-object v1, v3, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v1

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-array p4, v0, [Lcom/android/cglib/dx/Local;

    :cond_5
    invoke-virtual {p1, p2, v2, p3, p4}, Lcom/android/cglib/dx/Code;->invokeDirect(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/Code;->returnVoid()V

    return-void
.end method

.method private a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/reflect/Method;Ljava/lang/String;Lcom/android/cglib/dx/FieldId;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/DexMaker;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lcom/android/cglib/dx/FieldId<",
            "*",
            "Lcom/android/cglib/proxy/MethodInterceptor;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-class v4, Lcom/android/cglib/proxy/MethodInterceptor;

    invoke-static {v4}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v4

    const-class v5, Lcom/android/cglib/proxy/MethodProxyExecuter;

    invoke-static {v5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v5

    const-class v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v6

    const-class v7, [Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v8

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v9

    const-class v10, [Ljava/lang/Object;

    invoke-static {v10}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "void"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v11}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    if-eqz v14, :cond_0

    array-length v15, v14

    if-lez v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_2

    array-length v1, v14

    new-array v1, v1, [Lcom/android/cglib/dx/TypeId;

    move-object/from16 v19, v5

    move/from16 v18, v12

    const/4 v12, 0x0

    :goto_1
    array-length v5, v14

    if-ge v12, v5, :cond_1

    aget-object v5, v14, v12

    invoke-static {v5}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v5

    aput-object v5, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v13, v3, v1}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v19, v5

    move/from16 v18, v12

    const/4 v1, 0x0

    new-array v5, v1, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v2, v13, v3, v5}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v5

    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    and-int/lit16 v12, v12, -0x401

    invoke-virtual {v0, v5, v12}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-static {v11}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v0

    move-object/from16 v21, v12

    goto :goto_3

    :cond_3
    move-object/from16 v21, v12

    const/4 v0, 0x0

    :goto_3
    sget-object v12, Lcom/android/cglib/dx/TypeId;->INT:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v5, v12}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v12

    move-object/from16 v22, v13

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v13

    move-object/from16 v23, v0

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v0

    move-object/from16 v24, v11

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v11

    move-object/from16 v25, v8

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v8

    move-object/from16 v26, v4

    invoke-virtual {v5, v7}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    move-object/from16 v27, v7

    invoke-virtual {v5, v10}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v7

    move-object/from16 v28, v10

    invoke-virtual {v5, v9}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v10

    move-object/from16 v29, v9

    sget-object v9, Lcom/android/cglib/dx/TypeId;->OBJECT:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v5, v9}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v9

    move-object/from16 v30, v9

    invoke-virtual {v5, v2}, Lcom/android/cglib/dx/Code;->getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v9

    move-object/from16 v31, v10

    move-object/from16 v10, p6

    invoke-virtual {v5, v10, v13, v9}, Lcom/android/cglib/dx/Code;->iget(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v0, v3}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    const-string v10, "getClass"

    move-object/from16 v32, v0

    const/4 v3, 0x0

    new-array v0, v3, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v2, v6, v10, v0}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v0

    new-array v10, v3, [Lcom/android/cglib/dx/Local;

    invoke-virtual {v5, v0, v8, v9, v10}, Lcom/android/cglib/dx/Code;->invokeVirtual(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    if-eqz v15, :cond_6

    array-length v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v12}, Lcom/android/cglib/dx/Code;->newArray(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v7, v12}, Lcom/android/cglib/dx/Code;->newArray(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    const/4 v0, 0x0

    :goto_4
    array-length v3, v14

    if-ge v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v12, v3}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    aget-object v3, v14, v0

    invoke-virtual {v5, v11, v3}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v12, v11}, Lcom/android/cglib/dx/Code;->aput(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    aget-object v3, v14, v0

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v14, v0

    invoke-static {v3}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v3

    const-string v10, "valueOf"

    move-object/from16 v33, v11

    move-object/from16 v34, v14

    const/4 v11, 0x1

    new-array v14, v11, [Lcom/android/cglib/dx/TypeId;

    aget-object v16, v1, v0

    const/16 v17, 0x0

    aput-object v16, v14, v17

    invoke-virtual {v3, v3, v10, v14}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v3

    new-array v10, v11, [Lcom/android/cglib/dx/Local;

    aget-object v11, v1, v0

    invoke-virtual {v5, v0, v11}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v11

    aput-object v11, v10, v17

    move-object/from16 v11, v31

    invoke-virtual {v5, v3, v11, v10}, Lcom/android/cglib/dx/Code;->invokeStatic(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v7, v12, v11}, Lcom/android/cglib/dx/Code;->aput(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    goto :goto_5

    :cond_4
    move-object/from16 v33, v11

    move-object/from16 v34, v14

    move-object/from16 v11, v31

    aget-object v3, v1, v0

    invoke-virtual {v5, v0, v3}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v3

    invoke-virtual {v5, v7, v12, v3}, Lcom/android/cglib/dx/Code;->aput(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v31, v11

    move-object/from16 v11, v33

    move-object/from16 v14, v34

    goto :goto_4

    :cond_5
    move-object/from16 v34, v14

    goto :goto_6

    :cond_6
    move-object/from16 v34, v14

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v0}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    :goto_6
    sget-object v0, Lcom/android/cglib/dx/TypeId;->OBJECT:Lcom/android/cglib/dx/TypeId;

    const-string v3, "executeInterceptor"

    const/4 v10, 0x6

    new-array v11, v10, [Lcom/android/cglib/dx/TypeId;

    const/4 v12, 0x0

    aput-object v26, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v6, 0x2

    aput-object v25, v11, v6

    const/4 v12, 0x3

    aput-object v27, v11, v12

    const/4 v14, 0x4

    aput-object v28, v11, v14

    const/16 v20, 0x5

    aput-object v29, v11, v20

    move-object/from16 v14, v19

    invoke-virtual {v14, v0, v3, v11}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v0

    if-eqz v18, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v3, v30

    :goto_7
    new-array v10, v10, [Lcom/android/cglib/dx/Local;

    const/4 v11, 0x0

    aput-object v13, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    aput-object v32, v10, v6

    aput-object v4, v10, v12

    const/4 v4, 0x4

    aput-object v7, v10, v4

    aput-object v9, v10, v20

    invoke-virtual {v5, v0, v3, v10}, Lcom/android/cglib/dx/Code;->invokeStatic(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    if-eqz v18, :cond_8

    invoke-virtual {v5}, Lcom/android/cglib/dx/Code;->returnVoid()V

    move-object/from16 v10, v22

    const/4 v6, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/cglib/dx/Label;

    invoke-direct {v3}, Lcom/android/cglib/dx/Label;-><init>()V

    move-object/from16 v4, v23

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    sget-object v7, Lcom/android/cglib/dx/Comparison;->EQ:Lcom/android/cglib/dx/Comparison;

    move-object/from16 v8, v30

    invoke-virtual {v5, v7, v3, v8, v4}, Lcom/android/cglib/dx/Code;->compare(Lcom/android/cglib/dx/Comparison;Lcom/android/cglib/dx/Label;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v4, v8}, Lcom/android/cglib/dx/Code;->cast(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    invoke-static {v0}, Lcom/android/cglib/proxy/Const;->getPackedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v7

    invoke-static {v0}, Lcom/android/cglib/proxy/Const;->getPrimitiveValueMethodName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/cglib/dx/TypeId;

    move-object/from16 v10, v22

    invoke-virtual {v7, v10, v0, v9}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v0

    new-array v7, v8, [Lcom/android/cglib/dx/Local;

    move-object/from16 v9, v21

    invoke-virtual {v5, v0, v9, v4, v7}, Lcom/android/cglib/dx/Code;->invokeVirtual(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v9}, Lcom/android/cglib/dx/Code;->returnValue(Lcom/android/cglib/dx/Local;)V

    invoke-virtual {v5, v3}, Lcom/android/cglib/dx/Code;->mark(Lcom/android/cglib/dx/Label;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lcom/android/cglib/dx/Code;->loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {v5, v9}, Lcom/android/cglib/dx/Code;->returnValue(Lcom/android/cglib/dx/Local;)V

    goto :goto_9

    :cond_9
    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v8, v30

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/android/cglib/dx/Code;->cast(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V

    goto :goto_8

    :goto_9
    if-eqz v15, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Super"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0, v1}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v0

    move-object v5, v6

    move-object/from16 v4, p2

    invoke-virtual {v4, v10, v3, v1}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v5, v6

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Super"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v2, v10, v0, v7}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v0

    new-array v7, v6, [Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v4, v10, v3, v7}, Lcom/android/cglib/dx/TypeId;->getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;

    move-result-object v3

    :goto_a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    move-object/from16 v6, p1

    invoke-virtual {v6, v0, v4}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/MethodId;I)Lcom/android/cglib/dx/Code;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/cglib/dx/Code;->newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/Code;->getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v2

    if-eqz v15, :cond_d

    move-object/from16 v6, v34

    array-length v7, v6

    new-array v7, v7, [Lcom/android/cglib/dx/Local;

    const/4 v8, 0x0

    :goto_b
    array-length v9, v6

    if-ge v8, v9, :cond_b

    aget-object v9, v1, v8

    invoke-virtual {v0, v8, v9}, Lcom/android/cglib/dx/Code;->getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_b
    if-eqz v18, :cond_c

    goto :goto_c

    :cond_c
    move-object v5, v4

    :goto_c
    invoke-virtual {v0, v3, v5, v2, v7}, Lcom/android/cglib/dx/Code;->invokeSuper(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    goto :goto_f

    :cond_d
    if-eqz v18, :cond_e

    :goto_d
    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move-object v5, v4

    goto :goto_d

    :goto_e
    new-array v1, v1, [Lcom/android/cglib/dx/Local;

    invoke-virtual {v0, v3, v5, v2, v1}, Lcom/android/cglib/dx/Code;->invokeSuper(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    :goto_f
    if-eqz v18, :cond_f

    invoke-virtual {v0}, Lcom/android/cglib/dx/Code;->returnVoid()V

    return-void

    :cond_f
    invoke-virtual {v0, v4}, Lcom/android/cglib/dx/Code;->returnValue(Lcom/android/cglib/dx/Local;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Enhancer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/cglib/dx/TypeId;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/cglib/dx/TypeId;

    move-result-object v9

    const-class v3, Lcom/android/cglib/proxy/EnhancerInterface;

    invoke-static {v3}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/proxy/Enhancer;->a:Landroid/content/Context;

    const-string v5, "dexfiles"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/cglib/dx/DexMaker;

    invoke-direct {v11}, Lcom/android/cglib/dx/DexMaker;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".proxy"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/android/cglib/dx/TypeId;

    const/4 v0, 0x0

    aput-object v3, v8, v0

    const/4 v6, 0x1

    move-object v3, v11

    move-object v4, v9

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/cglib/dx/DexMaker;->declare(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;ILcom/android/cglib/dx/TypeId;[Lcom/android/cglib/dx/TypeId;)V

    invoke-direct {p0, v11, v2, v9}, Lcom/android/cglib/proxy/Enhancer;->a(Lcom/android/cglib/dx/DexMaker;Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;)V

    :try_start_0
    const-class v0, Lcom/android/cglib/proxy/Enhancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v2}, Lcom/android/cglib/dx/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setInterceptor(Lcom/android/cglib/proxy/MethodInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->c:Lcom/android/cglib/proxy/MethodInterceptor;

    return-void
.end method

.method public setMethodFilter(Lcom/android/cglib/proxy/MethodFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->d:Lcom/android/cglib/proxy/MethodFilter;

    return-void
.end method

.method public setSuperclass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/cglib/proxy/Enhancer;->b:Ljava/lang/Class;

    return-void
.end method
