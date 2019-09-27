.class Lbsh/BSHUnaryExpression;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I

.field public postfix:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    return-void
.end method

.method private a(Lbsh/LHS;Z)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "lhsUnaryOperation"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lbsh/BSHUnaryExpression;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v1, p2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_1

    new-instance p1, Lbsh/UtilEvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unary operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " inappropriate for object"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lbsh/Primitive;

    invoke-static {p1, p2}, Lbsh/Primitive;->unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lbsh/BSHUnaryExpression;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lbsh/Primitive;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Boolean;I)Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Integer;I)I

    move-result p1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_1

    const/16 v1, 0x65

    if-ne p2, v1, :cond_4

    :cond_1
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p2, :cond_2

    new-instance p2, Ljava/lang/Byte;

    int-to-byte p1, p1

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p2

    :cond_2
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p2, :cond_3

    new-instance p2, Ljava/lang/Short;

    int-to-short p1, p1

    invoke-direct {p2, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p2

    :cond_3
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p2, :cond_4

    new-instance p2, Ljava/lang/Character;

    int-to-char p1, p1

    invoke-direct {p2, p1}, Ljava/lang/Character;-><init>(C)V

    return-object p2

    :cond_4
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Long;I)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Float;I)F

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Double;I)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :cond_8
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "An error occurred.  Please call technical support."

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHUnaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    :try_start_0
    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p2

    iget v0, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, p2, v0}, Lbsh/BSHUnaryExpression;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    return-object p2

    :cond_1
    :goto_0
    check-cast v0, Lbsh/BSHPrimaryExpression;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result p2

    invoke-direct {p0, v0, p2}, Lbsh/BSHUnaryExpression;->a(Lbsh/LHS;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method
