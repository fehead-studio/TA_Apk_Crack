.class public Lbsh/BshMethod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Lbsh/NameSpace;

.field b:Lbsh/Modifiers;

.field c:Lbsh/BSHBlock;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Class;

.field private f:[Ljava/lang/String;

.field private g:I

.field private h:[Ljava/lang/Class;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 8

    iget-object v1, p1, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    iget-object v2, p1, Lbsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {v0}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    iget-object v4, v0, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    iget-object v5, p1, Lbsh/BSHMethodDeclaration;->c:Lbsh/BSHBlock;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    iput-object p2, p0, Lbsh/BshMethod;->e:Ljava/lang/Class;

    iput-object p3, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    if-eqz p3, :cond_0

    array-length p1, p3

    iput p1, p0, Lbsh/BshMethod;->g:I

    :cond_0
    iput-object p4, p0, Lbsh/BshMethod;->h:[Ljava/lang/Class;

    iput-object p5, p0, Lbsh/BshMethod;->c:Lbsh/BSHBlock;

    iput-object p6, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    iput-object p7, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    iput-object p1, p0, Lbsh/BshMethod;->i:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lbsh/BshMethod;->j:Ljava/lang/Object;

    return-void
.end method

.method private b([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    if-nez p3, :cond_0

    new-instance p3, Lbsh/CallStack;

    iget-object v2, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    invoke-direct {p3, v2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    :cond_1
    array-length v3, p1

    iget v4, p0, Lbsh/BshMethod;->g:I

    if-eq v3, v4, :cond_2

    new-instance p1, Lbsh/EvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Wrong number of arguments for local method: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p5, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_2
    const/4 v3, 0x1

    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v4

    goto :goto_0

    :cond_3
    new-instance v4, Lbsh/NameSpace;

    iget-object v5, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    iget-object v6, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iput-boolean v3, v4, Lbsh/NameSpace;->c:Z

    :goto_0
    invoke-virtual {v4, p4}, Lbsh/NameSpace;->a(Lbsh/SimpleNode;)V

    :goto_1
    iget v5, p0, Lbsh/BshMethod;->g:I

    const/4 v6, 0x0

    if-lt v2, v5, :cond_b

    if-nez p5, :cond_4

    invoke-virtual {p3, v4}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_4
    iget-object p1, p0, Lbsh/BshMethod;->c:Lbsh/BSHBlock;

    invoke-virtual {p1, p3, p2, v3}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object p2

    if-nez p5, :cond_5

    invoke-virtual {p3}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    :cond_5
    instance-of p5, p1, Lbsh/ReturnControl;

    if-eqz p5, :cond_7

    move-object v6, p1

    check-cast v6, Lbsh/ReturnControl;

    iget p1, v6, Lbsh/ReturnControl;->kind:I

    const/16 p5, 0x2e

    if-ne p1, p5, :cond_6

    iget-object p1, v6, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    sget-object p5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p5, :cond_7

    sget-object p5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, p5, :cond_7

    new-instance p1, Lbsh/EvalError;

    const-string p3, "Cannot return value from void method"

    iget-object p4, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {p1, p3, p4, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_6
    new-instance p1, Lbsh/EvalError;

    const-string p3, "\'continue\' or \'break\' in method body"

    iget-object p4, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {p1, p3, p4, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_7
    if-eqz v0, :cond_a

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p2, :cond_8

    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :cond_8
    :try_start_0
    invoke-static {p1, v0, v3}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz v6, :cond_9

    iget-object p4, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    :cond_9
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Incorrect type returned from method: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p5, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_a
    return-object p1

    :cond_b
    aget-object v5, v1, v2

    if-eqz v5, :cond_c

    :try_start_1
    aget-object v5, p1, v2

    aget-object v7, v1, v2

    invoke-static {v5, v7, v3}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v5, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v7, v1, v2

    aget-object v8, p1, v2

    invoke-virtual {v4, v5, v7, v8, v6}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Typed method parameter assignment"

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lbsh/EvalError;

    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Invalid argument: `"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " for method: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_c
    aget-object v5, p1, v2

    sget-object v6, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v5, v6, :cond_d

    new-instance p1, Lbsh/EvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Undefined variable or class name, parameter: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p5, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    aget-object p5, p5, v2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p5, " to method: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p5, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_d
    :try_start_3
    iget-object v5, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v6, p1, v2

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lbsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method a([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/Error;

    const-string p2, "HERE!"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lbsh/BshMethod;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object p2, p0, Lbsh/BshMethod;->i:Ljava/lang/reflect/Method;

    iget-object p5, p0, Lbsh/BshMethod;->j:Ljava/lang/Object;

    invoke-static {p2, p5, p1}, Lbsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v2, p1

    new-instance p1, Lbsh/TargetError;

    const-string v1, "Exception invoking imported object method."

    const/4 v5, 0x1

    move-object v0, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lbsh/EvalError;

    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error invoking Java method: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_3
    iget-object v0, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    iget-boolean v0, v0, Lbsh/NameSpace;->d:Z

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "Can\'t get class instance for synchronized method."

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lbsh/BshMethod;->a:Lbsh/NameSpace;

    invoke-virtual {v0, p2}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :goto_2
    monitor-enter v0

    :try_start_2
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->b([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->b([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getModifiers()Lbsh/Modifiers;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->h:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/BshMethod;->b:Lbsh/Modifiers;

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->a([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->a([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Scripted Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BshMethod;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
