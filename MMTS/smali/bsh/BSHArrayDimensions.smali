.class Lbsh/BSHArrayDimensions;
.super Lbsh/SimpleNode;


# instance fields
.field public baseType:Ljava/lang/Class;

.field public definedDimensions:[I

.field public numDefinedDims:I

.field public numUndefinedDims:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addDefinedDimension()V
    .locals 1

    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    return-void
.end method

.method public addUndefinedDimension()V
    .locals 1

    iget v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    instance-of v2, v1, Lbsh/BSHArrayInitializer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    if-nez v2, :cond_0

    new-instance p2, Lbsh/EvalError;

    const-string v0, "Internal Array Eval err:  unknown base type"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_0
    check-cast v1, Lbsh/BSHArrayInitializer;

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    iget v3, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lbsh/Reflect;->getArrayDimensions(Ljava/lang/Class;)I

    move-result p2

    new-array v2, p2, [I

    iput-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v2, v2

    iget v3, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    if-eq v2, v3, :cond_1

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incompatible initializer. Allocation calls for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " dimensional array, but initializer is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " dimensional array"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_1
    move-object p2, v1

    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v2, v2

    if-lt p1, v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, p1

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    aget v2, v2, p1

    if-lez v2, :cond_3

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    new-array v1, v1, [I

    iput-object v1, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    :goto_1
    iget v1, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    if-lt v0, v1, :cond_5

    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :cond_5
    :try_start_0
    invoke-virtual {p0, v0}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    check-cast v1, Lbsh/Primitive;

    invoke-virtual {v1}, Lbsh/Primitive;->intValue()I

    move-result v1

    aput v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    new-instance p2, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Array index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " does not evaluate to an integer"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2
.end method

.method public eval(Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "array base type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lbsh/BSHArrayDimensions;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
