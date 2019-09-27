.class public final enum Lcom/android/cglib/dx/c/a/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/android/cglib/dx/d/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/c/a/b;",
        ">;",
        "Lcom/android/cglib/dx/d/r;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/cglib/dx/c/a/b;

.field public static final enum b:Lcom/android/cglib/dx/c/a/b;

.field public static final enum c:Lcom/android/cglib/dx/c/a/b;

.field public static final enum d:Lcom/android/cglib/dx/c/a/b;

.field private static final synthetic f:[Lcom/android/cglib/dx/c/a/b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/cglib/dx/c/a/b;

    const-string v1, "RUNTIME"

    const-string v2, "runtime"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/cglib/dx/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/cglib/dx/c/a/b;->a:Lcom/android/cglib/dx/c/a/b;

    new-instance v0, Lcom/android/cglib/dx/c/a/b;

    const-string v1, "BUILD"

    const-string v2, "build"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/cglib/dx/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/cglib/dx/c/a/b;->b:Lcom/android/cglib/dx/c/a/b;

    new-instance v0, Lcom/android/cglib/dx/c/a/b;

    const-string v1, "SYSTEM"

    const-string v2, "system"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/android/cglib/dx/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/cglib/dx/c/a/b;->c:Lcom/android/cglib/dx/c/a/b;

    new-instance v0, Lcom/android/cglib/dx/c/a/b;

    const-string v1, "EMBEDDED"

    const-string v2, "embedded"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/android/cglib/dx/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/cglib/dx/c/a/b;->d:Lcom/android/cglib/dx/c/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/cglib/dx/c/a/b;

    sget-object v1, Lcom/android/cglib/dx/c/a/b;->a:Lcom/android/cglib/dx/c/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cglib/dx/c/a/b;->b:Lcom/android/cglib/dx/c/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/cglib/dx/c/a/b;->c:Lcom/android/cglib/dx/c/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/cglib/dx/c/a/b;->d:Lcom/android/cglib/dx/c/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/cglib/dx/c/a/b;->f:[Lcom/android/cglib/dx/c/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/cglib/dx/c/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/c/a/b;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/c/a/b;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/c/a/b;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/a/b;->f:[Lcom/android/cglib/dx/c/a/b;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/c/a/b;

    return-object v0
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/a/b;->e:Ljava/lang/String;

    return-object v0
.end method
