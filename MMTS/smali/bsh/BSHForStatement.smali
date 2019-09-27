.class Lbsh/BSHForStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field private a:Lbsh/SimpleNode;

.field private b:Lbsh/SimpleNode;

.field private c:Lbsh/SimpleNode;

.field private d:Lbsh/SimpleNode;

.field public hasExpression:Z

.field public hasForInit:Z

.field public hasForUpdate:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasForInit:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->a:Lbsh/SimpleNode;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->b:Lbsh/SimpleNode;

    move v0, v3

    :cond_1
    iget-boolean v3, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->c:Lbsh/SimpleNode;

    move v0, v3

    :cond_2
    invoke-virtual {p0}, Lbsh/BSHForStatement;->jjtGetNumChildren()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->d:Lbsh/SimpleNode;

    :cond_3
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    new-instance v3, Lbsh/BlockNameSpace;

    invoke-direct {v3, v0}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v3}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    iget-boolean v3, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/BSHForStatement;->a:Lbsh/SimpleNode;

    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    :cond_4
    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :goto_1
    iget-boolean v4, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lbsh/BSHForStatement;->b:Lbsh/SimpleNode;

    invoke-static {v4, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lbsh/BSHForStatement;->d:Lbsh/SimpleNode;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lbsh/BSHForStatement;->d:Lbsh/SimpleNode;

    invoke-virtual {v4, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lbsh/ReturnControl;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Lbsh/ReturnControl;

    iget v5, v5, Lbsh/ReturnControl;->kind:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    const/16 v6, 0x13

    if-eq v5, v6, :cond_8

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_6
    move-object v4, v3

    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    move-object v4, v3

    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_9

    move-object v3, v4

    :goto_4
    invoke-virtual {p1, v0}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    return-object v3

    :cond_9
    iget-boolean v3, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lbsh/BSHForStatement;->c:Lbsh/SimpleNode;

    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    :cond_a
    move-object v3, v4

    goto :goto_1
.end method
