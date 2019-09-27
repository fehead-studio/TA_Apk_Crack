.class public final Lcom/android/cglib/dx/c/c/l;
.super Lcom/android/cglib/dx/c/c/n;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/c/l;

.field public static final b:Lcom/android/cglib/dx/c/c/l;

.field public static final c:Lcom/android/cglib/dx/c/c/l;

.field public static final d:Lcom/android/cglib/dx/c/c/l;

.field public static final e:Lcom/android/cglib/dx/c/c/l;

.field public static final f:Lcom/android/cglib/dx/c/c/l;

.field public static final g:Lcom/android/cglib/dx/c/c/l;

.field private static final h:[Lcom/android/cglib/dx/c/c/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lcom/android/cglib/dx/c/c/l;

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->h:[Lcom/android/cglib/dx/c/c/l;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->a:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->b:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->c:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->d:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->e:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->f:Lcom/android/cglib/dx/c/c/l;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/l;->g:Lcom/android/cglib/dx/c/c/l;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/c/n;-><init>(I)V

    return-void
.end method

.method public static a(I)Lcom/android/cglib/dx/c/c/l;
    .locals 3

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lcom/android/cglib/dx/c/c/l;->h:[Lcom/android/cglib/dx/c/c/l;

    array-length v1, v1

    rem-int/2addr v0, v1

    sget-object v1, Lcom/android/cglib/dx/c/c/l;->h:[Lcom/android/cglib/dx/c/c/l;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/l;->e_()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/cglib/dx/c/c/l;

    invoke-direct {v1, p0}, Lcom/android/cglib/dx/c/c/l;-><init>(I)V

    sget-object p0, Lcom/android/cglib/dx/c/c/l;->h:[Lcom/android/cglib/dx/c/c/l;

    aput-object v1, p0, v0

    return-object v1
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/l;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->f:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "int"

    return-object v0
.end method

.method public e_()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/l;->g()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/l;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

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
