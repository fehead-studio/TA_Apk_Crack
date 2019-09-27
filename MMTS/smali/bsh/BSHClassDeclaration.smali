.class Lbsh/BSHClassDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field a:Ljava/lang/String;

.field b:Lbsh/Modifiers;

.field c:I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 12

    iget-boolean v0, p0, Lbsh/BSHClassDeclaration;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    move-object v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v7, v0

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lbsh/BSHClassDeclaration;->c:I

    new-array v6, v0, [Ljava/lang/Class;

    :goto_1
    iget v0, p0, Lbsh/BSHClassDeclaration;->c:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lbsh/BSHClassDeclaration;->jjtGetNumChildren()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_1
    new-instance v0, Lbsh/BSHBlock;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lbsh/BSHBlock;-><init>(I)V

    goto :goto_2

    :goto_3
    :try_start_0
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v3

    iget-object v4, p0, Lbsh/BSHClassDeclaration;->a:Ljava/lang/String;

    iget-object v5, p0, Lbsh/BSHClassDeclaration;->b:Lbsh/Modifiers;

    iget-boolean v9, p0, Lbsh/BSHClassDeclaration;->e:Z

    move-object v10, p1

    move-object v11, p2

    invoke-virtual/range {v3 .. v11}, Lbsh/ClassGenerator;->generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHAmbiguousName;

    invoke-virtual {v2, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v6, v1

    aget-object v3, v6, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance p2, Lbsh/EvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v2, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " is not an interface!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ClassDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BSHClassDeclaration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
