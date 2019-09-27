.class public Lbsh/ClassGeneratorUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorUtil$ConstructorArgs;
    }
.end annotation


# static fields
.field static m:Ljava/lang/Class;

.field static n:Ljava/lang/Class;

.field static o:Ljava/lang/Class;

.field static p:Ljava/lang/Class;

.field static q:Ljava/lang/Class;

.field static r:Ljava/lang/Class;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Class;

.field d:Ljava/lang/String;

.field e:[Ljava/lang/Class;

.field f:[Lbsh/Variable;

.field g:[Ljava/lang/reflect/Constructor;

.field h:[Lbsh/DelayedEvalBshMethod;

.field i:[Lbsh/DelayedEvalBshMethod;

.field j:Lbsh/NameSpace;

.field k:Lbsh/Modifiers;

.field l:Z


# direct methods
.method public constructor <init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Lbsh/NameSpace;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/ClassGeneratorUtil;->k:Lbsh/Modifiers;

    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    :goto_0
    if-nez p4, :cond_2

    sget-object p1, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    if-nez p1, :cond_1

    const-string p1, "java.lang.Object"

    invoke-static {p1}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    :goto_1
    move-object p4, p1

    goto :goto_2

    :cond_1
    sget-object p1, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    :goto_2
    iput-object p4, p0, Lbsh/ClassGeneratorUtil;->c:Ljava/lang/Class;

    invoke-static {p4}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbsh/ClassGeneratorUtil;->d:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p5, :cond_3

    new-array p5, p1, [Ljava/lang/Class;

    :cond_3
    iput-object p5, p0, Lbsh/ClassGeneratorUtil;->e:[Ljava/lang/Class;

    iput-object p6, p0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    iput-object p8, p0, Lbsh/ClassGeneratorUtil;->j:Lbsh/NameSpace;

    invoke-virtual {p4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p3

    iput-object p3, p0, Lbsh/ClassGeneratorUtil;->g:[Ljava/lang/reflect/Constructor;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lbsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x0

    :goto_3
    array-length p6, p7

    if-lt p5, p6, :cond_4

    new-array p2, p1, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lbsh/DelayedEvalBshMethod;

    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    new-array p2, p1, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {p4, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lbsh/DelayedEvalBshMethod;

    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    :try_start_0
    const-string p2, "_bshConstructors"

    iget-object p3, p0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    invoke-virtual {p8, p2, p3, p1}, Lbsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p9, p0, Lbsh/ClassGeneratorUtil;->l:Z

    return-void

    :catch_0
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "can\'t set cons var"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    aget-object p6, p7, p5

    invoke-virtual {p6}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    aget-object p6, p7, p5

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    aget-object p6, p7, p5

    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_3
.end method

.method static a(Lbsh/Modifiers;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "public"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "protected"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    const-string v1, "static"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x8

    :cond_3
    const-string v1, "synchronized"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x20

    :cond_4
    const-string v1, "abstract"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    add-int/lit16 v0, v0, 0x400

    :cond_5
    return v0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unable to get class static space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshThis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generated class: Error getting This"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
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

.method static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 7

    aget-object p0, p4, p0

    invoke-interface {p6, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    const/4 p0, 0x0

    const/16 p4, 0x19

    invoke-interface {p6, p4, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_0
    array-length v0, p2

    if-lt p0, v0, :cond_0

    const-string p0, "V"

    invoke-static {p0, p2}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xb7

    const-string p4, "<init>"

    invoke-interface {p6, p2, p1, p4, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa7

    invoke-interface {p6, p0, p3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V

    return-void

    :cond_0
    aget-object v0, p2, p0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getBoolean"

    goto :goto_1

    :cond_1
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "getByte"

    goto :goto_1

    :cond_2
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "getChar"

    goto :goto_1

    :cond_3
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "getShort"

    goto :goto_1

    :cond_4
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "getInt"

    goto :goto_1

    :cond_5
    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getLong"

    goto :goto_1

    :cond_6
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "getDouble"

    goto :goto_1

    :cond_7
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "getFloat"

    goto :goto_1

    :cond_8
    const-string v1, "getObject"

    :goto_1
    invoke-interface {p6, p4, p5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const-string v2, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string v3, "getObject"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Ljava/lang/Object;"

    goto :goto_2

    :cond_9
    move-object v3, v0

    :goto_2
    const/16 v4, 0xb6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p6, v4, v2, v1, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xc0

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 2

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xb1

    :goto_0
    invoke-interface {p1, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    return-void

    :cond_0
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xac

    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xaf

    goto :goto_1

    :cond_1
    const-string v1, "F"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xae

    goto :goto_1

    :cond_2
    const-string v1, "J"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 v0, 0xad

    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    return-void

    :cond_4
    const/16 v0, 0xc0

    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 p0, 0xb0

    goto :goto_0

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p0, p1, v0}, Lbsh/org/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 5

    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    const-string p3, "Ljava/lang/Object;"

    :cond_1
    invoke-static {p3, p4}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p6, p5, p2, v3, v4}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object p6

    and-int/lit16 p5, p5, 0x400

    if-eqz p5, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    const/16 p5, 0xb2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshStatic"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Lbsh/This;"

    invoke-interface {p6, p5, p1, p0, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 p5, 0x19

    invoke-interface {p6, p5, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 p5, 0xb4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshThis"

    goto :goto_1

    :goto_2
    invoke-interface {p6, p2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {p4, v0, p6}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    invoke-interface {p6, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p6, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p6, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 p0, 0x4

    invoke-interface {p6, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 p1, 0xb6

    const-string p2, "bsh/This"

    const-string p4, "invokeMethod"

    sget-object p5, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    if-nez p5, :cond_4

    const-string p5, "java.lang.Object"

    invoke-static {p5}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p5

    sput-object p5, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    goto :goto_3

    :cond_4
    sget-object p5, Lbsh/ClassGeneratorUtil;->m:Ljava/lang/Class;

    :goto_3
    invoke-static {p5}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object p5

    const/4 v0, 0x6

    new-array v0, v0, [Lbsh/org/objectweb/asm/Type;

    sget-object v3, Lbsh/ClassGeneratorUtil;->n:Ljava/lang/Class;

    if-nez v3, :cond_5

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lbsh/ClassGeneratorUtil;->n:Ljava/lang/Class;

    goto :goto_4

    :cond_5
    sget-object v3, Lbsh/ClassGeneratorUtil;->n:Ljava/lang/Class;

    :goto_4
    invoke-static {v3}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v1, Lbsh/ClassGeneratorUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "[Ljava.lang.Object;"

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/ClassGeneratorUtil;->o:Ljava/lang/Class;

    goto :goto_5

    :cond_6
    sget-object v1, Lbsh/ClassGeneratorUtil;->o:Ljava/lang/Class;

    :goto_5
    invoke-static {v1}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lbsh/ClassGeneratorUtil;->p:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "bsh.Interpreter"

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/ClassGeneratorUtil;->p:Ljava/lang/Class;

    goto :goto_6

    :cond_7
    sget-object v2, Lbsh/ClassGeneratorUtil;->p:Ljava/lang/Class;

    :goto_6
    invoke-static {v2}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lbsh/ClassGeneratorUtil;->q:Ljava/lang/Class;

    if-nez v2, :cond_8

    const-string v2, "bsh.CallStack"

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/ClassGeneratorUtil;->q:Ljava/lang/Class;

    goto :goto_7

    :cond_8
    sget-object v2, Lbsh/ClassGeneratorUtil;->q:Ljava/lang/Class;

    :goto_7
    invoke-static {v2}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lbsh/ClassGeneratorUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "bsh.SimpleNode"

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/ClassGeneratorUtil;->r:Ljava/lang/Class;

    goto :goto_8

    :cond_9
    sget-object v1, Lbsh/ClassGeneratorUtil;->r:Ljava/lang/Class;

    :goto_8
    invoke-static {v1}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x5

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {p5, v0}, Lbsh/org/objectweb/asm/Type;->getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p1, p2, p4, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xb8

    const-string p1, "bsh/Primitive"

    const-string p2, "unwrap"

    const-string p4, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-interface {p6, p0, p1, p2, p4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p6}, Lbsh/ClassGeneratorUtil;->generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 p0, 0x14

    invoke-interface {p6, p0, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, "Ljava/lang/Object;"

    :cond_0
    invoke-static {p2, p3}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshSuper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, p4, v1, v0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object p4

    const/4 p5, 0x0

    const/16 v1, 0x19

    invoke-interface {p4, v1, p5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    array-length v4, p3

    if-lt p5, v4, :cond_1

    const/16 p3, 0xb7

    invoke-interface {p4, p3, p0, p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 p0, 0x14

    invoke-interface {p4, p0, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void

    :cond_1
    aget-object v4, p3, p5

    invoke-static {v4}, Lbsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x15

    invoke-interface {p4, v4, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_1

    :cond_2
    invoke-interface {p4, v1, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_1
    aget-object v4, p3, p5

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, p3, p5

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x2

    :goto_3
    add-int/2addr v3, v4

    add-int/lit8 p5, p5, 0x1

    goto :goto_0
.end method

.method static a([Ljava/lang/Class;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 9

    array-length v0, p0

    const/16 v1, 0x11

    invoke-interface {p2, v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const-string v0, "java/lang/Object"

    const/16 v2, 0xbd

    invoke-interface {p2, v2, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, p0, v2

    const/16 v4, 0x59

    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "F"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x17

    goto :goto_1

    :cond_1
    const-string v5, "D"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x18

    goto :goto_1

    :cond_2
    const-string v5, "J"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x16

    goto :goto_1

    :cond_3
    const/16 v5, 0x15

    :goto_1
    const-string v6, "bsh/Primitive"

    const/16 v7, 0xbb

    invoke-interface {p2, v7, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v5, p1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb7

    const-string v5, "<init>"

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v5, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x19

    invoke-interface {p2, v4, p1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_2
    const/16 v4, 0x53

    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "J"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x2

    :goto_4
    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 6

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x57

    invoke-interface {p1, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 p0, 0xb1

    :goto_0
    invoke-interface {p1, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    return-void

    :cond_0
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xc0

    if-eqz v0, :cond_8

    const/16 v0, 0xac

    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "java/lang/Byte"

    const-string v3, "byteValue"

    goto :goto_1

    :cond_1
    const-string v2, "I"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    goto :goto_1

    :cond_2
    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "java/lang/Boolean"

    const-string v3, "booleanValue"

    goto :goto_1

    :cond_3
    const-string v2, "D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0xaf

    const-string v2, "java/lang/Double"

    const-string v3, "doubleValue"

    goto :goto_1

    :cond_4
    const-string v2, "F"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0xae

    const-string v2, "java/lang/Float"

    const-string v3, "floatValue"

    goto :goto_1

    :cond_5
    const-string v2, "J"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0xad

    const-string v2, "java/lang/Long"

    const-string v3, "longValue"

    goto :goto_1

    :cond_6
    const-string v2, "C"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "java/lang/Character"

    const-string v3, "charValue"

    goto :goto_1

    :cond_7
    const-string v2, "java/lang/Short"

    const-string v3, "shortValue"

    :goto_1
    invoke-interface {p1, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, v2, v3, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    return-void

    :cond_8
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 p0, 0xb0

    goto/16 :goto_0

    return-void
.end method

.method public static getConstructorArgs(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v4

    const-string v5, "_bshConstructors"

    invoke-virtual {v4, v5}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lbsh/DelayedEvalBshMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    sget-object v1, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v1

    :cond_0
    aget-object v6, v4, v3

    iget-object v7, v6, Lbsh/DelayedEvalBshMethod;->c:Lbsh/BSHBlock;

    invoke-virtual {v7}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v7

    if-nez v7, :cond_1

    sget-object v1, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v1

    :cond_1
    iget-object v7, v6, Lbsh/DelayedEvalBshMethod;->c:Lbsh/BSHBlock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v7

    check-cast v7, Lbsh/SimpleNode;

    instance-of v9, v7, Lbsh/BSHPrimaryExpression;

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v7

    check-cast v7, Lbsh/SimpleNode;

    :cond_2
    instance-of v9, v7, Lbsh/BSHMethodInvocation;

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    check-cast v7, Lbsh/BSHMethodInvocation;

    invoke-virtual {v7}, Lbsh/BSHMethodInvocation;->a()Lbsh/BSHAmbiguousName;

    move-result-object v9

    iget-object v11, v9, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v12, "super"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v9, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v12, "this"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    iget-object v9, v9, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v7}, Lbsh/BSHMethodInvocation;->b()Lbsh/BSHArguments;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v10

    move-object v9, v7

    :goto_0
    if-nez v9, :cond_5

    sget-object v1, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v1

    :cond_5
    new-instance v11, Lbsh/NameSpace;

    invoke-virtual/range {p1 .. p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v12

    const-string v13, "consArgs"

    invoke-direct {v11, v12, v13}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v13, 0x0

    :goto_1
    array-length v14, v2

    if-lt v13, v14, :cond_c

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v2, v11}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move-object/from16 v14, p1

    iget-object v6, v14, Lbsh/This;->b:Lbsh/Interpreter;

    :try_start_1
    invoke-virtual {v7, v2, v6}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v7

    invoke-static {v2}, Lbsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_6

    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can\'t find superclass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v6, "super"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v7, v1}, Lbsh/Reflect;->b([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I

    move-result v1

    if-ne v1, v5, :cond_7

    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "can\'t find constructor for args!"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v3, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v3, v1, v2}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    return-object v3

    :cond_8
    array-length v6, v4

    new-array v6, v6, [[Ljava/lang/Class;

    :goto_2
    array-length v9, v6

    if-lt v8, v9, :cond_b

    invoke-static {v7, v6}, Lbsh/Reflect;->a([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v4

    if-ne v4, v5, :cond_9

    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "can\'t find constructor for args 2!"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    array-length v5, v1

    add-int/2addr v4, v5

    array-length v1, v1

    add-int/2addr v1, v3

    if-ne v4, v1, :cond_a

    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "Recusive constructor call."

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v1, v4, v2}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    return-object v1

    :cond_b
    aget-object v9, v4, v8

    invoke-virtual {v9}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error evaluating constructor args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object/from16 v14, p1

    :try_start_2
    aget-object v15, v12, v13

    aget-object v5, v6, v13

    aget-object v8, v2, v13

    invoke-virtual {v11, v15, v5, v8, v10}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v13, v13, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "err setting local cons arg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unable to get instance initializer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static initInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    invoke-static {p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Lbsh/CallStack;

    invoke-direct {v4}, Lbsh/CallStack;-><init>()V

    invoke-static {p0, p1}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;

    move-result-object v1

    iget-object v3, v1, Lbsh/This;->b:Lbsh/Interpreter;

    :try_start_0
    invoke-virtual {v1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v5

    const-string v6, "_bshInstanceInitializer"

    invoke-virtual {v5, v6}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbsh/BSHBlock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v6, Lbsh/NameSpace;

    invoke-virtual {v1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v1

    invoke-direct {v6, v1, p1}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iput-boolean v2, v6, Lbsh/NameSpace;->d:Z

    invoke-virtual {v6, v3}, Lbsh/NameSpace;->a(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "_bshThis"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lbsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v6, p0}, Lbsh/NameSpace;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :try_start_2
    sget-object p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v5, v4, v3, v2, p0}, Lbsh/BSHBlock;->a(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v4}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error in class initialization: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error in class gen setup: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "unable to get instance initializer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p0, v1, Lbsh/This;->b:Lbsh/Interpreter;

    invoke-virtual {v1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v6

    move-object v3, p0

    :goto_0
    invoke-static {p1}, Lbsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_3
    invoke-virtual {v6, p0, v0, v2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v1

    array-length p0, p2

    if-lez p0, :cond_1

    if-nez v1, :cond_1

    new-instance p0, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Can\'t find constructor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lbsh/BshMethod;->a([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    return-void

    :catch_3
    move-exception p0

    instance-of p1, p0, Lbsh/TargetError;

    if-eqz p1, :cond_3

    check-cast p0, Lbsh/TargetError;

    invoke-virtual {p0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    :cond_3
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    :cond_4
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    new-instance p1, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Error in class initialization: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(IIILbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v10, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v10}, Lbsh/org/objectweb/asm/Label;-><init>()V

    new-instance v11, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v11}, Lbsh/org/objectweb/asm/Label;-><init>()V

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->g:[Ljava/lang/reflect/Constructor;

    array-length v1, v1

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v12, v1, [Lbsh/org/objectweb/asm/Label;

    const/4 v13, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xb2

    iget-object v3, v0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "_bshStatic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lbsh/This;"

    invoke-interface {v9, v2, v3, v4, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x19

    move/from16 v3, p2

    invoke-interface {v9, v14, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v2, 0x10

    move/from16 v4, p1

    invoke-interface {v9, v2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const/16 v2, 0xb8

    const-string v3, "bsh/ClassGeneratorUtil"

    const-string v4, "getConstructorArgs"

    const-string v5, "(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;"

    invoke-interface {v9, v2, v3, v4, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-interface {v9, v2, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    invoke-interface {v9, v14, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb4

    const-string v3, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string v4, "selector"

    const-string v5, "I"

    invoke-interface {v9, v2, v3, v4, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v13, v1, v10, v12}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->g:[Ljava/lang/reflect/Constructor;

    array-length v1, v1

    if-lt v15, v1, :cond_1

    const/4 v15, 0x0

    :goto_2
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    array-length v1, v1

    if-lt v15, v1, :cond_0

    invoke-interface {v9, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    invoke-interface {v9, v14, v13}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb7

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->d:Ljava/lang/String;

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-interface {v9, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    return-void

    :cond_0
    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v3

    move/from16 v1, v16

    move-object v4, v11

    move-object v5, v12

    move v6, v8

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Lbsh/ClassGeneratorUtil;->a(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->d:Ljava/lang/String;

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->g:[Ljava/lang/reflect/Constructor;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->a([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    move/from16 v1, v16

    move-object v4, v11

    move-object v5, v12

    move v6, v8

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Lbsh/ClassGeneratorUtil;->a(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v4, p1

    move/from16 v3, p2

    new-instance v5, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v5}, Lbsh/org/objectweb/asm/Label;-><init>()V

    aput-object v5, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method a(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 5

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    const-string v2, "V"

    invoke-static {v2, p2}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    const/4 v4, 0x0

    invoke-virtual {p4, p3, v3, v2, v4}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 p2, 0x3a

    invoke-interface {p3, p2, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lbsh/ClassGeneratorUtil;->a(IIILbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 p1, 0x19

    invoke-interface {p3, p1, p4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    iget-object p2, p0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    invoke-interface {p3, p2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const-string p1, "bsh/ClassGeneratorUtil"

    const-string p2, "initInstance"

    const-string p4, "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V"

    const/16 v0, 0xb8

    invoke-interface {p3, v0, p1, p2, p4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-interface {p3, p1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 p1, 0x14

    invoke-interface {p3, p1, p1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->a([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    const/4 v6, 0x1

    if-lt v4, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    aget-object v5, p3, v4

    aget-object v7, v3, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    return v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public generateClass()[B
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->k:Lbsh/Modifiers;

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->a(Lbsh/Modifiers;)I

    move-result v1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iget-boolean v3, v0, Lbsh/ClassGeneratorUtil;->l:Z

    if-eqz v3, :cond_0

    or-int/lit16 v1, v1, 0x200

    :cond_0
    move v4, v1

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->e:[Ljava/lang/Class;

    array-length v1, v1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->e:[Ljava/lang/Class;

    array-length v5, v5

    if-lt v3, v5, :cond_e

    const-string v8, "BeanShell Generated via ASM (www.objectweb.org)"

    new-instance v15, Lbsh/org/objectweb/asm/ClassWriter;

    invoke-direct {v15, v1}, Lbsh/org/objectweb/asm/ClassWriter;-><init>(Z)V

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    iget-object v6, v0, Lbsh/ClassGeneratorUtil;->d:Ljava/lang/String;

    move-object v3, v15

    invoke-virtual/range {v3 .. v8}, Lbsh/org/objectweb/asm/ClassWriter;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lbsh/ClassGeneratorUtil;->l:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshThis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lbsh/This;"

    invoke-static {v3, v4, v2, v15}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshStatic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lbsh/This;"

    const/16 v5, 0x9

    invoke-static {v3, v4, v5, v15}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    array-length v4, v4

    if-lt v3, v4, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    array-length v5, v5

    if-lt v3, v5, :cond_8

    iget-boolean v3, v0, Lbsh/ClassGeneratorUtil;->l:Z

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 v3, -0x1

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2, v15}, Lbsh/ClassGeneratorUtil;->a(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    invoke-virtual {v15}, Lbsh/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lbsh/DelayedEvalBshMethod;->getReturnTypeDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v3

    const-string v6, "private"

    invoke-virtual {v5, v6}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v6, v15

    goto :goto_5

    :cond_4
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v5

    invoke-static {v5}, Lbsh/ClassGeneratorUtil;->a(Lbsh/Modifiers;)I

    move-result v5

    iget-boolean v6, v0, Lbsh/ClassGeneratorUtil;->l:Z

    if-eqz v6, :cond_5

    or-int/lit16 v5, v5, 0x401

    :cond_5
    iget-object v9, v0, Lbsh/ClassGeneratorUtil;->a:Ljava/lang/String;

    iget-object v10, v0, Lbsh/ClassGeneratorUtil;->b:Ljava/lang/String;

    iget-object v6, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v13

    move-object v12, v4

    move v14, v5

    move-object v6, v15

    invoke-static/range {v9 .. v15}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    and-int/lit8 v7, v5, 0x8

    if-lez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Lbsh/ClassGeneratorUtil;->c:Ljava/lang/Class;

    iget-object v9, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v7, :cond_7

    if-eqz v8, :cond_7

    iget-object v9, v0, Lbsh/ClassGeneratorUtil;->d:Ljava/lang/String;

    iget-object v7, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v7, v0, Lbsh/ClassGeneratorUtil;->i:[Lbsh/DelayedEvalBshMethod;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v12

    move-object v11, v4

    move v13, v5

    move-object v14, v6

    invoke-static/range {v9 .. v14}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object v15, v6

    goto/16 :goto_3

    :cond_8
    move-object v6, v15

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v3

    const-string v7, "private"

    invoke-virtual {v5, v7}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v4

    invoke-static {v4}, Lbsh/ClassGeneratorUtil;->a(Lbsh/Modifiers;)I

    move-result v4

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->h:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v4, v6}, Lbsh/ClassGeneratorUtil;->a(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    const/4 v4, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object v15, v6

    goto/16 :goto_2

    :cond_a
    move-object v6, v15

    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lbsh/Variable;->getTypeDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    aget-object v5, v5, v3

    const-string v7, "private"

    invoke-virtual {v5, v7}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    iget-boolean v5, v0, Lbsh/ClassGeneratorUtil;->l:Z

    if-eqz v5, :cond_c

    const/16 v5, 0x19

    goto :goto_7

    :cond_c
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lbsh/Variable;->getModifiers()Lbsh/Modifiers;

    move-result-object v5

    invoke-static {v5}, Lbsh/ClassGeneratorUtil;->a(Lbsh/Modifiers;)I

    move-result v5

    :goto_7
    iget-object v7, v0, Lbsh/ClassGeneratorUtil;->f:[Lbsh/Variable;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lbsh/Variable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, v6}, Lbsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object v15, v6

    goto/16 :goto_1

    :cond_e
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->e:[Ljava/lang/Class;

    aget-object v5, v5, v3

    invoke-static {v5}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
