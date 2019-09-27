.class Lbsh/SimpleNode;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/Node;


# static fields
.field public static JAVACODE:Lbsh/SimpleNode;


# instance fields
.field protected g:Lbsh/Node;

.field protected h:[Lbsh/Node;

.field protected i:I

.field j:Lbsh/Token;

.field k:Lbsh/Token;

.field l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/SimpleNode$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/SimpleNode$1;-><init>(I)V

    sput-object v0, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/SimpleNode;->i:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    aget-object v1, v1, v0

    check-cast v1, Lbsh/SimpleNode;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unimplemented or inappropriate for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChild(I)Lbsh/SimpleNode;
    .locals 0

    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object p1

    check-cast p1, Lbsh/SimpleNode;

    return-object p1
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lbsh/SimpleNode;->j:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->beginLine:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/SimpleNode;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsh/SimpleNode;->g:Lbsh/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/SimpleNode;->g:Lbsh/Node;

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<unknown file>"

    return-object v0

    :cond_1
    iget-object v0, p0, Lbsh/SimpleNode;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lbsh/SimpleNode;->j:Lbsh/Token;

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lbsh/SimpleNode;->k:Lbsh/Token;

    if-eq v1, v2, :cond_3

    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jjtAddChild(Lbsh/Node;I)V
    .locals 4

    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lbsh/Node;

    :goto_0
    iput-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    array-length v0, v0

    if-lt p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lbsh/Node;

    iget-object v1, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    iget-object v2, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    aput-object p1, v0, p2

    return-void
.end method

.method public jjtClose()V
    .locals 0

    return-void
.end method

.method public jjtGetChild(I)Lbsh/Node;
    .locals 1

    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public jjtGetNumChildren()I
    .locals 1

    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/SimpleNode;->h:[Lbsh/Node;

    array-length v0, v0

    return v0
.end method

.method public jjtGetParent()Lbsh/Node;
    .locals 1

    iget-object v0, p0, Lbsh/SimpleNode;->g:Lbsh/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    return-void
.end method

.method public jjtSetParent(Lbsh/Node;)V
    .locals 0

    iput-object p1, p0, Lbsh/SimpleNode;->g:Lbsh/Node;

    return-void
.end method

.method public prune()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/SimpleNode;->jjtSetParent(Lbsh/Node;)V

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbsh/SimpleNode;->l:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lbsh/SimpleNode;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lbsh/SimpleNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
