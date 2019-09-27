.class public abstract enum Lcom/android/cglib/dx/UnaryOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/UnaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cglib/dx/UnaryOp;

.field public static final enum NEGATE:Lcom/android/cglib/dx/UnaryOp;

.field public static final enum NOT:Lcom/android/cglib/dx/UnaryOp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/UnaryOp$1;

    const-string v1, "NOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/UnaryOp$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/UnaryOp;->NOT:Lcom/android/cglib/dx/UnaryOp;

    new-instance v0, Lcom/android/cglib/dx/UnaryOp$2;

    const-string v1, "NEGATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/cglib/dx/UnaryOp$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/UnaryOp;->NEGATE:Lcom/android/cglib/dx/UnaryOp;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/cglib/dx/UnaryOp;

    sget-object v1, Lcom/android/cglib/dx/UnaryOp;->NOT:Lcom/android/cglib/dx/UnaryOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/cglib/dx/UnaryOp;->NEGATE:Lcom/android/cglib/dx/UnaryOp;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/cglib/dx/UnaryOp;->$VALUES:[Lcom/android/cglib/dx/UnaryOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/cglib/dx/UnaryOp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/UnaryOp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/UnaryOp;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/UnaryOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/UnaryOp;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/UnaryOp;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/UnaryOp;->$VALUES:[Lcom/android/cglib/dx/UnaryOp;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/UnaryOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/UnaryOp;

    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/c/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)",
            "Lcom/android/cglib/dx/c/b/p;"
        }
    .end annotation
.end method
