.class public Lbsh/Interpreter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ConsoleInterface;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# static fields
.field public static DEBUG:Z = false

.field public static LOCALSCOPING:Z = false

.field public static TRACE:Z = false

.field public static final VERSION:Ljava/lang/String; = "2.0b4"

.field static transient a:Ljava/io/PrintStream; = null

.field static b:Ljava/lang/String; = "\n"

.field static c:Lbsh/This;

.field static n:Ljava/lang/Class;


# instance fields
.field transient d:Lbsh/Parser;

.field e:Lbsh/NameSpace;

.field transient f:Ljava/io/Reader;

.field transient g:Ljava/io/PrintStream;

.field transient h:Ljava/io/PrintStream;

.field i:Lbsh/ConsoleInterface;

.field j:Lbsh/Interpreter;

.field k:Ljava/lang/String;

.field protected l:Z

.field protected m:Z

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lbsh/Interpreter;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->l:Z

    const-string v1, "bsh.evalOnly"

    new-instance v2, Lbsh/Primitive;

    invoke-direct {v2, v0}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V
    .locals 6

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getIn()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v2

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setConsole(Lbsh/ConsoleInterface;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Interpreter;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->p:Z

    new-instance v0, Lbsh/Parser;

    invoke-direct {v0, p1}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbsh/Interpreter;->d:Lbsh/Parser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Lbsh/Interpreter;->f:Ljava/io/Reader;

    iput-object p2, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    iput-object p3, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    iput-boolean p4, p0, Lbsh/Interpreter;->m:Z

    sput-object p3, Lbsh/Interpreter;->a:Ljava/io/PrintStream;

    iput-object p6, p0, Lbsh/Interpreter;->j:Lbsh/Interpreter;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lbsh/Interpreter;->getStrictJava()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setStrictJava(Z)V

    :cond_0
    iput-object p7, p0, Lbsh/Interpreter;->k:Ljava/lang/String;

    invoke-static {p0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object p1

    if-nez p5, :cond_1

    new-instance p2, Lbsh/NameSpace;

    const-string p3, "global"

    invoke-direct {p2, p1, p3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    iput-object p2, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    :goto_0
    const-string p1, "bsh"

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lbsh/This;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lbsh/Interpreter;->c()V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lbsh/Interpreter;->a()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-boolean p3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Time to initialize interpreter: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-long p4, p1, v0

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b()V
    .locals 4

    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->b:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lbsh/Interpreter;->a:Ljava/io/PrintStream;

    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    const-string v0, "trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->TRACE:Z

    const-string v0, "localscoping"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    const-string v0, "outfile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbsh/Interpreter;->redirectOutputToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(3):"

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(2):"

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static:"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " . . . "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    const-string v1, "bsh"

    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Object"

    invoke-direct {v2, v0, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lbsh/Interpreter;->c:Lbsh/This;

    if-nez v1, :cond_0

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Shared System Object"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    sput-object v1, Lbsh/Interpreter;->c:Lbsh/This;

    :cond_0
    const-string v1, "bsh.system"

    sget-object v2, Lbsh/Interpreter;->c:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bsh.shared"

    sget-object v2, Lbsh/Interpreter;->c:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Command Help Text"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const-string v1, "bsh.help"

    invoke-virtual {p0, v1, v0}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "bsh.cwd"

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "bsh.cwd"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "bsh.interactive"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->l:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private d()Lbsh/JJTParserState;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->d:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    return-object v0
.end method

.method public static final debug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/Interpreter;->a:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->d:Lbsh/Parser;

    invoke-virtual {v0}, Lbsh/Parser;->Line()Z

    move-result v0

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getBshPrompt()"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "bsh % "

    return-object v0
.end method

.method public static invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "main"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Lbsh/Interpreter;->n:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "[Ljava.lang.String;"

    invoke-static {v3}, Lbsh/Interpreter;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lbsh/Interpreter;->n:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v3, Lbsh/Interpreter;->n:Ljava/lang/Class;

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3, p0, v0, v2, v1}, Lbsh/Reflect;->a(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v2, p0, v0

    array-length v3, p0

    if-le v3, v1, :cond_0

    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    :goto_0
    new-instance p0, Lbsh/Interpreter;

    invoke-direct {p0}, Lbsh/Interpreter;-><init>()V

    const-string v0, "bsh.args"

    invoke-virtual {p0, v0, v3}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {p0, v2, v0}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3}, Lbsh/Interpreter;->invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, " main method threw exception:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "I/O Error: "

    goto :goto_1

    :catch_2
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Evaluation Error: "

    goto :goto_1

    :catch_3
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Script threw exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbsh/TargetError;->inNativeCode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    return-void

    :catch_4
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File not found: "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "os.name"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "java.version"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1.1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lbsh/Interpreter$1;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lbsh/Interpreter$1;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_3
    sget-object p0, Ljava/lang/System;->in:Ljava/io/InputStream;

    :goto_2
    new-instance v0, Lbsh/CommandLineReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Lbsh/Interpreter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v2, v3, v1}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    invoke-virtual {p0}, Lbsh/Interpreter;->run()V

    :cond_4
    return-void
.end method

.method public static redirectOutputToFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t redirect output to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".bshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find rc file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lbsh/InterpreterError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbsh/Interpreter;->i:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->i:Lbsh/ConsoleInterface;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbsh/ConsoleInterface;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    const-string v1, "eval stream"

    invoke-virtual {p0, p1, v0, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "eval: nameSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lbsh/Interpreter;

    iget-object v3, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    iget-object v4, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    new-instance p1, Lbsh/CallStack;

    invoke-direct {p1, p2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {v0}, Lbsh/Interpreter;->e()Z

    move-result v5
    :try_end_0
    .catch Lbsh/ParseException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lbsh/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->d()I

    move-result v1

    if-lez v1, :cond_7

    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->b()Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p3}, Lbsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    sget-boolean v6, Lbsh/Interpreter;->TRACE:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "// "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, p1, v0}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Lbsh/ParseException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lbsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v3

    if-le v3, v4, :cond_3

    new-instance v3, Lbsh/InterpreterError;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Callstack growing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    instance-of v3, v6, Lbsh/ReturnControl;

    if-eqz v3, :cond_5

    move-object v3, v6

    check-cast v3, Lbsh/ReturnControl;

    iget-object v3, v3, Lbsh/ReturnControl;->value:Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/ParseException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lbsh/InterpreterError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lbsh/TargetError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lbsh/EvalError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lbsh/TokenMgrError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object p3

    invoke-virtual {p3}, Lbsh/JJTParserState;->a()V

    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result p3

    if-le p3, v4, :cond_4

    invoke-virtual {p1}, Lbsh/CallStack;->clear()V

    invoke-virtual {p1, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_4
    :goto_1
    invoke-static {v3}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :try_start_4
    iget-boolean v3, v0, Lbsh/Interpreter;->q:Z

    if-eqz v3, :cond_6

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v6, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, ">"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_4
    .catch Lbsh/ParseException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lbsh/InterpreterError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lbsh/TargetError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lbsh/EvalError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lbsh/TokenMgrError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object v3, v6

    goto :goto_2

    :catch_0
    move-exception v3

    goto/16 :goto_7

    :catch_1
    move-exception v3

    goto/16 :goto_a

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v6

    goto/16 :goto_6

    :catch_5
    move-exception v6

    goto/16 :goto_9

    :catch_6
    move-exception v2

    goto/16 :goto_c

    :cond_7
    :goto_2
    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->a()V

    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v4, :cond_8

    invoke-virtual {p1}, Lbsh/CallStack;->clear()V

    invoke-virtual {p1, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_8
    move v1, v5

    goto/16 :goto_0

    :catch_7
    move-exception v6

    goto :goto_5

    :catch_8
    move-exception v6

    goto/16 :goto_8

    :catchall_0
    move-exception p3

    goto/16 :goto_d

    :catch_9
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_3
    :try_start_5
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Sourced file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " Token Parsing Error: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lbsh/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3, v1, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_a
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_4
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_9

    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_9
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Sourced file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " unknown error: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3, v1, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_b
    move-exception v6

    move v5, v1

    :goto_5
    move-object v1, v2

    :goto_6
    move-object v9, v6

    move-object v6, v3

    move-object v3, v9

    :goto_7
    sget-boolean v7, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v7, :cond_a

    invoke-static {v3}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_a
    invoke-virtual {v3}, Lbsh/EvalError;->a()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-virtual {v3, v1}, Lbsh/EvalError;->a(Lbsh/SimpleNode;)V

    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->a()V

    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v4, :cond_d

    goto :goto_b

    :catch_c
    move-exception v6

    move v5, v1

    :goto_8
    move-object v1, v2

    :goto_9
    move-object v9, v6

    move-object v6, v3

    move-object v3, v9

    :goto_a
    :try_start_6
    invoke-virtual {v3}, Lbsh/TargetError;->a()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-virtual {v3, v1}, Lbsh/TargetError;->a(Lbsh/SimpleNode;)V

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lbsh/TargetError;->reThrow(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->a()V

    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v4, :cond_d

    :goto_b
    invoke-virtual {p1}, Lbsh/CallStack;->clear()V

    invoke-virtual {p1, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_d
    move v1, v5

    move-object v3, v6

    goto/16 :goto_0

    :catch_d
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_c
    :try_start_7
    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Sourced file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " internal Error: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3, v1, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_e
    move-exception v1

    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v1, v2}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {v1, p3}, Lbsh/ParseException;->setErrorSourceFile(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_d
    invoke-direct {v0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->a()V

    invoke-virtual {p1}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v4, :cond_f

    invoke-virtual {p1}, Lbsh/CallStack;->clear()V

    invoke-virtual {p1, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_f
    throw p3
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "eval(String): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 3

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "inline evaluation of: ``"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lbsh/Interpreter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p0}, Lbsh/NameSpace;->get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v1, Lbsh/CallStack;

    invoke-direct {v1}, Lbsh/CallStack;-><init>()V

    invoke-virtual {p1, v0, v1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .locals 1

    invoke-virtual {p0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->f:Ljava/io/Reader;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v0, p0}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v1, Lbsh/CallStack;

    invoke-direct {v1}, Lbsh/CallStack;-><init>()V

    invoke-virtual {p1, v0, v1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getParent()Lbsh/Interpreter;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->j:Lbsh/Interpreter;

    return-object v0
.end method

.method public getShowResults()Z
    .locals 1

    iget-boolean v0, p0, Lbsh/Interpreter;->q:Z

    return v0
.end method

.method public getSourceFileInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->k:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "<unknown source>"

    return-object v0
.end method

.method public getStrictJava()Z
    .locals 1

    iget-boolean v0, p0, Lbsh/Interpreter;->o:Z

    return v0
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "bsh.cwd"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final print(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->i:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Interpreter;->i:Lbsh/ConsoleInterface;

    invoke-interface {v0, p1}, Lbsh/ConsoleInterface;->print(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    iget-object p1, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public final println(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lbsh/Interpreter;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    iget-boolean v0, p0, Lbsh/Interpreter;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bsh Interpreter: No stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lbsh/Interpreter;->m:Z

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "printBanner();"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BeanShell 2.0b4 - by Pat Niemeyer (pat@pat.net)"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v0, Lbsh/CallStack;

    iget-object v1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-direct {v0, v1}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lbsh/Interpreter;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lbsh/Interpreter;->p:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-boolean v4, p0, Lbsh/Interpreter;->m:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lbsh/Interpreter;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0}, Lbsh/Interpreter;->e()Z

    move-result v4
    :try_end_1
    .catch Lbsh/ParseException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lbsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->d()I

    move-result v2

    if-lez v2, :cond_9

    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, ">"

    invoke-virtual {v2, v5}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v0, p0}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v5

    if-le v5, v3, :cond_7

    new-instance v2, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Callstack growing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    instance-of v5, v2, Lbsh/ReturnControl;

    if-eqz v5, :cond_8

    check-cast v2, Lbsh/ReturnControl;

    iget-object v2, v2, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    :cond_8
    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v2, v5, :cond_9

    const-string v5, "$_"

    invoke-virtual {p0, v5, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lbsh/Interpreter;->q:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ">"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Lbsh/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lbsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lbsh/TargetError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v3, :cond_a

    :goto_2
    invoke-virtual {v0}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v0, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_a
    move v2, v4

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    goto/16 :goto_8

    :catch_4
    move-exception v2

    goto/16 :goto_c

    :catch_5
    move-exception v2

    goto/16 :goto_d

    :catch_6
    move-exception v2

    goto/16 :goto_f

    :catchall_0
    move-exception v1

    goto/16 :goto_11

    :catch_7
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error parsing input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    iget-object v2, p0, Lbsh/Interpreter;->d:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->f:Ljava/io/Reader;

    invoke-virtual {v2, v5}, Lbsh/Parser;->b(Ljava/io/Reader;)V

    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v3, :cond_2

    :goto_5
    invoke-virtual {v0}, Lbsh/CallStack;->clear()V

    iget-object v3, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v0, v3}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_1

    :catch_8
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_6
    :try_start_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_c

    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_c
    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    move v2, v4

    :goto_7
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v3, :cond_2

    goto :goto_5

    :catch_9
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_8
    :try_start_5
    iget-boolean v5, p0, Lbsh/Interpreter;->m:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :goto_a
    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_f

    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_f
    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    move v2, v4

    :goto_b
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v3, :cond_2

    goto/16 :goto_5

    :catch_a
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_c
    :try_start_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "// Uncaught Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lbsh/TargetError;->inNativeCode()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    iget-object v6, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    invoke-virtual {v2, v5, v6}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    :cond_11
    iget-boolean v5, p0, Lbsh/Interpreter;->m:Z

    if-nez v5, :cond_12

    const/4 v4, 0x1

    :cond_12
    const-string v5, "$_e"

    invoke-virtual {v2}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v3, :cond_a

    goto/16 :goto_2

    :catch_b
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_d
    :try_start_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Internal Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_e

    :cond_13
    move v2, v4

    :goto_e
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v3, :cond_2

    goto/16 :goto_5

    :catch_c
    move-exception v4

    move-object v7, v4

    move v4, v2

    move-object v2, v7

    :goto_f
    :try_start_8
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Parser Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v2, v6}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_14

    invoke-static {v2}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_14
    iget-boolean v2, p0, Lbsh/Interpreter;->m:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_10

    :cond_15
    move v2, v4

    :goto_10
    iget-object v4, p0, Lbsh/Interpreter;->d:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->f:Ljava/io/Reader;

    invoke-virtual {v4, v5}, Lbsh/Parser;->a(Ljava/io/Reader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v4

    if-le v4, v3, :cond_2

    goto/16 :goto_5

    :goto_11
    invoke-direct {p0}, Lbsh/Interpreter;->d()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->a()V

    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v3, :cond_16

    invoke-virtual {v0}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v0, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_16
    throw v1
.end method

.method public set(Ljava/lang/String;D)V
    .locals 1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :cond_0
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    :try_start_0
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->b(Ljava/lang/String;)Lbsh/Name;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v1, p1, p2, v2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    invoke-virtual {p1, p2, v0}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setConsole(Lbsh/ConsoleInterface;)V
    .locals 1

    iput-object p1, p0, Lbsh/Interpreter;->i:Lbsh/ConsoleInterface;

    const-string v0, "bsh.console"

    invoke-virtual {p0, v0, p1}, Lbsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    return-void
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->h:Ljava/io/PrintStream;

    return-void
.end method

.method public setExitOnEOF(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Interpreter;->p:Z

    return-void
.end method

.method public setNameSpace(Lbsh/NameSpace;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/Interpreter;->g:Ljava/io/PrintStream;

    return-void
.end method

.method public setShowResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Interpreter;->q:Z

    return-void
.end method

.method public setStrictJava(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Interpreter;->o:Z

    return-void
.end method

.method public source(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sourcing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {p0, v1, p2, p1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method public unset(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    :try_start_0
    iget-object v1, p0, Lbsh/Interpreter;->e:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->b(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    iget v1, v0, Lbsh/LHS;->c:I

    if-eqz v1, :cond_0

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t unset, not a variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lbsh/LHS;->a:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lbsh/EvalError;

    invoke-virtual {p1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method
