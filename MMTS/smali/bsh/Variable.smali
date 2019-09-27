.class public Lbsh/Variable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Class;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Object;

.field e:Lbsh/Modifiers;

.field f:Lbsh/LHS;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    iput-object p1, p0, Lbsh/Variable;->a:Ljava/lang/String;

    iput-object p3, p0, Lbsh/Variable;->f:Lbsh/LHS;

    iput-object p2, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    iput-object p1, p0, Lbsh/Variable;->a:Ljava/lang/String;

    iput-object p2, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    iput-object p4, p0, Lbsh/Variable;->e:Lbsh/Modifiers;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p2, p3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    iput-object p2, p0, Lbsh/Variable;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->f:Lbsh/LHS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Variable;->f:Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Variable;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public getModifiers()Lbsh/Modifiers;
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->e:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbsh/Variable;->e:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Variable;->e:Lbsh/Modifiers;

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 2

    const-string v0, "final"

    invoke-virtual {p0, v0}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Variable;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Final variable, can\'t re-assign."

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    invoke-static {p1}, Lbsh/Primitive;->getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lbsh/Variable;->f:Lbsh/LHS;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lbsh/Variable;->f:Lbsh/LHS;

    invoke-virtual {p2, p1, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v0, v1}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Lbsh/Variable;->d:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Variable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Variable;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Variable;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Variable;->f:Lbsh/LHS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
