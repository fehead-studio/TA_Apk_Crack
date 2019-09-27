.class Lbsh/BSHTryStatement;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHBlock;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lbsh/BSHTryStatement;->jjtGetNumChildren()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v4, :cond_1

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v6}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v6

    instance-of v9, v6, Lbsh/BSHFormalParameter;

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v8}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_2

    move-object v4, v6

    check-cast v4, Lbsh/BSHBlock;

    goto :goto_2

    :cond_2
    move-object v4, v7

    :goto_2
    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v6

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    move-object v1, v7

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v8, "Bsh Stack: "

    :goto_3
    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v9

    if-gt v9, v6, :cond_c

    move-object v6, v7

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_5

    :cond_3
    move-object v8, v7

    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    :goto_6
    if-lt v0, v9, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbsh/BSHFormalParameter;

    invoke-virtual {v10, p1, p2}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    iget-object v11, v10, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-nez v11, :cond_5

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance p2, Lbsh/EvalError;

    const-string v0, "(Strict Java) Untyped catch block"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_5
    iget-object v11, v10, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-eqz v11, :cond_6

    :try_start_1
    iget-object v11, v10, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    invoke-static {v8, v11, v5}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move-object v11, v8

    :goto_7
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    new-instance v2, Lbsh/BlockNameSpace;

    invoke-direct {v2, v1}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    :try_start_2
    iget-object v3, v10, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    sget-object v5, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    if-ne v3, v5, :cond_7

    iget-object v3, v10, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Lbsh/BlockNameSpace;->setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_7
    new-instance v3, Lbsh/Modifiers;

    invoke-direct {v3}, Lbsh/Modifiers;-><init>()V

    iget-object v3, v10, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    iget-object v5, v10, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    new-instance v6, Lbsh/Modifiers;

    invoke-direct {v6}, Lbsh/Modifiers;-><init>()V

    invoke-virtual {v2, v3, v5, v11, v6}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    invoke-virtual {p1, v2}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :try_start_3
    invoke-virtual {v0, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-object v1, v7

    goto :goto_9

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    throw p2

    :catch_2
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "Unable to set var in catch block namespace."

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    invoke-virtual {v4, p1, p2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    :cond_9
    if-eqz v1, :cond_a

    throw v1

    :cond_a
    instance-of p1, v6, Lbsh/ReturnControl;

    if-eqz p1, :cond_b

    return-object v6

    :cond_b
    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :cond_c
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v8, "\n"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3
.end method
