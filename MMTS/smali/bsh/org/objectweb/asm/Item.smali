.class final Lbsh/org/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field a:S

.field b:I

.field c:I

.field d:J

.field e:F

.field f:D

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Lbsh/org/objectweb/asm/Item;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(SLbsh/org/objectweb/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lbsh/org/objectweb/asm/Item;->a:S

    iget p1, p2, Lbsh/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iget p1, p2, Lbsh/org/objectweb/asm/Item;->c:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->c:I

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->d:J

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->d:J

    iget p1, p2, Lbsh/org/objectweb/asm/Item;->e:F

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->e:F

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->f:D

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->f:D

    iget-object p1, p2, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object p1, p0, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object p1, p2, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object p1, p0, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object p1, p2, Lbsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iput-object p1, p0, Lbsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget p1, p2, Lbsh/org/objectweb/asm/Item;->j:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void
.end method


# virtual methods
.method a(D)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->f:D

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    double-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(F)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->e:F

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->c:I

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iput-object p2, p0, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object p3, p0, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object p4, p0, Lbsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    :goto_0
    mul-int p2, p2, p3

    :goto_1
    add-int/2addr p1, p2

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(J)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->d:J

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(Lbsh/org/objectweb/asm/Item;)Z
    .locals 7

    iget v0, p1, Lbsh/org/objectweb/asm/Item;->b:I

    iget v1, p0, Lbsh/org/objectweb/asm/Item;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/16 v3, 0xc

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget-object v0, p0, Lbsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-wide v3, p1, Lbsh/org/objectweb/asm/Item;->f:D

    iget-wide v5, p0, Lbsh/org/objectweb/asm/Item;->f:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :pswitch_1
    iget-wide v3, p1, Lbsh/org/objectweb/asm/Item;->d:J

    iget-wide v5, p0, Lbsh/org/objectweb/asm/Item;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1

    :pswitch_2
    iget p1, p1, Lbsh/org/objectweb/asm/Item;->e:F

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->e:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1

    :pswitch_3
    iget p1, p1, Lbsh/org/objectweb/asm/Item;->c:I

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->c:I

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p0, Lbsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const/4 v1, 0x0

    return v1

    :cond_7
    :pswitch_4
    iget-object p1, p1, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lbsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
