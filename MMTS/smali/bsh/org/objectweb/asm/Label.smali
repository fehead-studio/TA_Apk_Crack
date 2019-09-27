.class public Lbsh/org/objectweb/asm/Label;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:Lbsh/org/objectweb/asm/Edge;

.field f:Lbsh/org/objectweb/asm/Label;

.field g:Z

.field private h:I

.field private i:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->h:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    iget v1, p0, Lbsh/org/objectweb/asm/Label;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/org/objectweb/asm/Label;->h:I

    aput p1, v0, v1

    iget-object p1, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    iget v0, p0, Lbsh/org/objectweb/asm/Label;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbsh/org/objectweb/asm/Label;->h:I

    aput p2, p1, v0

    return-void
.end method


# virtual methods
.method a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V
    .locals 0

    iget-boolean p1, p0, Lbsh/org/objectweb/asm/Label;->a:Z

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    iget p1, p0, Lbsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr p1, p3

    :goto_0
    invoke-virtual {p2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_0
    iget p1, p0, Lbsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr p1, p3

    :goto_1
    invoke-virtual {p2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_1
    const/4 p1, -0x1

    if-eqz p4, :cond_2

    rsub-int/lit8 p3, p3, -0x1

    iget p4, p2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, p3, p4}, Lbsh/org/objectweb/asm/Label;->a(II)V

    goto :goto_0

    :cond_2
    iget p4, p2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, p3, p4}, Lbsh/org/objectweb/asm/Label;->a(II)V

    goto :goto_1

    return-void
.end method

.method a(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z
    .locals 6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbsh/org/objectweb/asm/Label;->a:Z

    iput p2, p0, Lbsh/org/objectweb/asm/Label;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lbsh/org/objectweb/asm/Label;->h:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->i:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    if-ltz v0, :cond_4

    sub-int v0, p2, v0

    const/16 v3, -0x8000

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7fff

    if-le v0, v3, :cond_3

    :cond_1
    add-int/lit8 v1, v2, -0x1

    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xa8

    if-gt v3, v5, :cond_2

    add-int/lit8 v3, v3, 0x31

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x14

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    :goto_1
    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v2

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    goto :goto_2

    :cond_4
    add-int/2addr v0, p2

    add-int/2addr v0, p1

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, p3, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v2

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    :goto_2
    move v0, v4

    goto :goto_0
.end method
