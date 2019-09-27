.class public final enum Lcom/androlua/util/AsyncTaskX$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androlua/util/AsyncTaskX$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:Lcom/androlua/util/AsyncTaskX$Status;

.field public static final enum PENDING:Lcom/androlua/util/AsyncTaskX$Status;

.field public static final enum RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

.field private static final synthetic a:[Lcom/androlua/util/AsyncTaskX$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/androlua/util/AsyncTaskX$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androlua/util/AsyncTaskX$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX$Status;->PENDING:Lcom/androlua/util/AsyncTaskX$Status;

    new-instance v0, Lcom/androlua/util/AsyncTaskX$Status;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/androlua/util/AsyncTaskX$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    new-instance v0, Lcom/androlua/util/AsyncTaskX$Status;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/androlua/util/AsyncTaskX$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androlua/util/AsyncTaskX$Status;->FINISHED:Lcom/androlua/util/AsyncTaskX$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androlua/util/AsyncTaskX$Status;

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->PENDING:Lcom/androlua/util/AsyncTaskX$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->FINISHED:Lcom/androlua/util/AsyncTaskX$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androlua/util/AsyncTaskX$Status;->a:[Lcom/androlua/util/AsyncTaskX$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androlua/util/AsyncTaskX$Status;
    .locals 1

    const-class v0, Lcom/androlua/util/AsyncTaskX$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androlua/util/AsyncTaskX$Status;

    return-object p0
.end method

.method public static values()[Lcom/androlua/util/AsyncTaskX$Status;
    .locals 1

    sget-object v0, Lcom/androlua/util/AsyncTaskX$Status;->a:[Lcom/androlua/util/AsyncTaskX$Status;

    invoke-virtual {v0}, [Lcom/androlua/util/AsyncTaskX$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androlua/util/AsyncTaskX$Status;

    return-object v0
.end method
