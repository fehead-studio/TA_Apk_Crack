.class Lbsh/BSHType;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/BshClassManager$Listener;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/Class;

.field private c:I

.field private d:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-string p0, "Z"

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string p0, "C"

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string p0, "B"

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string p0, "S"

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string p0, "I"

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string p0, "J"

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string p0, "F"

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string p0, "D"

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string p0, "V"

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object p0

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method


# virtual methods
.method a()Lbsh/SimpleNode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHType;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0
.end method

.method public addArrayDimension()V
    .locals 1

    iget v0, p0, Lbsh/BSHType;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHType;->c:I

    return-void
.end method

.method public classLoaderChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/BSHType;->d:Ljava/lang/Class;

    iput-object v0, p0, Lbsh/BSHType;->b:Ljava/lang/Class;

    return-void
.end method

.method public getArrayDims()I
    .locals 1

    iget v0, p0, Lbsh/BSHType;->c:I

    return v0
.end method

.method public getBaseType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbsh/BSHType;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lbsh/BSHType;->d:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbsh/BSHType;->d:Ljava/lang/Class;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHType;->a()Lbsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    check-cast v0, Lbsh/BSHPrimitiveType;

    invoke-virtual {v0}, Lbsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbsh/BSHType;->b:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lbsh/BSHType;->c:I

    if-lez v0, :cond_2

    :try_start_0
    iget v0, p0, Lbsh/BSHType;->c:I

    new-array v0, v0, [I

    iget-object v1, p0, Lbsh/BSHType;->b:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHType;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p2, Lbsh/EvalError;

    const-string v0, "Couldn\'t construct array type"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_2
    iget-object p1, p0, Lbsh/BSHType;->b:Ljava/lang/Class;

    iput-object p1, p0, Lbsh/BSHType;->d:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    iget-object p1, p0, Lbsh/BSHType;->d:Ljava/lang/Class;

    return-object p1
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbsh/BSHType;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbsh/BSHType;->a:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lbsh/BSHType;->a()Lbsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    check-cast v0, Lbsh/BSHPrimitiveType;

    iget-object p1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    invoke-static {p1}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    move-object v1, v0

    check-cast v1, Lbsh/BSHAmbiguousName;

    iget-object v1, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbsh/BshClassManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    :try_start_0
    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :catch_0
    :goto_0
    if-eqz v3, :cond_3

    invoke-static {v3}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/16 p1, 0x2f

    const/16 p2, 0x2e

    if-eqz p3, :cond_5

    invoke-static {v1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "L"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/4 p2, 0x0

    :goto_3
    iget p3, p0, Lbsh/BSHType;->c:I

    if-lt p2, p3, :cond_6

    iput-object p1, p0, Lbsh/BSHType;->a:Ljava/lang/String;

    return-object p1

    :cond_6
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3
.end method
