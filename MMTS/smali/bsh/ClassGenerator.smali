.class public abstract Lbsh/ClassGenerator;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbsh/ClassGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassGenerator()Lbsh/ClassGenerator;
    .locals 4

    sget-object v0, Lbsh/ClassGenerator;->a:Lbsh/ClassGenerator;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "bsh.ClassGeneratorImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/ClassGenerator;

    sput-object v0, Lbsh/ClassGenerator;->a:Lbsh/ClassGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ClassGenerator unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lbsh/ClassGenerator;->a:Lbsh/ClassGenerator;

    return-object v0
.end method


# virtual methods
.method public abstract generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
.end method

.method public abstract invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
.end method
