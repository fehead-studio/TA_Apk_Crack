.class public Lcom/nirenr/Color;
.super Ljava/lang/Object;


# instance fields
.field public blue:I

.field public green:I

.field public red:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shl-int/lit8 v0, p1, 0x8

    ushr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/nirenr/Color;->red:I

    shl-int/lit8 v0, p1, 0x10

    ushr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/nirenr/Color;->green:I

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/nirenr/Color;->blue:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nirenr/Color;->red:I

    iput p2, p0, Lcom/nirenr/Color;->green:I

    iput p3, p0, Lcom/nirenr/Color;->blue:I

    return-void
.end method


# virtual methods
.method public getInt()I
    .locals 2

    iget v0, p0, Lcom/nirenr/Color;->red:I

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iget v1, p0, Lcom/nirenr/Color;->green:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/nirenr/Color;->blue:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Color;->red:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Color;->green:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Color;->blue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
