.class Lbsh/BSHFormalParameters;
.super Lbsh/SimpleNode;


# instance fields
.field a:[Ljava/lang/Class;

.field b:I

.field c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lbsh/BSHFormalParameters;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lbsh/BSHFormalParameters;->b:I

    iget v0, p0, Lbsh/BSHFormalParameters;->b:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->b:I

    if-lt v1, v2, :cond_1

    iput-object v0, p0, Lbsh/BSHFormalParameters;->d:[Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    iget-object v2, v2, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->a()V

    iget v0, p0, Lbsh/BSHFormalParameters;->b:I

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->b:I

    if-lt v1, v2, :cond_1

    iput-object v0, p0, Lbsh/BSHFormalParameters;->a:[Ljava/lang/Class;

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    invoke-virtual {v2, p1, p2}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParamNames()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->a()V

    iget-object v0, p0, Lbsh/BSHFormalParameters;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbsh/BSHFormalParameters;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbsh/BSHFormalParameters;->c:[Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->a()V

    iget v0, p0, Lbsh/BSHFormalParameters;->b:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->b:I

    if-lt v1, v2, :cond_1

    iput-object v0, p0, Lbsh/BSHFormalParameters;->c:[Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    invoke-virtual {v2, p1, p2, p3}, Lbsh/BSHFormalParameter;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
