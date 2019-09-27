.class public Lcom/b/a/b/j;
.super Lcom/b/a/b/h;


# static fields
.field private static f:Lcom/b/a/b/h;

.field private static final g:[Ljava/lang/String;

.field private static final h:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/b/a/b/j;->g:[Ljava/lang/String;

    new-array v0, v0, [C

    sput-object v0, Lcom/b/a/b/j;->h:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/h;-><init>()V

    sget-object v0, Lcom/b/a/b/j;->g:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/b/a/b/h;->a([Ljava/lang/String;)V

    sget-object v0, Lcom/b/a/b/j;->h:[C

    invoke-super {p0, v0}, Lcom/b/a/b/h;->a([C)V

    return-void
.end method

.method public static g()Lcom/b/a/b/h;
    .locals 1

    sget-object v0, Lcom/b/a/b/j;->f:Lcom/b/a/b/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/b/j;

    invoke-direct {v0}, Lcom/b/a/b/j;-><init>()V

    sput-object v0, Lcom/b/a/b/j;->f:Lcom/b/a/b/h;

    :cond_0
    sget-object v0, Lcom/b/a/b/j;->f:Lcom/b/a/b/h;

    return-object v0
.end method


# virtual methods
.method public a(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
