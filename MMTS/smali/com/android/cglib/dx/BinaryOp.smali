.class public abstract enum Lcom/android/cglib/dx/BinaryOp;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/BinaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cglib/dx/BinaryOp;

.field public static final enum ADD:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum AND:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum DIVIDE:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum MULTIPLY:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum OR:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum REMAINDER:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum SHIFT_LEFT:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum SUBTRACT:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum UNSIGNED_SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

.field public static final enum XOR:Lcom/android/cglib/dx/BinaryOp;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$1;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/BinaryOp$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->ADD:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$2;

    const-string v1, "SUBTRACT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/cglib/dx/BinaryOp$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->SUBTRACT:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$3;

    const-string v1, "MULTIPLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/cglib/dx/BinaryOp$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->MULTIPLY:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$4;

    const-string v1, "DIVIDE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/cglib/dx/BinaryOp$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->DIVIDE:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$5;

    const-string v1, "REMAINDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/cglib/dx/BinaryOp$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->REMAINDER:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$6;

    const-string v1, "AND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/cglib/dx/BinaryOp$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->AND:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$7;

    const-string v1, "OR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/cglib/dx/BinaryOp$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->OR:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$8;

    const-string v1, "XOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/cglib/dx/BinaryOp$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->XOR:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$9;

    const-string v1, "SHIFT_LEFT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/cglib/dx/BinaryOp$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->SHIFT_LEFT:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$10;

    const-string v1, "SHIFT_RIGHT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/cglib/dx/BinaryOp$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

    new-instance v0, Lcom/android/cglib/dx/BinaryOp$11;

    const-string v1, "UNSIGNED_SHIFT_RIGHT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/cglib/dx/BinaryOp$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/cglib/dx/BinaryOp;

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->ADD:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->SUBTRACT:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->MULTIPLY:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->DIVIDE:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->REMAINDER:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->AND:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->OR:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->XOR:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->SHIFT_LEFT:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/cglib/dx/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/android/cglib/dx/BinaryOp;

    aput-object v1, v0, v12

    sput-object v0, Lcom/android/cglib/dx/BinaryOp;->$VALUES:[Lcom/android/cglib/dx/BinaryOp;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/cglib/dx/BinaryOp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/BinaryOp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/BinaryOp;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/BinaryOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/BinaryOp;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/BinaryOp;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/BinaryOp;->$VALUES:[Lcom/android/cglib/dx/BinaryOp;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/BinaryOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/BinaryOp;

    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/cglib/dx/c/d/e;)Lcom/android/cglib/dx/c/b/p;
.end method
