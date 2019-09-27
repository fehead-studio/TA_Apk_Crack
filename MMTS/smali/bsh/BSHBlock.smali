.class Lbsh/BSHBlock;
.super Lbsh/SimpleNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/BSHBlock$NodeFilter;
    }
.end annotation


# instance fields
.field public isSynchronized:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbsh/BSHBlock;->isSynchronized:Z

    return-void
.end method


# virtual methods
.method a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    new-instance v2, Lbsh/BlockNameSpace;

    invoke-direct {v2, v1}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v2}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lbsh/BSHBlock;->isSynchronized:Z

    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v3

    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_6

    :goto_2
    if-lt v2, v3, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/SimpleNode;

    instance-of v5, v4, Lbsh/BSHClassDeclaration;

    if-eqz v5, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, v4}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v4, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lbsh/ReturnControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    :goto_3
    if-nez p3, :cond_4

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_4
    return-object v0

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {p0, v4}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    check-cast v5, Lbsh/SimpleNode;

    if-eqz p4, :cond_7

    invoke-interface {p4, v5}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    instance-of v6, v5, Lbsh/BSHClassDeclaration;

    if-eqz v6, :cond_8

    invoke-virtual {v5, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    if-nez p3, :cond_9

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_9
    throw p2
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v2, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v2, :cond_1

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
