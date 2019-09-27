.class public Lbsh/org/objectweb/asm/ClassWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/ClassVisitor;


# static fields
.field static f:[B


# instance fields
.field a:Lbsh/org/objectweb/asm/CodeWriter;

.field b:Lbsh/org/objectweb/asm/CodeWriter;

.field c:Lbsh/org/objectweb/asm/Item;

.field d:Lbsh/org/objectweb/asm/Item;

.field e:Lbsh/org/objectweb/asm/Item;

.field private g:S

.field private h:Lbsh/org/objectweb/asm/ByteVector;

.field private i:[Lbsh/org/objectweb/asm/Item;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[I

.field private p:Lbsh/org/objectweb/asm/Item;

.field private q:I

.field private r:Lbsh/org/objectweb/asm/ByteVector;

.field private s:Z

.field private t:I

.field private u:Lbsh/org/objectweb/asm/ByteVector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xdc

    new-array v0, v0, [B

    const-string v1, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHAFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    sput-object v0, Lbsh/org/objectweb/asm/ClassWriter;->f:[B

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0x40

    new-array v0, v0, [Lbsh/org/objectweb/asm/Item;

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->j:I

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    iput-boolean p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->s:Z

    return-void
.end method

.method private a(D)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->a(D)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    :cond_0
    return-object v0
.end method

.method private a(F)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->a(F)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, v1}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(I)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->a(I)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, v1}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->a(J)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    :cond_0
    return-object v0
.end method

.method private a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;
    .locals 4

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    iget v1, p1, Lbsh/org/objectweb/asm/Item;->j:I

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v0, v0, v2

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v2, v0, Lbsh/org/objectweb/asm/Item;->j:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/Item;->a(Lbsh/org/objectweb/asm/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, v0, Lbsh/org/objectweb/asm/Item;->k:Lbsh/org/objectweb/asm/Item;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v1, p1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method private b(Lbsh/org/objectweb/asm/Item;)V
    .locals 9

    iget-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->j:I

    const v2, 0x7fffffff

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    array-length v0, v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [Lbsh/org/objectweb/asm/Item;

    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double v5, v5, v7

    double-to-int v5, v5

    iput v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->j:I

    iput-object v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v0, v1, v5

    :goto_1
    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lbsh/org/objectweb/asm/Item;->k:Lbsh/org/objectweb/asm/Item;

    iget v7, v0, Lbsh/org/objectweb/asm/Item;->j:I

    and-int/2addr v7, v2

    rem-int/2addr v7, v3

    aget-object v8, v4, v7

    iput-object v8, v0, Lbsh/org/objectweb/asm/Item;->k:Lbsh/org/objectweb/asm/Item;

    aput-object v0, v4, v7

    move-object v0, v6

    goto :goto_1

    :cond_2
    :goto_2
    iget v0, p1, Lbsh/org/objectweb/asm/Item;->j:I

    and-int/2addr v0, v2

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    aget-object v1, v1, v0

    iput-object v1, p1, Lbsh/org/objectweb/asm/Item;->k:Lbsh/org/objectweb/asm/Item;

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->i:[Lbsh/org/objectweb/asm/Item;

    aput-object p1, v1, v0

    return-void
.end method

.method private c(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, v1, v1}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, v1}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(I)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(F)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(J)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(D)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, v1}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->putUTF(Ljava/lang/String;)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->c:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, v1}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v1, p1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1, v1}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->d:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, v1}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v1, p1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v1, p1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    iget-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->e:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Lbsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 9

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_a

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->p:Lbsh/org/objectweb/asm/Item;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->k:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x6

    :cond_2
    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    :cond_3
    move v5, v2

    new-instance v7, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->g:S

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v8, v8, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v0, v2, v3, v8}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->k:I

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->l:I

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->m:I

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    if-lt v0, v2, :cond_9

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->q:I

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v7, v0, v3, v2}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_4
    invoke-virtual {v7, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    :goto_3
    if-nez v0, :cond_8

    invoke-virtual {v7, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->p:Lbsh/org/objectweb/asm/Item;

    if-eqz v0, :cond_5

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->p:Lbsh/org/objectweb/asm/Item;

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_5
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->k:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_6
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_7

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->t:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v7, v0, v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_7
    iget-object v0, v7, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    return-object v0

    :cond_8
    invoke-virtual {v0, v7}, Lbsh/org/objectweb/asm/CodeWriter;->a(Lbsh/org/objectweb/asm/ByteVector;)V

    iget-object v0, v0, Lbsh/org/objectweb/asm/CodeWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->o:[I

    aget v2, v2, v0

    invoke-virtual {v7, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lbsh/org/objectweb/asm/CodeWriter;->a()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v2, v2, Lbsh/org/objectweb/asm/CodeWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    goto/16 :goto_0
.end method

.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->k:I

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    iput p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->l:I

    const/4 p2, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p3

    iget-short p3, p3, Lbsh/org/objectweb/asm/Item;->a:S

    :goto_0
    iput p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->m:I

    if-eqz p4, :cond_2

    array-length p3, p4

    if-lez p3, :cond_2

    array-length p3, p4

    iput p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    iget p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    new-array p3, p3, [I

    iput-object p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->o:[I

    :goto_1
    iget p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->n:I

    if-lt p2, p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->o:[I

    aget-object v0, p4, p2

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p5, :cond_3

    const-string p2, "SourceFile"

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    invoke-virtual {p0, p5}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iput-object p2, p0, Lbsh/org/objectweb/asm/ClassWriter;->p:Lbsh/org/objectweb/asm/Item;

    :cond_3
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    :cond_4
    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->q:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p3

    iget-short p3, p3, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p2, p3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-eqz p3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_4

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    const-string v1, "ConstantValue"

    invoke-virtual {p0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p4}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object p4

    iget-short p4, p4, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_4
    if-eqz p3, :cond_5

    iget-object p3, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    const-string p4, "Synthetic"

    invoke-virtual {p0, p4}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p4

    iget-short p4, p4, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p3, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->r:Lbsh/org/objectweb/asm/ByteVector;

    const-string p3, "Deprecated"

    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p3

    iget-short p3, p3, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, p3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_6
    return-void
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->t:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    :goto_0
    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    :goto_1
    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short v1, p2, Lbsh/org/objectweb/asm/Item;->a:S

    :goto_2
    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->u:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;
    .locals 2

    new-instance v0, Lbsh/org/objectweb/asm/CodeWriter;

    iget-boolean v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->s:Z

    invoke-direct {v0, p0, v1}, Lbsh/org/objectweb/asm/CodeWriter;-><init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
