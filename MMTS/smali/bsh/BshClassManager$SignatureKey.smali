.class Lbsh/BshClassManager$SignatureKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/BshClassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureKey"
.end annotation


# instance fields
.field a:Ljava/lang/Class;

.field b:[Ljava/lang/Class;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    iput-object p1, p0, Lbsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    iput-object p2, p0, Lbsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    iput-object p3, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lbsh/BshClassManager$SignatureKey;

    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p1, p1, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v3, v3

    if-lt v0, v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-nez v3, :cond_6

    iget-object v3, p1, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    return v2

    :cond_6
    iget-object v3, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v3, v3, v0

    iget-object v4, p1, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    const/16 v1, 0x15

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    iget v2, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    add-int/lit8 v0, v0, 0x1

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    iput v2, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    goto :goto_0

    :cond_3
    :goto_2
    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->d:I

    return v0
.end method
