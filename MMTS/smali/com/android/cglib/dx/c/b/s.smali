.class public final Lcom/android/cglib/dx/c/b/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/android/cglib/dx/c/b/s;


# instance fields
.field private final b:Lcom/android/cglib/dx/c/c/v;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/c/b/s;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/android/cglib/dx/c/b/s;-><init>(Lcom/android/cglib/dx/c/c/v;II)V

    sput-object v0, Lcom/android/cglib/dx/c/b/s;->a:Lcom/android/cglib/dx/c/b/s;

    return-void
.end method

.method public constructor <init>(Lcom/android/cglib/dx/c/c/v;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-ge p3, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "line < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    iput p2, p0, Lcom/android/cglib/dx/c/b/s;->c:I

    iput p3, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    return v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/s;)Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    iget p1, p1, Lcom/android/cglib/dx/c/b/s;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/cglib/dx/c/b/s;)Z
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    iget v1, p1, Lcom/android/cglib/dx/c/b/s;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    iget-object v1, p1, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/c/b/s;

    iget v2, p0, Lcom/android/cglib/dx/c/b/s;->c:I

    iget v3, p1, Lcom/android/cglib/dx/c/b/s;->c:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/s;->b(Lcom/android/cglib/dx/c/b/s;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/s;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->c:I

    if-gez v1, :cond_2

    const-string v1, "????"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/cglib/dx/c/b/s;->c:I

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
