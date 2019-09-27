.class Lbsh/BSHVariableDeclarator;
.super Lbsh/SimpleNode;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lbsh/BSHVariableDeclarator;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHVariableDeclarator;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-eqz p1, :cond_0

    instance-of v1, v0, Lbsh/BSHArrayInitializer;

    if-eqz v1, :cond_0

    check-cast v0, Lbsh/BSHArrayInitializer;

    invoke-virtual {p1}, Lbsh/BSHType;->getBaseType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lbsh/BSHType;->getArrayDims()I

    move-result p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object p3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p1, p3, :cond_2

    new-instance p1, Lbsh/EvalError;

    const-string p3, "Void initializer."

    invoke-direct {p1, p3, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BSHVariableDeclarator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
