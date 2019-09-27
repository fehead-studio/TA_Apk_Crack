.class Lbsh/BSHPrimarySuffix;
.super Lbsh/SimpleNode;


# static fields
.field public static final CLASS:I = 0x0

.field public static final INDEX:I = 0x1

.field public static final NAME:I = 0x2

.field public static final PROPERTY:I = 0x3


# instance fields
.field public field:Ljava/lang/String;

.field public operation:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method static a(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lbsh/EvalError;

    const-string p2, "Not an array"

    invoke-direct {p0, p2, p3, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p3, p0}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object p0

    check-cast p0, Lbsh/SimpleNode;

    invoke-virtual {p0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lbsh/Primitive;

    if-nez p2, :cond_1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->intValue()I

    move-result p0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "doIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    const-string p2, "Arrays may only be indexed by integer types."

    invoke-virtual {p0, p2, p3, p1}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p0

    throw p0
.end method

.method private a(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lbsh/EvalError;

    const-string p2, "Can\'t assign array length"

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_0
    new-instance p2, Lbsh/Primitive;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p2, p1}, Lbsh/Primitive;-><init>(I)V

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lbsh/BSHPrimarySuffix;->jjtGetNumChildren()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, p2}, Lbsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, p2}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHArguments;

    invoke-virtual {v0, p3, p4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Method Invocation "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    const/4 p1, 0x1

    instance-of p4, v3, Lbsh/EvalError;

    if-eqz p4, :cond_5

    instance-of p1, v3, Lbsh/TargetError;

    if-eqz p1, :cond_4

    move-object p1, v3

    check-cast p1, Lbsh/TargetError;

    invoke-virtual {p1}, Lbsh/TargetError;->inNativeCode()Z

    move-result p2

    move v6, p2

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    :goto_0
    new-instance p1, Lbsh/TargetError;

    move-object v1, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lbsh/EvalError;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error in method invocation: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p1

    invoke-virtual {p1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method private a(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_0

    new-instance p1, Lbsh/EvalError;

    const-string p2, "Attempt to access property on undefined variable or class name"

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_0
    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_1

    new-instance p1, Lbsh/EvalError;

    const-string p2, "Attempt to access property on a primitive"

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance p1, Lbsh/EvalError;

    const-string p2, "Property expression must be a String or identifier."

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    new-instance p1, Lbsh/LHS;

    check-cast p4, Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2, p4}, Lbsh/CollectionManager;->getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :cond_4
    return-object p1

    :cond_5
    :try_start_0
    move-object p1, p4

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lbsh/EvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No such property: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Property: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method private b(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p3, p4, p0}, Lbsh/BSHPrimarySuffix;->a(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I

    move-result p4

    if-eqz p2, :cond_0

    new-instance p2, Lbsh/LHS;

    invoke-direct {p2, p1, p4}, Lbsh/LHS;-><init>(Ljava/lang/Object;I)V

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p1, p4}, Lbsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lbsh/BSHType;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lbsh/EvalError;

    const-string p2, "Can\'t assign .class"

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_0
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    check-cast p1, Lbsh/BSHType;

    invoke-virtual {p1, p3, p4}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lbsh/EvalError;

    const-string p2, "Attempt to use .class suffix on non class."

    invoke-direct {p1, p2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_2
    instance-of v0, p1, Lbsh/SimpleNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lbsh/BSHAmbiguousName;

    if-eqz v0, :cond_3

    check-cast p1, Lbsh/BSHAmbiguousName;

    invoke-virtual {p1, p3, p4}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    check-cast p1, Lbsh/SimpleNode;

    invoke-virtual {p1, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lbsh/LHS;

    if-eqz v0, :cond_5

    :try_start_0
    check-cast p1, Lbsh/LHS;

    invoke-virtual {p1}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_5
    :goto_0
    :try_start_1
    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lbsh/InterpreterError;

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, p1, p3, p4}, Lbsh/BSHPrimarySuffix;->a(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->a(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->b(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_1
    const-string p2, "Unknown suffix type"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    new-instance p2, Lbsh/TargetError;

    const-string v1, "target exception"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lbsh/EvalError;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "reflection error: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
