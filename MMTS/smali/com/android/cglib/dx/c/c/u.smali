.class public final Lcom/android/cglib/dx/c/c/u;
.super Lcom/android/cglib/dx/c/c/n;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/u;->a(S)Lcom/android/cglib/dx/c/c/u;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/u;->a:Lcom/android/cglib/dx/c/c/u;

    return-void
.end method

.method private constructor <init>(S)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/c/n;-><init>(I)V

    return-void
.end method

.method public static a(S)Lcom/android/cglib/dx/c/c/u;
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/c/c/u;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/c/c/u;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/u;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->h:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "short"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/u;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "short{0x"

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
