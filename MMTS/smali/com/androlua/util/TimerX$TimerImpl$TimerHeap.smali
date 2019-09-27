.class final Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/TimerX$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerHeap"
.end annotation


# instance fields
.field private a:I

.field private b:[Lcom/androlua/util/TimerTaskX;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    new-array v0, v0, [Lcom/androlua/util/TimerTaskX;

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/util/TimerX$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;-><init>()V

    return-void
.end method

.method private a(Lcom/androlua/util/TimerTaskX;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;)I
    .locals 0

    iget p0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return p0
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return p1
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerTaskX;)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 8

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/androlua/util/TimerTaskX;->d:J

    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/androlua/util/TimerTaskX;->d:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aput-object v2, v0, v1

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 8

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/androlua/util/TimerTaskX;->d:J

    iget-object v4, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/androlua/util/TimerTaskX;->d:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v1, v1, p1

    iget-wide v1, v1, Lcom/androlua/util/TimerTaskX;->d:J

    iget-object v3, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/androlua/util/TimerTaskX;->d:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget-object v3, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aput-object v1, p1, v0

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public adjustMinimum()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(I)V

    return-void
.end method

.method public delete(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(I)V

    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/androlua/util/TimerTaskX;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    invoke-virtual {p0, v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->delete(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insert(Lcom/androlua/util/TimerTaskX;)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    array-length v0, v0

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/androlua/util/TimerTaskX;

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public minimum()Lcom/androlua/util/TimerTaskX;
    .locals 2

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    new-array v0, v0, [Lcom/androlua/util/TimerTaskX;

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    return-void
.end method
