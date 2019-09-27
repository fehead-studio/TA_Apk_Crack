.class Lbsh/BSHAssignment;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public operator:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_1

    const/16 v0, 0x66

    if-eq p3, v0, :cond_0

    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Use of non + operator with String LHS"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_2

    instance-of v1, p2, Lbsh/Primitive;

    if-eqz v1, :cond_4

    :cond_2
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v1, :cond_9

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v1, :cond_8

    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_7

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Non primitive value in operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    invoke-static {p1, p2, p3}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Illegal use of null object or \'null\' literal"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Illegal use of undefined object or \'void\' literal"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimaryExpression;

    if-nez v0, :cond_0

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "Error, null LHSnode"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v1

    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "Error, null LHS"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lbsh/BSHAssignment;->operator:I

    const/16 v4, 0x51

    if-eq v3, v4, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p2

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v3, :cond_3

    new-instance p2, Lbsh/EvalError;

    const-string v0, "Void assignment."

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_3
    :try_start_1
    iget v3, p0, Lbsh/BSHAssignment;->operator:I

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    new-instance p2, Lbsh/InterpreterError;

    const-string v0, "unimplemented operator in assignment BSH"

    invoke-direct {p2, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 v3, 0x74

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_1
    const/16 v3, 0x72

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_2
    const/16 v3, 0x70

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_3
    const/16 v3, 0x6f

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_4
    const/16 v3, 0x6e

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_5
    const/16 v3, 0x6c

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_6
    const/16 v3, 0x6a

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_7
    const/16 v3, 0x69

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_8
    const/16 v3, 0x68

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_9
    const/16 v3, 0x67

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :pswitch_a
    const/16 v3, 0x66

    invoke-direct {p0, v2, p2, v3}, Lbsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :cond_4
    invoke-virtual {v0, p2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
