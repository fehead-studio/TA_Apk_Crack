.class synthetic Lcom/androlua/util/AsyncTaskX$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/androlua/util/AsyncTaskX$Status;->values()[Lcom/androlua/util/AsyncTaskX$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androlua/util/AsyncTaskX$4;->a:[I

    :try_start_0
    sget-object v0, Lcom/androlua/util/AsyncTaskX$4;->a:[I

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    invoke-virtual {v1}, Lcom/androlua/util/AsyncTaskX$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/androlua/util/AsyncTaskX$4;->a:[I

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->FINISHED:Lcom/androlua/util/AsyncTaskX$Status;

    invoke-virtual {v1}, Lcom/androlua/util/AsyncTaskX$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
