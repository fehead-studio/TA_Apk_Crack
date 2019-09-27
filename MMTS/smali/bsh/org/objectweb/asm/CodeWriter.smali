.class public Lbsh/org/objectweb/asm/CodeWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/CodeVisitor;


# static fields
.field private static final w:[I

.field private static z:Lbsh/org/objectweb/asm/Edge;


# instance fields
.field a:Lbsh/org/objectweb/asm/CodeWriter;

.field private b:Lbsh/org/objectweb/asm/ClassWriter;

.field private c:Lbsh/org/objectweb/asm/Item;

.field private d:Lbsh/org/objectweb/asm/Item;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lbsh/org/objectweb/asm/ByteVector;

.field private i:I

.field private j:Lbsh/org/objectweb/asm/ByteVector;

.field private k:I

.field private l:[I

.field private m:I

.field private n:Lbsh/org/objectweb/asm/ByteVector;

.field private o:I

.field private p:Lbsh/org/objectweb/asm/ByteVector;

.field private q:Z

.field private final r:Z

.field private s:I

.field private t:I

.field private u:Lbsh/org/objectweb/asm/Label;

.field private v:Lbsh/org/objectweb/asm/Label;

.field private x:Lbsh/org/objectweb/asm/Edge;

.field private y:Lbsh/org/objectweb/asm/Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xca

    new-array v0, v0, [I

    const-string v1, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    sput-object v0, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    if-nez v0, :cond_0

    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    :goto_0
    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->b:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->b:Lbsh/org/objectweb/asm/CodeWriter;

    iput-object p0, v0, Lbsh/org/objectweb/asm/CodeWriter;->a:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    iput-boolean p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz p2, :cond_1

    new-instance p1, Lbsh/org/objectweb/asm/Label;

    invoke-direct {p1}, Lbsh/org/objectweb/asm/Label;-><init>()V

    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lbsh/org/objectweb/asm/Label;->g:Z

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->v:Lbsh/org/objectweb/asm/Label;

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-eq p0, v6, :cond_2

    if-ne p0, v5, :cond_3

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_1
    or-int p0, v2, v0

    return p0

    :cond_4
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_6

    :goto_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_9

    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_8

    if-eq v3, v6, :cond_7

    if-ne v3, v5, :cond_0

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    if-eq v1, v6, :cond_b

    if-ne v1, v5, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x2

    :goto_5
    move v1, v3

    goto :goto_0
.end method

.method static a([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static a([I[III)I
    .locals 3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget v2, p0, v1

    if-ge p2, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p3, :cond_1

    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    aget v2, p0, v1

    if-ge p3, v2, :cond_2

    aget v2, p0, v1

    if-gt v2, p2, :cond_2

    aget v2, p1, v1

    sub-int/2addr v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(ILbsh/org/objectweb/asm/Label;)V
    .locals 3

    sget-object v0, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    if-nez v1, :cond_0

    new-instance v1, Lbsh/org/objectweb/asm/Edge;

    invoke-direct {v1}, Lbsh/org/objectweb/asm/Edge;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    iget-object v2, v2, Lbsh/org/objectweb/asm/Edge;->d:Lbsh/org/objectweb/asm/Edge;

    sput-object v2, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->y:Lbsh/org/objectweb/asm/Edge;

    if-nez v0, :cond_1

    iput-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->y:Lbsh/org/objectweb/asm/Edge;

    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->x:Lbsh/org/objectweb/asm/Edge;

    iput-object v0, v1, Lbsh/org/objectweb/asm/Edge;->d:Lbsh/org/objectweb/asm/Edge;

    iput-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->x:Lbsh/org/objectweb/asm/Edge;

    iput p1, v1, Lbsh/org/objectweb/asm/Edge;->a:I

    iput-object p2, v1, Lbsh/org/objectweb/asm/Edge;->b:Lbsh/org/objectweb/asm/Label;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget-object p1, p1, Lbsh/org/objectweb/asm/Label;->e:Lbsh/org/objectweb/asm/Edge;

    iput-object p1, v1, Lbsh/org/objectweb/asm/Edge;->c:Lbsh/org/objectweb/asm/Edge;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iput-object v1, p1, Lbsh/org/objectweb/asm/Label;->e:Lbsh/org/objectweb/asm/Edge;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static a([BII)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static b([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method final a()I
    .locals 4

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [I

    invoke-virtual {p0, v1, v2, v0}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[II)[I

    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v1, 0x8

    if-lez v0, :cond_2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :cond_3
    :goto_0
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_4
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_5
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_6
    return v0
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iput-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->c:Lbsh/org/objectweb/asm/Item;

    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iput-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->d:Lbsh/org/objectweb/asm/Item;

    if-eqz p4, :cond_1

    array-length p2, p4

    if-lez p2, :cond_1

    array-length p2, p4

    iput p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    iget p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    new-array p2, p2, [I

    iput-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->l:[I

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->l:[I

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    aget-object v2, p4, p2

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->a:S

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz p2, :cond_3

    invoke-static {p3}, Lbsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result p2

    shr-int/lit8 p2, p2, 0x2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    iget p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    if-le p2, p1, :cond_3

    iput p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    :cond_3
    return-void
.end method

.method final a(Lbsh/org/objectweb/asm/ByteVector;)V
    .locals 7

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->c:Lbsh/org/objectweb/asm/Item;

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->d:Lbsh/org/objectweb/asm/Item;

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    const/high16 v5, 0x20000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0xc

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_5
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v6, "Code"

    invoke-virtual {v3, v6}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->f:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    invoke-virtual {v0, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v3, v3, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v0, v3, v2, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_6
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->m:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_9
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->o:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_a
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->k:I

    if-lt v0, v1, :cond_b

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->l:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_d
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->e:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_e
    return-void
.end method

.method protected a([I[II)[I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    new-array v5, v3, [I

    new-array v6, v3, [I

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v8, v8, Lbsh/org/objectweb/asm/ByteVector;->b:I

    new-array v8, v8, [Z

    const/4 v9, 0x3

    move-object v10, v6

    move-object v6, v5

    const/4 v5, 0x3

    :goto_0
    if-ne v5, v9, :cond_0

    const/4 v5, 0x2

    :cond_0
    move-object v12, v10

    move-object v10, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    array-length v13, v4

    const/16 v15, 0x84

    const/4 v14, 0x1

    const/4 v11, 0x4

    if-lt v5, v13, :cond_19

    if-ge v6, v9, :cond_1

    add-int/lit8 v6, v6, -0x1

    :cond_1
    move v5, v6

    if-nez v5, :cond_18

    new-instance v6, Lbsh/org/objectweb/asm/ByteVector;

    iget-object v5, v0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const/4 v13, 0x0

    :goto_2
    iget-object v5, v0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v13, v5, :cond_8

    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v3, v4, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v4

    invoke-static {v10, v12, v7, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    invoke-static {v2, v3, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v4, v3, 0x2

    invoke-static {v2, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v5

    invoke-static {v10, v12, v7, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v5

    invoke-static {v2, v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v4, v3, 0x4

    invoke-static {v2, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v5

    invoke-static {v10, v12, v7, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v5

    invoke-static {v2, v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_3

    :cond_3
    :goto_4
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v3, 0x0

    :goto_5
    iget-object v4, v0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v3, v4, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v4

    invoke-static {v10, v12, v7, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v5

    invoke-static {v2, v3, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v8, v3, 0x2

    invoke-static {v2, v8}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    add-int/2addr v4, v8

    invoke-static {v10, v12, v7, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v3, v3, 0xa

    goto :goto_5

    :cond_5
    :goto_6
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v3, 0x0

    :goto_7
    iget-object v4, v0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v3, v4, :cond_6

    goto :goto_8

    :cond_6
    invoke-static {v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v4

    invoke-static {v10, v12, v7, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    invoke-static {v2, v3, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_7

    :cond_7
    :goto_8
    iput-object v6, v0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    return-object v1

    :cond_8
    array-length v5, v10

    sub-int/2addr v5, v14

    :goto_9
    if-gez v5, :cond_15

    aget-byte v5, v4, v13

    and-int/lit16 v5, v5, 0xff

    sget-object v8, Lbsh/org/objectweb/asm/ClassWriter;->f:[B

    aget-byte v8, v8, v5

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/4 v8, 0x2

    const/4 v15, 0x5

    invoke-virtual {v6, v4, v13, v11}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v13, v13, 0x4

    :goto_a
    const/16 v15, 0x84

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v5, v13, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v15, :cond_9

    const/4 v5, 0x6

    invoke-virtual {v6, v4, v13, v5}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v13, v13, 0x6

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6, v4, v13, v11}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v13, v13, 0x4

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v5, v13, 0x4

    and-int/lit8 v8, v13, 0x3

    sub-int/2addr v5, v8

    iget v8, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v8, 0xab

    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_b
    iget v8, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/2addr v8, v11

    if-nez v8, :cond_b

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v8

    add-int/2addr v8, v13

    add-int/2addr v5, v11

    invoke-static {v10, v12, v13, v8}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v8

    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v8

    add-int/2addr v5, v11

    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_c
    if-gtz v8, :cond_a

    move v13, v5

    goto/16 :goto_2

    :cond_a
    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v15

    invoke-virtual {v6, v15}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v15

    add-int/2addr v15, v13

    add-int/2addr v5, v11

    invoke-static {v10, v12, v13, v15}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v15

    invoke-virtual {v6, v15}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v8, v8, -0x1

    const/16 v15, 0x84

    goto :goto_c

    :cond_b
    invoke-virtual {v6, v7}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v15, 0x84

    goto :goto_b

    :pswitch_3
    add-int/lit8 v5, v13, 0x4

    and-int/lit8 v8, v13, 0x3

    sub-int v8, v5, v8

    iget v5, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v5, 0xaa

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_d
    iget v5, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/2addr v5, v11

    if-nez v5, :cond_d

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    add-int/2addr v5, v13

    add-int/2addr v8, v11

    invoke-static {v10, v12, v13, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v5

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    add-int/2addr v8, v11

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v15

    sub-int/2addr v15, v5

    add-int/2addr v15, v14

    add-int/2addr v8, v11

    add-int/lit8 v5, v8, -0x4

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_e
    if-gtz v15, :cond_c

    move v13, v8

    goto/16 :goto_a

    :cond_c
    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    add-int/2addr v5, v13

    add-int/lit8 v8, v8, 0x4

    invoke-static {v10, v12, v13, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v5

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v15, v15, -0x1

    goto :goto_e

    :cond_d
    invoke-virtual {v6, v7}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_d

    :pswitch_4
    add-int/lit8 v8, v13, 0x1

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v8

    add-int/2addr v8, v13

    invoke-static {v10, v12, v13, v8}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v8

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_14

    :pswitch_5
    const/16 v8, 0xc9

    if-le v5, v8, :cond_f

    const/16 v8, 0xda

    if-ge v5, v8, :cond_e

    add-int/lit8 v5, v5, -0x31

    goto :goto_f

    :cond_e
    add-int/lit8 v5, v5, -0x14

    :goto_f
    add-int/lit8 v8, v13, 0x1

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    goto :goto_10

    :cond_f
    add-int/lit8 v8, v13, 0x1

    invoke-static {v4, v8}, Lbsh/org/objectweb/asm/CodeWriter;->b([BI)S

    move-result v8

    :goto_10
    add-int/2addr v8, v13

    invoke-static {v10, v12, v13, v8}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v8

    const/16 v15, -0x8000

    if-lt v8, v15, :cond_11

    const/16 v15, 0x7fff

    if-le v8, v15, :cond_10

    goto :goto_11

    :cond_10
    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_15

    :cond_11
    :goto_11
    const/16 v15, 0xa7

    if-ne v5, v15, :cond_12

    const/16 v5, 0xc8

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_13

    :cond_12
    const/16 v15, 0xa8

    if-ne v5, v15, :cond_13

    const/16 v15, 0xc9

    invoke-virtual {v6, v15}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_13

    :cond_13
    const/16 v15, 0xa6

    if-gt v5, v15, :cond_14

    add-int/lit8 v5, v5, 0x1

    xor-int/2addr v5, v14

    sub-int/2addr v5, v14

    goto :goto_12

    :cond_14
    xor-int/lit8 v5, v5, 0x1

    :goto_12
    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v5, 0xc8

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v8, v8, -0x3

    :goto_13
    invoke-virtual {v6, v8}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_15

    :pswitch_6
    const/4 v15, 0x5

    invoke-virtual {v6, v4, v13, v15}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :goto_14
    add-int/lit8 v13, v13, 0x5

    goto/16 :goto_a

    :pswitch_7
    const/4 v15, 0x5

    invoke-virtual {v6, v4, v13, v9}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :goto_15
    add-int/lit8 v13, v13, 0x3

    goto/16 :goto_a

    :pswitch_8
    const/4 v8, 0x2

    const/4 v15, 0x5

    invoke-virtual {v6, v4, v13, v8}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_a

    :pswitch_9
    const/4 v8, 0x2

    const/4 v15, 0x5

    invoke-virtual {v6, v5}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    :cond_15
    const/4 v15, 0x5

    aget v8, v10, v5

    if-ne v8, v13, :cond_17

    if-ge v5, v3, :cond_17

    aget v8, v2, v5

    if-lez v8, :cond_16

    const/4 v8, 0x0

    aget v15, v2, v5

    invoke-virtual {v6, v8, v7, v15}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_16

    :cond_16
    iget v8, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    aget v15, v2, v5

    add-int/2addr v8, v15

    iput v8, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    :goto_16
    iget v8, v6, Lbsh/org/objectweb/asm/ByteVector;->b:I

    aput v8, v1, v5

    :cond_17
    add-int/lit8 v5, v5, -0x1

    const/16 v15, 0x84

    goto/16 :goto_9

    :cond_18
    move-object v6, v10

    move-object v10, v12

    goto/16 :goto_0

    :cond_19
    const/4 v15, 0x2

    aget-byte v13, v4, v5

    and-int/lit16 v13, v13, 0xff

    sget-object v16, Lbsh/org/objectweb/asm/ClassWriter;->f:[B

    aget-byte v16, v16, v13

    packed-switch v16, :pswitch_data_1

    :cond_1a
    :pswitch_a
    add-int/lit8 v5, v5, 0x4

    :goto_17
    const/4 v11, 0x0

    goto/16 :goto_1f

    :pswitch_b
    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v4, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v13, 0x84

    if-ne v11, v13, :cond_1a

    add-int/lit8 v5, v5, 0x6

    goto :goto_17

    :pswitch_c
    if-ne v6, v14, :cond_1b

    invoke-static {v10, v12, v7, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v11

    and-int/2addr v11, v9

    neg-int v11, v11

    goto :goto_18

    :cond_1b
    aget-boolean v11, v8, v5

    if-nez v11, :cond_1c

    and-int/lit8 v11, v5, 0x3

    aput-boolean v14, v8, v5

    goto :goto_18

    :cond_1c
    const/4 v11, 0x0

    :goto_18
    add-int/lit8 v13, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    sub-int/2addr v13, v5

    add-int/lit8 v5, v13, 0x4

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    const/16 v16, 0x8

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    move v5, v13

    goto/16 :goto_1f

    :pswitch_d
    if-ne v6, v14, :cond_1d

    invoke-static {v10, v12, v7, v5}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v13

    and-int/2addr v13, v9

    neg-int v13, v13

    goto :goto_19

    :cond_1d
    aget-boolean v13, v8, v5

    if-nez v13, :cond_1e

    and-int/lit8 v13, v5, 0x3

    aput-boolean v14, v8, v5

    goto :goto_19

    :cond_1e
    const/4 v13, 0x0

    :goto_19
    add-int/lit8 v16, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    sub-int v16, v16, v5

    add-int/lit8 v5, v16, 0x8

    invoke-static {v4, v5}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v5

    add-int/lit8 v9, v16, 0x4

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v9

    sub-int/2addr v5, v9

    add-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0xc

    add-int v16, v16, v5

    move v11, v13

    move/from16 v5, v16

    goto :goto_1f

    :pswitch_e
    const/16 v9, 0xc9

    if-le v13, v9, :cond_20

    const/16 v9, 0xda

    if-ge v13, v9, :cond_1f

    add-int/lit8 v13, v13, -0x31

    goto :goto_1a

    :cond_1f
    add-int/lit8 v13, v13, -0x14

    :goto_1a
    add-int/lit8 v9, v5, 0x1

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v9

    goto :goto_1b

    :cond_20
    add-int/lit8 v9, v5, 0x1

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->b([BI)S

    move-result v9

    :goto_1b
    add-int/2addr v9, v5

    invoke-static {v10, v12, v5, v9}, Lbsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v9

    const/16 v11, -0x8000

    if-lt v9, v11, :cond_21

    const/16 v11, 0x7fff

    if-le v9, v11, :cond_24

    :cond_21
    aget-boolean v9, v8, v5

    if-nez v9, :cond_24

    const/16 v9, 0xa7

    if-eq v13, v9, :cond_23

    const/16 v9, 0xa8

    if-ne v13, v9, :cond_22

    goto :goto_1c

    :cond_22
    const/16 v17, 0x5

    goto :goto_1d

    :cond_23
    :goto_1c
    const/16 v17, 0x2

    :goto_1d
    aput-boolean v14, v8, v5

    goto :goto_1e

    :cond_24
    const/16 v17, 0x0

    :goto_1e
    add-int/lit8 v5, v5, 0x3

    move/from16 v11, v17

    goto :goto_1f

    :pswitch_f
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_17

    :pswitch_10
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_17

    :pswitch_11
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_17

    :pswitch_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    :goto_1f
    if-eqz v11, :cond_26

    array-length v9, v10

    add-int/2addr v9, v14

    new-array v9, v9, [I

    array-length v13, v12

    add-int/2addr v13, v14

    new-array v13, v13, [I

    array-length v14, v10

    invoke-static {v10, v7, v9, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v12

    invoke-static {v12, v7, v13, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    aput v5, v9, v10

    array-length v10, v12

    aput v11, v13, v10

    if-lez v11, :cond_25

    move-object v10, v9

    move-object v12, v13

    const/4 v6, 0x3

    goto :goto_20

    :cond_25
    move-object v10, v9

    move-object v12, v13

    :cond_26
    :goto_20
    const/4 v9, 0x3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x4a

    const/16 v5, 0x44

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    if-eq v1, v5, :cond_5

    if-ne v1, v4, :cond_6

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/2addr v2, v0

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    const/4 v3, 0x2

    :cond_4
    add-int v2, v0, v3

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v2, -0x3

    :cond_6
    :goto_1
    add-int/2addr v2, v0

    :goto_2
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v2, v0, :cond_7

    iput v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_7
    iput v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_8
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 3

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    :cond_3
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_2
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V
    .locals 5

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v4, v0, Lbsh/org/objectweb/asm/Label;->d:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    add-int/2addr v0, v3

    :goto_0
    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    sget-object v4, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    aget v4, v4, p1

    add-int/2addr v0, v4

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p2, Lbsh/org/objectweb/asm/Label;->a:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lbsh/org/objectweb/asm/Label;->b:I

    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v0, v4

    const/16 v4, -0x8000

    if-ge v0, v4, :cond_6

    const/16 v0, 0xc8

    if-ne p1, v2, :cond_3

    :goto_2
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    :goto_3
    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_5

    :cond_3
    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0xc9

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xa6

    if-gt p1, v2, :cond_5

    add-int/2addr p1, v3

    xor-int/2addr p1, v3

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_5
    xor-int/2addr p1, v3

    :goto_4
    invoke-virtual {v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2

    :goto_5
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v0, v3

    invoke-virtual {p2, p0, p1, v0, v3}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    return-void

    :cond_6
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v0, v3

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    return-void
.end method

.method public visitLabel(Lbsh/org/objectweb/asm/Label;)V
    .locals 3

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->d:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    :cond_0
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_1
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->q:Z

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v1, v2}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->q:Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    iget v0, p1, Lbsh/org/objectweb/asm/Item;->b:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lbsh/org/objectweb/asm/Item;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    add-int/lit8 v0, v0, 0x2

    :goto_1
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v0, v3, :cond_2

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_2
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_3
    iget-short v0, p1, Lbsh/org/objectweb/asm/Item;->a:S

    iget v3, p1, Lbsh/org/objectweb/asm/Item;->b:I

    if-eq v3, v2, :cond_6

    iget p1, p1, Lbsh/org/objectweb/asm/Item;->b:I

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x100

    if-lt v0, p1, :cond_5

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x13

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x14

    :goto_3
    invoke-virtual {p1, v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLineNumber(ILbsh/org/objectweb/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->o:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    iget p2, p2, Lbsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->p:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;I)V
    .locals 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->m:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lbsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget p4, p4, Lbsh/org/objectweb/asm/Label;->b:I

    iget p3, p3, Lbsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr p4, p3

    invoke-virtual {v0, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget-object p4, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {p4, p1}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p3, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    iget-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {p3, p2}, Lbsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->n:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLookupSwitchInsn(Lbsh/org/objectweb/asm/Label;[I[Lbsh/org/objectweb/asm/Label;)V
    .locals 5

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    sub-int/2addr v0, v2

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v3, v0, Lbsh/org/objectweb/asm/Label;->d:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    goto :goto_1

    :cond_0
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    aget-object v4, p3, v0

    invoke-direct {p0, v3, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_2
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v3, v0, v2}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {p1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_3
    array-length p1, p3

    if-lt v1, p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    aget v3, p2, v1

    invoke-virtual {p1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    aget-object p1, p3, v1

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v3, v0, v2}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2
.end method

.method public visitMaxs(II)V
    .locals 4

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->v:Lbsh/org/objectweb/asm/Label;

    :goto_0
    if-nez p2, :cond_1

    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->f:I

    sget-object v0, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->y:Lbsh/org/objectweb/asm/Edge;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->y:Lbsh/org/objectweb/asm/Edge;

    sget-object p2, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    iput-object p2, p1, Lbsh/org/objectweb/asm/Edge;->d:Lbsh/org/objectweb/asm/Edge;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->x:Lbsh/org/objectweb/asm/Edge;

    sput-object p1, Lbsh/org/objectweb/asm/CodeWriter;->z:Lbsh/org/objectweb/asm/Edge;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p2, Lbsh/org/objectweb/asm/Label;->f:Lbsh/org/objectweb/asm/Label;

    iget v1, p2, Lbsh/org/objectweb/asm/Label;->c:I

    iget v2, p2, Lbsh/org/objectweb/asm/Label;->d:I

    add-int/2addr v2, v1

    if-le v2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    iget-object p1, p2, Lbsh/org/objectweb/asm/Label;->e:Lbsh/org/objectweb/asm/Edge;

    move-object p2, v0

    :goto_2
    if-nez p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lbsh/org/objectweb/asm/Edge;->b:Lbsh/org/objectweb/asm/Label;

    iget-boolean v3, v0, Lbsh/org/objectweb/asm/Label;->g:Z

    if-nez v3, :cond_4

    iget v3, p1, Lbsh/org/objectweb/asm/Edge;->a:I

    add-int/2addr v3, v1

    iput v3, v0, Lbsh/org/objectweb/asm/Label;->c:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lbsh/org/objectweb/asm/Label;->g:Z

    iput-object p2, v0, Lbsh/org/objectweb/asm/Label;->f:Lbsh/org/objectweb/asm/Label;

    move-object p2, v0

    :cond_4
    iget-object p1, p1, Lbsh/org/objectweb/asm/Edge;->c:Lbsh/org/objectweb/asm/Edge;

    goto :goto_2

    :cond_5
    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->f:I

    iput p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    :goto_0
    iget p3, p2, Lbsh/org/objectweb/asm/Item;->c:I

    iget-boolean v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v1, :cond_4

    if-nez p3, :cond_1

    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lbsh/org/objectweb/asm/Item;->c:I

    :cond_1
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_2

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    shr-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    and-int/lit8 v2, p3, 0x3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    shr-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    and-int/lit8 v2, p3, 0x3

    add-int/2addr v1, v2

    :goto_1
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v1, v2, :cond_3

    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_3
    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_4
    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-nez p1, :cond_5

    if-nez p3, :cond_5

    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lbsh/org/objectweb/asm/Item;->c:I

    :cond_5
    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_6
    iget-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p3, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p1

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc5

    iget-short p1, p1, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V
    .locals 5

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    sub-int/2addr v0, v2

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v3, v0, Lbsh/org/objectweb/asm/Label;->d:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    invoke-direct {p0, v0, p3}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p4

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    goto :goto_1

    :cond_0
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    aget-object v4, p4, v0

    invoke-direct {p0, v3, v4}, Lbsh/org/objectweb/asm/CodeWriter;->a(ILbsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->b:I

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v4, 0xaa

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_2
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p3, p0, v3, v0, v2}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p3, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_3
    array-length p1, p4

    if-lt v1, p1, :cond_2

    return-void

    :cond_2
    aget-object p1, p4, v1

    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, p2, v0, v2}, Lbsh/org/objectweb/asm/Label;->a(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2
.end method

.method public visitTryCatchBlock(Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lbsh/org/objectweb/asm/Label;->g:Z

    if-nez v0, :cond_0

    iput v1, p3, Lbsh/org/objectweb/asm/Label;->c:I

    iput-boolean v1, p3, Lbsh/org/objectweb/asm/Label;->g:Z

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->v:Lbsh/org/objectweb/asm/Label;

    iput-object v0, p3, Lbsh/org/objectweb/asm/Label;->f:Lbsh/org/objectweb/asm/Label;

    iput-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->v:Lbsh/org/objectweb/asm/Label;

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->i:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_1

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget p1, p1, Lbsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget p2, p2, Lbsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    iget p2, p3, Lbsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->j:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_2

    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {p2, p4}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->b:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object p2

    iget-short p2, p2, Lbsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 3

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->r:Z

    const/16 v1, 0xa9

    if-eqz v0, :cond_5

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->u:Lbsh/org/objectweb/asm/Label;

    goto :goto_0

    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->w:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->t:I

    :cond_1
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->s:I

    :cond_2
    :goto_0
    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x37

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, p2, 0x2

    :goto_2
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    if-le v0, v2, :cond_5

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->g:I

    :cond_5
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    if-eq p1, v1, :cond_7

    const/16 v0, 0x36

    if-ge p1, v0, :cond_6

    add-int/lit8 p1, p1, -0x15

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1a

    :goto_3
    add-int/2addr p1, p2

    goto :goto_4

    :cond_6
    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x3b

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_7
    const/16 v0, 0x100

    if-lt p2, v0, :cond_8

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_8
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->h:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method
