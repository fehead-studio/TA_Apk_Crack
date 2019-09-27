.class public Lbsh/DelayedEvalBshMethod;
.super Lbsh/BshMethod;


# instance fields
.field d:Ljava/lang/String;

.field e:Lbsh/BSHReturnType;

.field f:[Ljava/lang/String;

.field g:Lbsh/BSHFormalParameters;

.field transient h:Lbsh/CallStack;

.field transient i:Lbsh/Interpreter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V
    .locals 9

    move-object v8, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    move-object v0, p2

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->d:Ljava/lang/String;

    move-object v0, p3

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->e:Lbsh/BSHReturnType;

    move-object v0, p5

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->f:[Ljava/lang/String;

    move-object v0, p6

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->g:Lbsh/BSHFormalParameters;

    move-object/from16 v0, p10

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->h:Lbsh/CallStack;

    move-object/from16 v0, p11

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->i:Lbsh/Interpreter;

    return-void
.end method


# virtual methods
.method public getParamTypeDescriptors()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->g:Lbsh/BSHFormalParameters;

    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->h:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->i:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "can\'t eval param types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->e:Lbsh/BSHReturnType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->e:Lbsh/BSHReturnType;

    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->h:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->i:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "can\'t eval return type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnTypeDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->d:Ljava/lang/String;

    return-object v0
.end method
