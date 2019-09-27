.class Lbsh/BSHPrimaryExpression;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/BSHPrimaryExpression;->jjtGetNumChildren()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v1, :cond_6

    instance-of v1, v0, Lbsh/SimpleNode;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lbsh/BSHAmbiguousName;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lbsh/BSHAmbiguousName;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    goto :goto_1

    :cond_0
    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lbsh/EvalError;

    const-string p3, "Can\'t assign to prefix."

    invoke-direct {p1, p3, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_2
    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_1
    instance-of p3, v0, Lbsh/LHS;

    if-eqz p3, :cond_5

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    :try_start_0
    check-cast v0, Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0, p2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_5
    return-object v0

    :cond_6
    invoke-virtual {p0, v2}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/BSHPrimarySuffix;

    invoke-virtual {v3, v0, p1, p2, p3}, Lbsh/BSHPrimarySuffix;->doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->a(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->a(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lbsh/LHS;

    if-nez v0, :cond_0

    new-instance p2, Lbsh/EvalError;

    const-string v0, "Can\'t assign to:"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_0
    check-cast p2, Lbsh/LHS;

    return-object p2
.end method
