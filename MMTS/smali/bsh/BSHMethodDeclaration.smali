.class Lbsh/BSHMethodDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field a:Lbsh/BSHReturnType;

.field b:Lbsh/BSHFormalParameters;

.field c:Lbsh/BSHBlock;

.field d:I

.field e:Ljava/lang/Class;

.field f:I

.field public modifiers:Lbsh/Modifiers;

.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lbsh/BSHMethodDeclaration;->f:I

    return-void
.end method

.method private b(Lbsh/CallStack;Lbsh/Interpreter;)V
    .locals 3

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->a()V

    iget v0, p0, Lbsh/BSHMethodDeclaration;->d:I

    :goto_0
    iget v1, p0, Lbsh/BSHMethodDeclaration;->f:I

    iget v2, p0, Lbsh/BSHMethodDeclaration;->d:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    iget-object p2, p2, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    array-length p2, p2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lbsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    if-nez p1, :cond_2

    new-instance p1, Lbsh/EvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(Strict Java Mode) Undeclared return type for method: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_0
    iget-object p2, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    iget-object p2, p2, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    aget-object p2, p2, p1

    if-nez p2, :cond_1

    new-instance p2, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(Strict Java Mode) Undeclared argument type, parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {v2}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " in method: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->a()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->a()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHReturnType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, p0, Lbsh/BSHMethodDeclaration;->d:I

    instance-of v3, v1, Lbsh/BSHReturnType;

    if-eqz v3, :cond_2

    check-cast v1, Lbsh/BSHReturnType;

    iput-object v1, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    invoke-virtual {p0, v2}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->jjtGetNumChildren()I

    move-result v0

    iget v1, p0, Lbsh/BSHMethodDeclaration;->f:I

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Lbsh/BSHMethodDeclaration;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->c:Lbsh/BSHBlock;

    :cond_1
    iget v0, p0, Lbsh/BSHMethodDeclaration;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lbsh/BSHMethodDeclaration;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    iget v0, p0, Lbsh/BSHMethodDeclaration;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->c:Lbsh/BSHBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Lbsh/BSHReturnType;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->a()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->a:Lbsh/BSHReturnType;

    return-object v0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->a(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->b(Lbsh/CallStack;Lbsh/Interpreter;)V

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object p2

    new-instance v0, Lbsh/BshMethod;

    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-direct {v0, p0, p2, v1}, Lbsh/BshMethod;-><init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V

    :try_start_0
    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MethodDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
