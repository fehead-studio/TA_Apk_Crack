.class Lbsh/BSHTypedVariableDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field public modifiers:Lbsh/Modifiers;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private b()Lbsh/BSHType;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    return-object v0
.end method


# virtual methods
.method a()[Lbsh/BSHVariableDeclarator;
    .locals 5

    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetNumChildren()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [Lbsh/BSHVariableDeclarator;

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v2}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/BSHVariableDeclarator;

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->b()Lbsh/BSHType;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->a()[Lbsh/BSHVariableDeclarator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v3, v4

    invoke-virtual {v5, v1, p1, p2}, Lbsh/BSHVariableDeclarator;->eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v5, v5, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    iget-object v7, p0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, v5, v2, v6, v7}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const-string p2, "Typed variable declaration"

    invoke-virtual {p1, p2}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->b()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
