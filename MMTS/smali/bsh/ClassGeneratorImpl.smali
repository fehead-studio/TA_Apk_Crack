.class public Lbsh/ClassGeneratorImpl;
.super Lbsh/ClassGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorImpl$ClassNodeFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbsh/ClassGenerator;-><init>()V

    return-void
.end method

.method static a(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v3

    if-lt v2, v3, :cond_0

    new-array p0, v1, [Lbsh/Variable;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lbsh/Variable;

    return-object p0

    :cond_0
    invoke-virtual {p0, v2}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    instance-of v4, v3, Lbsh/BSHTypedVariableDeclaration;

    if-eqz v4, :cond_2

    check-cast v3, Lbsh/BSHTypedVariableDeclaration;

    iget-object v4, v3, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v3, p1, p2, p3}, Lbsh/BSHTypedVariableDeclaration;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lbsh/BSHTypedVariableDeclaration;->a()[Lbsh/BSHVariableDeclarator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-lt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    aget-object v7, v3, v6

    iget-object v7, v7, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    :try_start_0
    new-instance v8, Lbsh/Variable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v5, v9, v4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static b(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;
    .locals 19

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v0

    if-lt v10, v0, :cond_0

    new-array v0, v11, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/DelayedEvalBshMethod;

    return-object v0

    :cond_0
    move-object/from16 v9, p0

    invoke-virtual {v9, v10}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    instance-of v1, v0, Lbsh/BSHMethodDeclaration;

    if-eqz v1, :cond_1

    check-cast v0, Lbsh/BSHMethodDeclaration;

    invoke-virtual {v0}, Lbsh/BSHMethodDeclaration;->a()V

    iget-object v8, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    iget-object v1, v0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v14}, Lbsh/BSHMethodDeclaration;->a(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/BSHMethodDeclaration;->b()Lbsh/BSHReturnType;

    move-result-object v3

    iget-object v6, v0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {v6, v12, v13, v14}, Lbsh/BSHFormalParameters;->getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lbsh/DelayedEvalBshMethod;

    iget-object v4, v0, Lbsh/BSHMethodDeclaration;->b:Lbsh/BSHFormalParameters;

    invoke-virtual {v4}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lbsh/BSHMethodDeclaration;->c:Lbsh/BSHBlock;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object v0, v7

    move-object v14, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v16, v10

    move-object v10, v12

    const/16 v17, 0x0

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lbsh/DelayedEvalBshMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move/from16 v16, v10

    const/16 v17, 0x0

    :goto_1
    add-int/lit8 v10, v16, 0x1

    const/4 v11, 0x0

    move-object/from16 v14, p3

    goto :goto_0
.end method

.method public static generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 20

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lbsh/Capabilities;->setAccessibility(Z)V
    :try_end_0
    .catch Lbsh/Capabilities$Unavailable; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v5

    invoke-virtual {v5}, Lbsh/NameSpace;->c()Ljava/lang/String;

    move-result-object v9

    iget-boolean v6, v5, Lbsh/NameSpace;->d:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    move-object v15, v7

    :goto_0
    if-nez v9, :cond_1

    move-object v14, v15

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :goto_1
    invoke-virtual/range {p7 .. p7}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v13

    invoke-virtual {v13, v14}, Lbsh/BshClassManager;->c(Ljava/lang/String;)V

    new-instance v12, Lbsh/NameSpace;

    invoke-direct {v12, v5, v15}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iput-boolean v4, v12, Lbsh/NameSpace;->d:Z

    invoke-virtual {v2, v12}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    sget-object v6, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v1, v2, v3, v4, v6}, Lbsh/BSHBlock;->a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v9}, Lbsh/ClassGeneratorImpl;->a(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;

    move-result-object v16

    invoke-static {v1, v2, v3, v9}, Lbsh/ClassGeneratorImpl;->b(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;

    move-result-object v17

    new-instance v11, Lbsh/ClassGeneratorUtil;

    move-object v6, v11

    move-object/from16 v7, p1

    move-object v8, v15

    move-object/from16 v10, p3

    move-object v4, v11

    move-object/from16 v11, p2

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move-object v2, v13

    move-object/from16 v13, v17

    move-object v3, v14

    move-object/from16 v14, v18

    move-object v1, v15

    move/from16 v15, p5

    invoke-direct/range {v6 .. v15}, Lbsh/ClassGeneratorUtil;-><init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Lbsh/NameSpace;Z)V

    invoke-virtual {v4}, Lbsh/ClassGeneratorUtil;->generateClass()[B

    move-result-object v4

    const-string v6, "debugClasses"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ".class"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v2, v3, v4}, Lbsh/BshClassManager;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x24

    const/16 v7, 0x2e

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    :try_start_2
    const-string v5, "_bshInstanceInitializer"

    const/4 v6, 0x0

    move-object v7, v1

    move-object/from16 v8, v18

    move-object/from16 v1, p4

    invoke-virtual {v8, v5, v1, v6}, Lbsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v8, v4}, Lbsh/NameSpace;->a(Ljava/lang/Class;)V

    sget-object v5, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object v9, v2

    move-object v15, v3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v3, v10, v5}, Lbsh/BSHBlock;->a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshStatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_3
    invoke-static {v4, v1}, Lbsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v1

    invoke-virtual {v8, v3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error in class gen setup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    invoke-virtual {v9, v15}, Lbsh/BshClassManager;->f(Ljava/lang/String;)V

    return-object v4

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unable to init static: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3
    new-instance v3, Lbsh/EvalError;

    const-string v4, "Defining classes currently requires reflective Accessibility."

    invoke-direct {v3, v4, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3
.end method

.method public static invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lbsh/Reflect;->a(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p3}, Lbsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lbsh/Reflect;->a(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lbsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 0

    invoke-static/range {p1 .. p8}, Lbsh/ClassGeneratorImpl;->generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lbsh/ClassGeneratorImpl;->invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
    .locals 0

    invoke-static {p1, p2}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object p1

    invoke-virtual {p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object p1

    invoke-virtual {p1, p3}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    return-void
.end method
