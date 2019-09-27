.class public interface abstract Lbsh/ParserTreeConstants;
.super Ljava/lang/Object;


# static fields
.field public static final JJTALLOCATIONEXPRESSION:I = 0x17

.field public static final JJTAMBIGUOUSNAME:I = 0xc

.field public static final JJTARGUMENTS:I = 0x16

.field public static final JJTARRAYDIMENSIONS:I = 0x18

.field public static final JJTARRAYINITIALIZER:I = 0x6

.field public static final JJTASSIGNMENT:I = 0xd

.field public static final JJTBINARYEXPRESSION:I = 0xf

.field public static final JJTBLOCK:I = 0x19

.field public static final JJTCASTEXPRESSION:I = 0x11

.field public static final JJTCLASSDECLARATION:I = 0x1

.field public static final JJTENHANCEDFORSTATEMENT:I = 0x20

.field public static final JJTFORMALCOMMENT:I = 0x1a

.field public static final JJTFORMALPARAMETER:I = 0x8

.field public static final JJTFORMALPARAMETERS:I = 0x7

.field public static final JJTFORSTATEMENT:I = 0x1f

.field public static final JJTIFSTATEMENT:I = 0x1d

.field public static final JJTIMPORTDECLARATION:I = 0x4

.field public static final JJTLITERAL:I = 0x15

.field public static final JJTMETHODDECLARATION:I = 0x2

.field public static final JJTMETHODINVOCATION:I = 0x13

.field public static final JJTPACKAGEDECLARATION:I = 0x3

.field public static final JJTPRIMARYEXPRESSION:I = 0x12

.field public static final JJTPRIMARYSUFFIX:I = 0x14

.field public static final JJTPRIMITIVETYPE:I = 0xb

.field public static final JJTRETURNSTATEMENT:I = 0x23

.field public static final JJTRETURNTYPE:I = 0xa

.field public static final JJTSTATEMENTEXPRESSIONLIST:I = 0x22

.field public static final JJTSWITCHLABEL:I = 0x1c

.field public static final JJTSWITCHSTATEMENT:I = 0x1b

.field public static final JJTTERNARYEXPRESSION:I = 0xe

.field public static final JJTTHROWSTATEMENT:I = 0x24

.field public static final JJTTRYSTATEMENT:I = 0x25

.field public static final JJTTYPE:I = 0x9

.field public static final JJTTYPEDVARIABLEDECLARATION:I = 0x21

.field public static final JJTUNARYEXPRESSION:I = 0x10

.field public static final JJTVARIABLEDECLARATOR:I = 0x5

.field public static final JJTVOID:I = 0x0

.field public static final JJTWHILESTATEMENT:I = 0x1e

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "void"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ClassDeclaration"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MethodDeclaration"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "PackageDeclaration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ImportDeclaration"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "VariableDeclarator"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ArrayInitializer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "FormalParameters"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "FormalParameter"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ReturnType"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "PrimitiveType"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "AmbiguousName"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Assignment"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "TernaryExpression"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "BinaryExpression"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "UnaryExpression"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "CastExpression"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "PrimaryExpression"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "MethodInvocation"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "PrimarySuffix"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Literal"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Arguments"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "AllocationExpression"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "ArrayDimensions"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Block"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "FormalComment"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "SwitchStatement"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "SwitchLabel"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "IfStatement"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "WhileStatement"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "ForStatement"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "EnhancedForStatement"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "TypedVariableDeclaration"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "StatementExpressionList"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "ReturnStatement"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "ThrowStatement"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "TryStatement"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
