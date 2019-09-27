.class public abstract Lcom/android/cglib/dx/c/c/n;
.super Lcom/android/cglib/dx/c/c/p;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/c/p;-><init>()V

    iput p1, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    return-void
.end method


# virtual methods
.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/c/c/n;

    iget p1, p1, Lcom/android/cglib/dx/c/c/n;->a:I

    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    check-cast p1, Lcom/android/cglib/dx/c/c/n;

    iget p1, p1, Lcom/android/cglib/dx/c/c/n;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    return v0
.end method

.method public final h()J
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/c/n;->a:I

    return v0
.end method
