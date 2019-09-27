.class Lbsh/JJTParserState;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/util/Stack;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/JJTParserState;->c:I

    iput v0, p0, Lbsh/JJTParserState;->d:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lbsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lbsh/JJTParserState;->c:I

    iput v0, p0, Lbsh/JJTParserState;->d:I

    return-void
.end method

.method a(Lbsh/Node;)V
    .locals 1

    iget-object v0, p0, Lbsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lbsh/JJTParserState;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbsh/JJTParserState;->c:I

    return-void
.end method

.method a(Lbsh/Node;I)V
    .locals 1

    iget-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->d:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-gtz p2, :cond_0

    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbsh/JJTParserState;->e:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lbsh/JJTParserState;->c()Lbsh/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    invoke-interface {p1, p2, v0}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    move p2, v0

    goto :goto_0
.end method

.method a(Lbsh/Node;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lbsh/JJTParserState;->d()I

    move-result p2

    iget-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->d:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-gtz p2, :cond_0

    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lbsh/JJTParserState;->c()Lbsh/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    invoke-interface {p1, p2, v0}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    move p2, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lbsh/JJTParserState;->d:I

    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lbsh/JJTParserState;->e:Z

    return-void
.end method

.method b()Lbsh/Node;
    .locals 2

    iget-object v0, p0, Lbsh/JJTParserState;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method b(Lbsh/Node;)V
    .locals 1

    :goto_0
    iget p1, p0, Lbsh/JJTParserState;->c:I

    iget v0, p0, Lbsh/JJTParserState;->d:I

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lbsh/JJTParserState;->d:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lbsh/JJTParserState;->c()Lbsh/Node;

    goto :goto_0
.end method

.method c()Lbsh/Node;
    .locals 2

    iget v0, p0, Lbsh/JJTParserState;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JJTParserState;->c:I

    iget v1, p0, Lbsh/JJTParserState;->d:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->d:I

    :cond_0
    iget-object v0, p0, Lbsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method c(Lbsh/Node;)V
    .locals 3

    iget-object v0, p0, Lbsh/JJTParserState;->b:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lbsh/JJTParserState;->d:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lbsh/JJTParserState;->c:I

    iput v0, p0, Lbsh/JJTParserState;->d:I

    invoke-interface {p1}, Lbsh/Node;->jjtOpen()V

    return-void
.end method

.method d()I
    .locals 2

    iget v0, p0, Lbsh/JJTParserState;->c:I

    iget v1, p0, Lbsh/JJTParserState;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
