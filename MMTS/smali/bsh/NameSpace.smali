.class public Lbsh/NameSpace;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BshClassManager$Listener;
.implements Lbsh/NameSource;
.implements Ljava/io/Serializable;


# static fields
.field public static final JAVACODE:Lbsh/NameSpace;


# instance fields
.field protected a:Ljava/util/Hashtable;

.field b:Lbsh/SimpleNode;

.field c:Z

.field d:Z

.field e:Ljava/lang/Class;

.field f:Ljava/lang/Object;

.field g:Ljava/util/Vector;

.field private h:Ljava/lang/String;

.field private i:Lbsh/NameSpace;

.field private j:Ljava/util/Hashtable;

.field private k:Ljava/util/Hashtable;

.field private l:Ljava/util/Vector;

.field private m:Ljava/util/Vector;

.field private n:Ljava/util/Vector;

.field private o:Ljava/util/Vector;

.field private p:Ljava/lang/String;

.field private transient q:Lbsh/BshClassManager;

.field private r:Lbsh/This;

.field private s:Ljava/util/Hashtable;

.field private transient t:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbsh/NameSpace;

    const/4 v1, 0x0

    check-cast v1, Lbsh/BshClassManager;

    const-string v2, "Called from compiled Java code."

    invoke-direct {v0, v1, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    sput-object v0, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    sget-object v0, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/NameSpace;->c:Z

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3}, Lbsh/NameSpace;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    invoke-virtual {p0, p2}, Lbsh/NameSpace;->a(Lbsh/BshClassManager;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p5, v0, p0, p4}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance p2, Lbsh/UtilEvalError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Error loading script: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/util/Enumeration;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Enumeration;)[Lbsh/BshMethod;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lbsh/BshMethod;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lbsh/BshMethod;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lbsh/NameSpace;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lbsh/NameSpace;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_4
    return-object v0

    :cond_5
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getClass(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " not\tfound in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    return-object v1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lbsh/NameSpace;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lbsh/NameSpace;->b(Ljava/lang/String;)Lbsh/Name;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/Name;->toClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_1

    :cond_1
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "imported unpackaged name not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :catch_0
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lbsh/BshClassManager;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbsh/NameSpace;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/BshClassManager;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lbsh/NameSpace;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public static identifierToClass(Lbsh/ClassIdentifier;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .locals 5

    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v4

    invoke-static {v4, v3, p1, p2, v1}, Lbsh/Reflect;->a(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance p1, Lbsh/BshMethod;

    invoke-direct {p1, v3, v2}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    return-object v2

    :cond_3
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, p1, p2, v4}, Lbsh/Reflect;->a(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance p1, Lbsh/BshMethod;

    invoke-direct {p1, v0, v2}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method a(Lbsh/Interpreter;)Lbsh/This;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->r:Lbsh/This;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lbsh/This;->a(Lbsh/NameSpace;Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    iput-object p1, p0, Lbsh/NameSpace;->r:Lbsh/This;

    :cond_0
    iget-object p1, p0, Lbsh/NameSpace;->r:Lbsh/This;

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Lbsh/Variable;
    .locals 5

    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lbsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Lbsh/Variable;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Lbsh/LHS;

    invoke-direct {v4, v2, v3}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-direct {v0, p1, v1, v4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lbsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lbsh/Variable;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lbsh/LHS;

    invoke-direct {v3, v0}, Lbsh/LHS;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {v1, p1, v2, v3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    return-object v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;Z)Lbsh/Variable;
    .locals 2

    iget-boolean v0, p0, Lbsh/NameSpace;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->a(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Variable;

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lbsh/NameSpace;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->a(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbsh/NameSpace;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->e:Ljava/lang/Class;

    if-eqz v0, :cond_1

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t refer to class instance from static context."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t resolve class instance \'this\' in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lbsh/Variable;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lbsh/Variable;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Lbsh/BshClassManager;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    return-void
.end method

.method a(Lbsh/SimpleNode;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->b:Lbsh/SimpleNode;

    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->e:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->f:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importObject(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->a(Ljava/util/Vector;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addNameSourceListener(Lbsh/NameSource$Listener;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->g:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->g:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method b(Ljava/lang/String;)Lbsh/Name;
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Name;

    if-nez v0, :cond_1

    new-instance v0, Lbsh/Name;

    invoke-direct {v0, p0, p1}, Lbsh/Name;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iget-object v1, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method b()Lbsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->b:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->b:Lbsh/SimpleNode;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->b()Lbsh/SimpleNode;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->p:Ljava/lang/String;

    return-void
.end method

.method public classLoaderChanged()V
    .locals 0

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    iput-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    iput-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    iget-object v1, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    :cond_0
    iput-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    return-void
.end method

.method public doSuperImport()V
    .locals 1

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/BshClassManager;->b()V

    return-void
.end method

.method public get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0, p0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->b(Ljava/lang/String;)Lbsh/Name;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->a(Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0, p1}, Lbsh/NameSpace;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    sget-object v1, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "experiment: creating class manager"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    iput-object v0, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    iget-object v0, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    return-object v0
.end method

.method public getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 11

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    iget-object v1, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".bsh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "searching for script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lbsh/NameSpace;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, p1

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "searching for class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_6
    :goto_4
    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeclaredVariables()[Lbsh/Variable;
    .locals 5

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lbsh/Variable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Lbsh/Variable;

    iget-object v2, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbsh/Variable;

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0
.end method

.method public getGlobal(Lbsh/Interpreter;)Lbsh/This;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1
.end method

.method public getInvocationLine()I
    .locals 1

    invoke-virtual {p0}, Lbsh/NameSpace;->b()Lbsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInvocationText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbsh/NameSpace;->b()Lbsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<invoked from Java code>"

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object p1

    return-object p1
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;
    .locals 5

    iget-boolean v0, p0, Lbsh/NameSpace;->d:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/util/Vector;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lbsh/BshMethod;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Lbsh/BshMethod;

    check-cast v1, Lbsh/BshMethod;

    aput-object v1, v2, v3

    :goto_1
    array-length v1, v2

    new-array v1, v1, [[Ljava/lang/Class;

    :goto_2
    array-length v4, v2

    if-lt v3, v4, :cond_2

    invoke-static {p2, v1}, Lbsh/Reflect;->a([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    aget-object v0, v2, v1

    goto :goto_3

    :cond_2
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lbsh/NameSpace;->d:Z

    if-nez v1, :cond_4

    if-nez p3, :cond_4

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    :cond_4
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    iget-object p3, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {p3, p1, p2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->a(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Lbsh/BshMethod;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lbsh/BshMethod;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->b(Ljava/util/Enumeration;)[Lbsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lbsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    return-object v0
.end method

.method public getSuper(Lbsh/Interpreter;)Lbsh/This;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object p1

    return-object p1
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVariable(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->a(Lbsh/Variable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->a(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importClass(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->a:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importCommands(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lbsh/NameSpace;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importObject(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->n:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importStatic(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->o:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lbsh/NameSpace;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadDefaultImports()V
    .locals 1

    const-string v0, "bsh.EvalError"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "bsh.Interpreter"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "javax.swing.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "javax.swing"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.net"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.util"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.io"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "/bsh/commands"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importCommands(Ljava/lang/String;)V

    return-void
.end method

.method public nameSpaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/NameSpace;->t:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->s:Ljava/util/Hashtable;

    return-void
.end method

.method public prune()V
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->q:Lbsh/BshClassManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->a(Lbsh/BshClassManager;)V

    :cond_0
    invoke-virtual {p0, v1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .locals 2

    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v1, v0, Lbsh/BshMethod;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lbsh/NameSpace;->k:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->h:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lbsh/NameSpace;)V
    .locals 0

    iput-object p1, p0, Lbsh/NameSpace;->i:Lbsh/NameSpace;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    :cond_0
    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 3

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object p4

    if-eq p4, p2, :cond_1

    new-instance p2, Lbsh/UtilEvalError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Typed variable: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " was previously declared with type: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v1, p3, v0}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    new-instance v1, Lbsh/Variable;

    invoke-direct {v1, p1, p2, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    const-string v1, "final"

    invoke-virtual {v0, p4, v1}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    sget-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "null variable value"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p4}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object p4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p4, p2, p3}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance p3, Lbsh/UtilEvalError;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Variable assignment: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    if-eqz p3, :cond_3

    new-instance p2, Lbsh/UtilEvalError;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "(Strict Java mode) Assignment to undeclared variable: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iget-object p3, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    new-instance p4, Lbsh/Variable;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, v0}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {p3, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "NameSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/NameSpace;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lbsh/NameSpace;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lbsh/NameSpace;->d:Z

    if-eqz v1, :cond_1

    const-string v1, " (isClass) "

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lbsh/NameSpace;->c:Z

    if-eqz v1, :cond_2

    const-string v1, " (method) "

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/NameSpace;->e:Ljava/lang/Class;

    if-eqz v1, :cond_3

    const-string v1, " (class static) "

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/NameSpace;->f:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, " (class instance) "

    goto :goto_4

    :cond_4
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/NameSpace;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    :cond_0
    return-void
.end method
