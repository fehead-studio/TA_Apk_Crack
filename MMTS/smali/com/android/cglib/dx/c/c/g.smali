.class public final Lcom/android/cglib/dx/c/c/g;
.super Lcom/android/cglib/dx/c/c/n;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/g;->a(C)Lcom/android/cglib/dx/c/c/g;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/g;->a:Lcom/android/cglib/dx/c/c/g;

    return-void
.end method

.method private constructor <init>(C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/c/n;-><init>(I)V

    return-void
.end method

.method public static a(C)Lcom/android/cglib/dx/c/c/g;
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/c/c/g;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/c/c/g;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/g;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->c:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "char"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/g;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
