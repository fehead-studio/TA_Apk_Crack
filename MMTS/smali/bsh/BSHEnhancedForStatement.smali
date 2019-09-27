.class Lbsh/BSHEnhancedForStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    invoke-virtual {p0}, Lbsh/BSHEnhancedForStatement;->jjtGetNumChildren()I

    move-result v3

    instance-of v4, v2, Lbsh/BSHType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    check-cast v2, Lbsh/BSHType;

    invoke-virtual {v2, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v6}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/SimpleNode;

    const/4 v7, 0x2

    if-le v3, v7, :cond_0

    invoke-virtual {p0, v7}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lbsh/SimpleNode;

    :cond_0
    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-le v3, v6, :cond_2

    invoke-virtual {p0, v6}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    new-instance v4, Lbsh/BlockNameSpace;

    invoke-direct {v4, v0}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v4}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v2, v7, :cond_3

    new-instance p2, Lbsh/EvalError;

    const-string v0, "The collection, array, map, iterator, or enumeration portion of a for statement cannot be null."

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_3
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lbsh/CollectionManager;->isBshIterable(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance p2, Lbsh/EvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t iterate over type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_4
    invoke-virtual {v7, v2}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;

    move-result-object v2

    sget-object v7, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :goto_1
    invoke-interface {v2}, Lbsh/BshIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    :try_start_0
    iget-object v8, p0, Lbsh/BSHEnhancedForStatement;->a:Ljava/lang/String;

    invoke-interface {v2}, Lbsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Lbsh/Modifiers;

    invoke-direct {v10}, Lbsh/Modifiers;-><init>()V

    invoke-virtual {v4, v8, v5, v9, v10}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_6

    :cond_6
    iget-object v8, p0, Lbsh/BSHEnhancedForStatement;->a:Ljava/lang/String;

    invoke-interface {v2}, Lbsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v1}, Lbsh/BlockNameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lbsh/ReturnControl;

    if-eqz v9, :cond_9

    move-object v9, v8

    check-cast v9, Lbsh/ReturnControl;

    iget v9, v9, Lbsh/ReturnControl;->kind:I

    const/16 v10, 0xc

    if-eq v9, v10, :cond_7

    const/16 v10, 0x13

    if-eq v9, v10, :cond_9

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_8

    goto :goto_3

    :cond_7
    move-object v8, v7

    :cond_8
    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    move-object v8, v7

    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    move-object v7, v8

    :goto_5
    invoke-virtual {p1, v0}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    return-object v7

    :cond_a
    move-object v7, v8

    goto :goto_1

    :goto_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "for loop iterator variable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BSHEnhancedForStatement;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method
