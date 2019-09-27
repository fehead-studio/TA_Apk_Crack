.class Lbsh/BSHFormalParameter;
.super Lbsh/SimpleNode;


# static fields
.field public static final UNTYPED:Ljava/lang/Class;


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    goto :goto_1

    :cond_0
    sget-object p1, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    return-object p1
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Ljava/lang/Object;"

    return-object p1
.end method
