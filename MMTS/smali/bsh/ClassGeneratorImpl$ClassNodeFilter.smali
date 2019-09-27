.class Lbsh/ClassGeneratorImpl$ClassNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BSHBlock$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/ClassGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassNodeFilter"
.end annotation


# static fields
.field public static CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final CLASSES:I = 0x2

.field public static CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final INSTANCE:I = 0x1

.field public static final STATIC:I


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    return-void
.end method


# virtual methods
.method a(Lbsh/SimpleNode;)Z
    .locals 3

    instance-of v0, p1, Lbsh/BSHTypedVariableDeclaration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, p1, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    instance-of v0, p1, Lbsh/BSHMethodDeclaration;

    if-eqz v0, :cond_3

    check-cast p1, Lbsh/BSHMethodDeclaration;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    instance-of p1, p1, Lbsh/BSHBlock;

    if-eqz p1, :cond_4

    :cond_4
    return v2
.end method

.method public isVisible(Lbsh/SimpleNode;)Z
    .locals 2

    iget v0, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    instance-of p1, p1, Lbsh/BSHClassDeclaration;

    return p1

    :cond_0
    instance-of v0, p1, Lbsh/BSHClassDeclaration;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget v0, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a(Lbsh/SimpleNode;)Z

    move-result p1

    return p1

    :cond_2
    iget v0, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->a(Lbsh/SimpleNode;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    return v1
.end method
