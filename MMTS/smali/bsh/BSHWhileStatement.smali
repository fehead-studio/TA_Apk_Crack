.class Lbsh/BSHWhileStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public isDoStatement:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lbsh/BSHWhileStatement;->jjtGetNumChildren()I

    move-result v0

    iget-boolean v1, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {p0, v2}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v3}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v4, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    invoke-static {v1, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lbsh/ReturnControl;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Lbsh/ReturnControl;

    iget v6, v6, Lbsh/ReturnControl;->kind:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_6

    const/16 v7, 0x13

    if-eq v6, v7, :cond_2

    const/16 v4, 0x2e

    if-eq v6, v4, :cond_5

    goto :goto_2

    :cond_5
    return-object v5

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    :goto_4
    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method
