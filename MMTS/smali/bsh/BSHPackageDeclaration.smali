.class public Lbsh/BSHPackageDeclaration;
.super Lbsh/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lbsh/BSHPackageDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object p2

    check-cast p2, Lbsh/BSHAmbiguousName;

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object p1

    iget-object v0, p2, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbsh/NameSpace;->c(Ljava/lang/String;)V

    iget-object p2, p2, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1
.end method
