.class final enum Lcom/android/cglib/dx/a/b/af$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/b/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/a/b/af$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/cglib/dx/a/b/af$a;

.field public static final enum b:Lcom/android/cglib/dx/a/b/af$a;

.field public static final enum c:Lcom/android/cglib/dx/a/b/af$a;

.field private static final synthetic d:[Lcom/android/cglib/dx/a/b/af$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/cglib/dx/a/b/af$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/a/b/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/b/af$a;->a:Lcom/android/cglib/dx/a/b/af$a;

    new-instance v0, Lcom/android/cglib/dx/a/b/af$a;

    const-string v1, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/cglib/dx/a/b/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/b/af$a;->b:Lcom/android/cglib/dx/a/b/af$a;

    new-instance v0, Lcom/android/cglib/dx/a/b/af$a;

    const-string v1, "INSTANCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/cglib/dx/a/b/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/b/af$a;->c:Lcom/android/cglib/dx/a/b/af$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/cglib/dx/a/b/af$a;

    sget-object v1, Lcom/android/cglib/dx/a/b/af$a;->a:Lcom/android/cglib/dx/a/b/af$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/cglib/dx/a/b/af$a;->b:Lcom/android/cglib/dx/a/b/af$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cglib/dx/a/b/af$a;->c:Lcom/android/cglib/dx/a/b/af$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/cglib/dx/a/b/af$a;->d:[Lcom/android/cglib/dx/a/b/af$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/a/b/af$a;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/a/b/af$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/a/b/af$a;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/a/b/af$a;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/af$a;->d:[Lcom/android/cglib/dx/a/b/af$a;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/a/b/af$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/a/b/af$a;

    return-object v0
.end method
