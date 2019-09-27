.class Lbsh/Name;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Class;

.field c:Ljava/lang/Class;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Ljava/lang/Object;

.field private h:I

.field public namespace:Lbsh/NameSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    iput-object p1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iput-object p2, p0, Lbsh/Name;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static a(Lbsh/NameSpace;)Lbsh/NameSpace;
    .locals 1

    iget-boolean v0, p0, Lbsh/NameSpace;->d:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lbsh/NameSpace;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    iget-boolean v0, v0, Lbsh/NameSpace;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    iget-object v3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v5, p0, Lbsh/Name;->d:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lbsh/Name;->a(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    sget-object p2, Lbsh/Name;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    instance-of v2, v2, Lbsh/This;

    if-eqz v2, :cond_5

    :cond_1
    if-nez p3, :cond_5

    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "trying to resolve variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v4, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const/4 v7, 0x0

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbsh/Name;->a(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    check-cast v2, Lbsh/This;

    iget-object v4, v2, Lbsh/This;->a:Lbsh/NameSpace;

    const/4 v7, 0x1

    goto :goto_0

    :goto_1
    sget-object v2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v2, :cond_5

    sget-boolean p2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "resolved variable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " in namespace: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p2}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p1, :cond_a

    sget-boolean p1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "trying class: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    move-object v3, v2

    move-object v4, v3

    const/4 p1, 0x1

    :goto_2
    iget-object v5, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v5}, Lbsh/Name;->a(Ljava/lang/String;)I

    move-result v5

    if-le p1, v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v3, p1}, Lbsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v3, v4}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_9

    :goto_3
    if-eqz v3, :cond_8

    iget-object p2, p0, Lbsh/Name;->d:Ljava/lang/String;

    iget-object p3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p3}, Lbsh/Name;->a(Ljava/lang/String;)I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lbsh/ClassIdentifier;

    invoke-direct {p2, v3}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v4, p1, p2}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    sget-boolean p1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "not a class, trying var prefix "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    instance-of p1, p1, Lbsh/This;

    if-eqz p1, :cond_d

    :cond_b
    if-nez p3, :cond_d

    if-eqz p4, :cond_d

    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-nez p1, :cond_c

    iget-object p1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    check-cast p1, Lbsh/This;

    iget-object p1, p1, Lbsh/This;->a:Lbsh/NameSpace;

    :goto_5
    new-instance p3, Lbsh/NameSpace;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "auto: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    if-nez p1, :cond_f

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    sget-object p2, Lbsh/Name;->f:Ljava/lang/String;

    sget-object p3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    invoke-direct {p0, p1, p2, p3}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Class or variable not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    sget-object p2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p1, p2, :cond_10

    new-instance p1, Lbsh/UtilTargetError;

    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Null Pointer while evaluating: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_10
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    sget-object p2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p1, p2, :cond_11

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Undefined variable or class name while evaluating: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    instance-of p1, p1, Lbsh/Primitive;

    if-eqz p1, :cond_12

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Can\'t treat primitive like an object. Error while evaluating: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    instance-of p1, p1, Lbsh/ClassIdentifier;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    check-cast p1, Lbsh/ClassIdentifier;

    invoke-virtual {p1}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p2, v1}, Lbsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "this"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    :goto_6
    if-nez p3, :cond_13

    new-instance p2, Lbsh/UtilEvalError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Can\'t find enclosing \'this\' instance of class: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_13
    iget-object p4, p3, Lbsh/NameSpace;->f:Ljava/lang/Object;

    if-eqz p4, :cond_14

    iget-object p4, p3, Lbsh/NameSpace;->f:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    if-ne p4, p1, :cond_14

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p3, Lbsh/NameSpace;->f:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p3}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-virtual {p3}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p3

    goto :goto_6

    :cond_15
    :try_start_0
    sget-boolean p3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p3, :cond_16

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Name call to getStaticFieldValue, class: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p4, ", field:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_16
    invoke-static {p1, p2}, Lbsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p3

    sget-boolean p4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p4, :cond_17

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "field reflect error: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_17
    move-object p3, v2

    :goto_7
    if-nez p3, :cond_18

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "$"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, p4}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_18

    new-instance p3, Lbsh/ClassIdentifier;

    invoke-direct {p3, p4}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    :cond_18
    if-nez p3, :cond_19

    new-instance p3, Lbsh/UtilEvalError;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No static field or inner class: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " of "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_19
    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    if-eqz p3, :cond_1b

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " does not resolve to a class name."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lbsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "length"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lbsh/Primitive;

    iget-object p3, p0, Lbsh/Name;->g:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p2, p3}, Lbsh/Primitive;-><init>(I)V

    iget-object p3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p3}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    :try_start_1
    iget-object p2, p0, Lbsh/Name;->g:Ljava/lang/Object;

    invoke-static {p2, p1}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p3}, Lbsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lbsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    new-instance p2, Lbsh/UtilEvalError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Cannot access field: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", on object: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lbsh/Name;->g:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invokeLocalMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "invokeLocalMethod: interpreter = null"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-static {p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v2, v0, v1}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    :try_start_1
    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v2, v0, v1, p1}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_4

    :try_start_2
    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const-string v3, "invoke"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v2
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v7

    aput-object p2, v1, v8

    invoke-virtual {v2, v1, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lbsh/EvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Command not found: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p1

    :catch_0
    move-exception p1

    const-string p2, "Local method invocation"

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_4
    instance-of v0, v2, Lbsh/BshMethod;

    if-eqz v0, :cond_5

    check-cast v2, Lbsh/BshMethod;

    invoke-virtual {v2, p2, p1, p3, p4}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, v2, Ljava/lang/Class;

    if-eqz v0, :cond_6

    :try_start_3
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, p2, p1, p3}, Lbsh/Reflect;->invokeCompiledCommand(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "Error invoking compiled command: "

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "invalid command type"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "Error loading command: "

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    const-string p2, "Local method invocation"

    invoke-virtual {p1, p2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p3, :cond_0

    new-instance p2, Lbsh/InterpreterError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "lastEvalName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    iput-object p1, p0, Lbsh/Name;->e:Ljava/lang/String;

    iput-object p2, p0, Lbsh/Name;->d:Ljava/lang/String;

    iput-object p3, p0, Lbsh/Name;->g:Ljava/lang/Object;

    return-object p3
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :cond_1
    const/16 v5, 0x2e

    add-int/2addr v3, v0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v2, :cond_2

    add-int/2addr v4, v0

    if-lt v4, p1, :cond_1

    :cond_2
    if-ne v3, v2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    iput-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/Name;->h:I

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lbsh/Name;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lbsh/Name;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCompound(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static suffix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    :cond_1
    const/16 v3, 0x2e

    sub-int/2addr v2, v0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/2addr v1, v0

    if-lt v1, p1, :cond_1

    :cond_2
    if-ne v2, v3, :cond_3

    return-object p0

    :cond_3
    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    const-string v0, "this"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_0

    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Redundant to call .this on This type"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    invoke-virtual {p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object p2

    invoke-static {p2}, Lbsh/Name;->a(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lbsh/NameSpace;->a()Ljava/lang/Object;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    const-string v0, "super"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getSuper(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    invoke-virtual {p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object p2

    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p4

    iget-boolean p4, p4, Lbsh/NameSpace;->d:Z

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object p1

    invoke-virtual {p1, p3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    const/4 v0, 0x0

    const-string v1, "global"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_b

    if-eqz p5, :cond_b

    const-string v1, "namespace"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p2

    goto :goto_0

    :cond_7
    const-string v1, "variables"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v1, "methods"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lbsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v1, "interpreter"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lbsh/Name;->e:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p3

    goto :goto_0

    :cond_a
    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Can only call .interpreter on literal \'this\'"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_0
    if-nez v0, :cond_f

    if-eqz p5, :cond_f

    const-string v1, "caller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p2, p0, Lbsh/Name;->e:Ljava/lang/String;

    const-string p4, "this"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Lbsh/Name;->e:Ljava/lang/String;

    const-string p4, "caller"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_1

    :cond_c
    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Can only call .caller on literal \'this\' or literal \'.caller\'"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_1
    if-nez p1, :cond_e

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "no callstack"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget p2, p0, Lbsh/Name;->h:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lbsh/Name;->h:I

    invoke-virtual {p1, p2}, Lbsh/CallStack;->get(I)Lbsh/NameSpace;

    move-result-object p1

    invoke-virtual {p1, p3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1

    :cond_f
    if-nez v0, :cond_11

    if-eqz p5, :cond_11

    const-string p3, "callstack"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lbsh/Name;->e:Ljava/lang/String;

    const-string p5, "this"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    if-nez p1, :cond_12

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "no callstack"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Can only call .callstack on literal \'this\'"

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    move-object p1, v0

    :cond_12
    if-nez p1, :cond_13

    invoke-virtual {p2, p4}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :cond_13
    if-nez p1, :cond_14

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "null this field ref:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    return-object p1
.end method

.method public invokeMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    iget-object v2, p0, Lbsh/Name;->c:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lbsh/Name;->c:Ljava/lang/Class;

    invoke-static {v0, p1, v3, p2}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-static {v2}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/Name;->a(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-static {v2}, Lbsh/Name;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "super"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-static {v4}, Lbsh/Name;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v4

    invoke-static {v4}, Lbsh/Name;->a(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lbsh/NameSpace;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object p3

    invoke-virtual {p3, v0, p1, v3, p2}, Lbsh/ClassGenerator;->invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v1, v2}, Lbsh/NameSpace;->b(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v2, v4, :cond_3

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Attempt to resolve method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "() on undefined variable or class name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of v4, v2, Lbsh/ClassIdentifier;

    if-nez v4, :cond_6

    instance-of v0, v2, Lbsh/Primitive;

    if-eqz v0, :cond_5

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v2, v0, :cond_4

    new-instance p1, Lbsh/UtilTargetError;

    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Null Pointer in Method Invocation"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Attempt to access method on primitive... allowing bsh.Primitive to peek through for debugging"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_5
    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    sget-boolean p1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "invokeMethod: trying static - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_7
    check-cast v2, Lbsh/ClassIdentifier;

    invoke-virtual {v2}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lbsh/Name;->c:Ljava/lang/Class;

    if-eqz p1, :cond_8

    invoke-static {v0, p1, v3, p2}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "invokeMethod: unknown target: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized toClass()Ljava/lang/Class;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsh/Name;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Name;->b:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lbsh/Name;->a()V

    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string v1, "var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lbsh/Name;->b:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {p0, v1, v1, v2}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    :catch_0
    :try_start_4
    instance-of v2, v1, Lbsh/ClassIdentifier;

    if-eqz v2, :cond_2

    check-cast v1, Lbsh/ClassIdentifier;

    invoke-virtual {v1}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " not found in namespace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v0, p0, Lbsh/Name;->b:Ljava/lang/Class;

    iget-object v0, p0, Lbsh/Name;->b:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->a()V

    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string p2, "this"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbsh/UtilEvalError;

    const-string p2, "Can\'t assign to \'this\'."

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lbsh/LHS;

    iget-object p2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lbsh/Name;->d:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v2}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v1, v3}, Lbsh/Name;->a(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    if-nez p1, :cond_4

    instance-of p1, v0, Lbsh/ClassIdentifier;

    if-eqz p1, :cond_4

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Can\'t assign to class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez v0, :cond_5

    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error in LHS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of p1, v0, Lbsh/This;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string p2, "namespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string p2, "variables"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string p2, "methods"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    const-string p2, "caller"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "found This reference evaluating LHS"

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lbsh/Name;->e:Ljava/lang/String;

    const-string p2, "super"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    new-instance p2, Lbsh/LHS;

    check-cast v0, Lbsh/This;

    iget-object v0, v0, Lbsh/This;->a:Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_7
    :goto_2
    :try_start_3
    new-instance p1, Lbsh/UtilEvalError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Can\'t assign to special variable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_a

    :try_start_4
    instance-of p1, v0, Lbsh/ClassIdentifier;

    if-eqz p1, :cond_9

    check-cast v0, Lbsh/ClassIdentifier;

    invoke-virtual {v0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lbsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object p1
    :try_end_4
    .catch Lbsh/ReflectError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_9
    :try_start_5
    iget-object p1, p0, Lbsh/Name;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lbsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object p1
    :try_end_5
    .catch Lbsh/ReflectError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_6
    new-instance p2, Lbsh/UtilEvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Field access: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "Internal error in lhs..."

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lbsh/UtilEvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LHS evaluation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbsh/Name;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "null value in toObject()"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/Name;->a(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Name;->a:Ljava/lang/String;

    return-object v0
.end method
