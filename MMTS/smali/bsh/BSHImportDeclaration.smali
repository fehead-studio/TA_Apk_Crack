.class Lbsh/BSHImportDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field public importPackage:Z

.field public staticImport:Z

.field public superImport:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->superImport:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lbsh/NameSpace;->doSuperImport()V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_0
    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->staticImport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lbsh/EvalError;

    const-string v0, "static field imports not supported yet"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_2
    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object p1

    check-cast p1, Lbsh/BSHAmbiguousName;

    iget-object p1, p1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    iget-boolean p2, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz p2, :cond_3

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1
.end method
