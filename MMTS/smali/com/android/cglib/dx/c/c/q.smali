.class public final Lcom/android/cglib/dx/c/c/q;
.super Lcom/android/cglib/dx/c/c/o;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/c/q;

.field public static final b:Lcom/android/cglib/dx/c/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/c/q;->a(J)Lcom/android/cglib/dx/c/c/q;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/q;->a:Lcom/android/cglib/dx/c/c/q;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/c/q;->a(J)Lcom/android/cglib/dx/c/c/q;

    move-result-object v0

    sput-object v0, Lcom/android/cglib/dx/c/c/q;->b:Lcom/android/cglib/dx/c/c/q;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/c/c/o;-><init>(J)V

    return-void
.end method

.method public static a(J)Lcom/android/cglib/dx/c/c/q;
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/c/c/q;

    invoke-direct {v0, p0, p1}, Lcom/android/cglib/dx/c/c/q;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/q;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->g:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "long"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/q;->h()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long{0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/cglib/dx/d/i;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
