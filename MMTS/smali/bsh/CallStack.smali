.class public Lbsh/CallStack;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public copy()Lbsh/CallStack;
    .locals 2

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    iget-object v1, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, v0, Lbsh/CallStack;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public depth()I
    .locals 1

    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lbsh/NameSpace;
    .locals 1

    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object p1, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    return-object p1

    :cond_0
    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsh/NameSpace;

    return-object p1
.end method

.method public pop()Lbsh/NameSpace;
    .locals 3

    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "pop on empty CallStack"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    iget-object v1, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    return-object v0
.end method

.method public push(Lbsh/NameSpace;)V
    .locals 2

    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public set(ILbsh/NameSpace;)V
    .locals 1

    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public swap(Lbsh/NameSpace;)Lbsh/NameSpace;
    .locals 3

    iget-object v0, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v2, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public toArray()[Lbsh/NameSpace;
    .locals 2

    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    new-array v0, v0, [Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CallStack:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lbsh/CallStack;->toArray()[Lbsh/NameSpace;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public top()Lbsh/NameSpace;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/CallStack;->get(I)Lbsh/NameSpace;

    move-result-object v0

    return-object v0
.end method
