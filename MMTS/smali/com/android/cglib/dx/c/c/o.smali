.class public abstract Lcom/android/cglib/dx/c/c/o;
.super Lcom/android/cglib/dx/c/c/p;


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/c/p;-><init>()V

    iput-wide p1, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    return-void
.end method


# virtual methods
.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 4

    check-cast p1, Lcom/android/cglib/dx/c/c/o;

    iget-wide v0, p1, Lcom/android/cglib/dx/c/c/o;->a:J

    iget-wide v2, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v2, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    check-cast p1, Lcom/android/cglib/dx/c/c/o;

    iget-wide v2, p1, Lcom/android/cglib/dx/c/c/o;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 5

    iget-wide v0, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    long-to-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 2

    iget-wide v0, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/android/cglib/dx/c/c/o;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
