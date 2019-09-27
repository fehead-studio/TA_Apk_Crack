.class Lbsh/BSHSwitchStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z
    .locals 1

    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_1

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/16 v0, 0x5a

    :try_start_0
    invoke-static {p1, p2, v0}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Switch value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Lbsh/BSHSwitchStatement;->jjtGetNumChildren()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-lt v3, v0, :cond_0

    new-instance p2, Lbsh/EvalError;

    const-string v0, "Empty switch statement."

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v3}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/BSHSwitchLabel;

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_9

    if-eqz v5, :cond_1

    goto :goto_5

    :cond_1
    iget-boolean v6, v3, Lbsh/BSHSwitchLabel;->a:Z

    if-nez v6, :cond_5

    invoke-virtual {v3, p1, p2}, Lbsh/BSHSwitchLabel;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v6, p1, v1}, Lbsh/BSHSwitchStatement;->a(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    if-lt v4, v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    instance-of v7, v4, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_4

    move-object v3, v4

    check-cast v3, Lbsh/BSHSwitchLabel;

    :goto_2
    move v4, v6

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    :goto_3
    if-lt v4, v0, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    instance-of v7, v4, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    check-cast v4, Lbsh/SimpleNode;

    invoke-virtual {v4, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lbsh/ReturnControl;

    if-eqz v7, :cond_8

    move-object v5, v4

    check-cast v5, Lbsh/ReturnControl;

    goto :goto_2

    :cond_8
    :goto_4
    move v4, v6

    goto :goto_3

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    iget p1, v5, Lbsh/ReturnControl;->kind:I

    const/16 p2, 0x2e

    if-ne p1, p2, :cond_a

    return-object v5

    :cond_a
    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1
.end method
