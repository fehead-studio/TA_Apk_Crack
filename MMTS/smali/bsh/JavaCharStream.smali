.class public Lbsh/JavaCharStream;
.super Ljava/lang/Object;


# static fields
.field public static final staticFlag:Z


# instance fields
.field a:I

.field b:I

.field public bufpos:I

.field c:I

.field protected d:[I

.field protected e:[I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Ljava/io/Reader;

.field protected k:[C

.field protected l:[C

.field protected m:I

.field protected n:I

.field protected o:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 0

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-direct {p4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x1000

    invoke-direct {p0, p4, p2, p3, p1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    const/4 v1, 0x0

    iput v1, p0, Lbsh/JavaCharStream;->f:I

    const/4 v2, 0x1

    iput v2, p0, Lbsh/JavaCharStream;->g:I

    iput-boolean v1, p0, Lbsh/JavaCharStream;->h:Z

    iput-boolean v1, p0, Lbsh/JavaCharStream;->i:Z

    iput v1, p0, Lbsh/JavaCharStream;->m:I

    iput v0, p0, Lbsh/JavaCharStream;->n:I

    iput v1, p0, Lbsh/JavaCharStream;->o:I

    iput-object p1, p0, Lbsh/JavaCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lbsh/JavaCharStream;->g:I

    sub-int/2addr p3, v2

    iput p3, p0, Lbsh/JavaCharStream;->f:I

    iput p4, p0, Lbsh/JavaCharStream;->a:I

    iput p4, p0, Lbsh/JavaCharStream;->b:I

    new-array p1, p4, [C

    iput-object p1, p0, Lbsh/JavaCharStream;->l:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lbsh/JavaCharStream;->d:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lbsh/JavaCharStream;->e:[I

    const/16 p1, 0x1000

    new-array p1, p1, [C

    iput-object p1, p0, Lbsh/JavaCharStream;->k:[C

    return-void
.end method

.method static final a(C)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_c
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/4 p0, 0x1

    return p0

    :pswitch_f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public BeginToken()C
    .locals 3

    iget v0, p0, Lbsh/JavaCharStream;->o:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lbsh/JavaCharStream;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->o:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->a:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_0
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lbsh/JavaCharStream;->c:I

    iget-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iput v1, p0, Lbsh/JavaCharStream;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    return v0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/JavaCharStream;->k:[C

    iput-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iput-object v0, p0, Lbsh/JavaCharStream;->d:[I

    iput-object v0, p0, Lbsh/JavaCharStream;->e:[I

    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/JavaCharStream;->l:[C

    iget v2, p0, Lbsh/JavaCharStream;->c:I

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->l:[C

    iget v3, p0, Lbsh/JavaCharStream;->c:I

    iget v4, p0, Lbsh/JavaCharStream;->a:I

    iget v5, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->l:[C

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 5

    new-array v0, p1, [C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lbsh/JavaCharStream;->l:[C

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lbsh/JavaCharStream;->l:[C

    iget v3, p0, Lbsh/JavaCharStream;->a:I

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lbsh/JavaCharStream;->l:[C

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 0

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-direct {p4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x1000

    invoke-virtual {p0, p4, p2, p3, p1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v0, v0, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 0

    iput-object p1, p0, Lbsh/JavaCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lbsh/JavaCharStream;->g:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lbsh/JavaCharStream;->f:I

    iget-object p1, p0, Lbsh/JavaCharStream;->l:[C

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbsh/JavaCharStream;->l:[C

    array-length p1, p1

    if-eq p4, p1, :cond_1

    :cond_0
    iput p4, p0, Lbsh/JavaCharStream;->a:I

    iput p4, p0, Lbsh/JavaCharStream;->b:I

    new-array p1, p4, [C

    iput-object p1, p0, Lbsh/JavaCharStream;->l:[C

    new-array p1, p4, [I

    iput-object p1, p0, Lbsh/JavaCharStream;->d:[I

    new-array p1, p4, [I

    iput-object p1, p0, Lbsh/JavaCharStream;->e:[I

    const/16 p1, 0x1000

    new-array p1, p1, [C

    iput-object p1, p0, Lbsh/JavaCharStream;->k:[C

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lbsh/JavaCharStream;->h:Z

    iput-boolean p1, p0, Lbsh/JavaCharStream;->i:Z

    iput p1, p0, Lbsh/JavaCharStream;->m:I

    iput p1, p0, Lbsh/JavaCharStream;->o:I

    iput p1, p0, Lbsh/JavaCharStream;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lbsh/JavaCharStream;->bufpos:I

    iput p1, p0, Lbsh/JavaCharStream;->n:I

    return-void
.end method

.method protected a()V
    .locals 6

    iget v0, p0, Lbsh/JavaCharStream;->m:I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_0

    iput v1, p0, Lbsh/JavaCharStream;->n:I

    iput v1, p0, Lbsh/JavaCharStream;->m:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/JavaCharStream;->j:Ljava/io/Reader;

    iget-object v3, p0, Lbsh/JavaCharStream;->k:[C

    iget v4, p0, Lbsh/JavaCharStream;->m:I

    iget v5, p0, Lbsh/JavaCharStream;->m:I

    sub-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lbsh/JavaCharStream;->j:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    iget v2, p0, Lbsh/JavaCharStream;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lbsh/JavaCharStream;->m:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    if-eqz v2, :cond_2

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0, v1}, Lbsh/JavaCharStream;->backup(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbsh/JavaCharStream;->d:[I

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v3, p0, Lbsh/JavaCharStream;->g:I

    aput v3, v1, v2

    iget-object v1, p0, Lbsh/JavaCharStream;->e:[I

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v3, p0, Lbsh/JavaCharStream;->f:I

    aput v3, v1, v2

    :goto_0
    throw v0
.end method

.method protected a(Z)V
    .locals 7

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    iget v1, p0, Lbsh/JavaCharStream;->a:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    iget v2, p0, Lbsh/JavaCharStream;->a:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lbsh/JavaCharStream;->l:[C

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    iget v5, p0, Lbsh/JavaCharStream;->a:I

    iget v6, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {p1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lbsh/JavaCharStream;->l:[C

    iget v4, p0, Lbsh/JavaCharStream;->a:I

    iget v5, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {p1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iget-object p1, p0, Lbsh/JavaCharStream;->d:[I

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v4, p0, Lbsh/JavaCharStream;->a:I

    iget v5, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lbsh/JavaCharStream;->d:[I

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v0, v4

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {p1, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lbsh/JavaCharStream;->d:[I

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v1, p0, Lbsh/JavaCharStream;->a:I

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v1, v4

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lbsh/JavaCharStream;->e:[I

    iget p1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lbsh/JavaCharStream;->bufpos:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lbsh/JavaCharStream;->l:[C

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    iget v5, p0, Lbsh/JavaCharStream;->a:I

    iget v6, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {p1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iget-object p1, p0, Lbsh/JavaCharStream;->d:[I

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v4, p0, Lbsh/JavaCharStream;->a:I

    iget v5, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lbsh/JavaCharStream;->d:[I

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v1, p0, Lbsh/JavaCharStream;->a:I

    iget v4, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v1, v4

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lbsh/JavaCharStream;->e:[I

    iget p1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget p1, p0, Lbsh/JavaCharStream;->a:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lbsh/JavaCharStream;->a:I

    iput p1, p0, Lbsh/JavaCharStream;->b:I

    iput v3, p0, Lbsh/JavaCharStream;->c:I

    return-void

    :goto_1
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adjustBeginLineColumn(II)V
    .locals 8

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->c:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v1, v2

    iget v2, p0, Lbsh/JavaCharStream;->o:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/JavaCharStream;->a:I

    iget v2, p0, Lbsh/JavaCharStream;->c:I

    sub-int/2addr v1, v2

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lbsh/JavaCharStream;->o:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lbsh/JavaCharStream;->d:[I

    iget v5, p0, Lbsh/JavaCharStream;->a:I

    rem-int v5, v0, v5

    aget v4, v4, v5

    iget-object v6, p0, Lbsh/JavaCharStream;->d:[I

    add-int/lit8 v0, v0, 0x1

    iget v7, p0, Lbsh/JavaCharStream;->a:I

    rem-int v7, v0, v7

    aget v6, v6, v7

    if-eq v4, v6, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lbsh/JavaCharStream;->d:[I

    aput p1, v4, v5

    iget-object v4, p0, Lbsh/JavaCharStream;->e:[I

    aget v4, v4, v7

    add-int/2addr v4, v3

    iget-object v6, p0, Lbsh/JavaCharStream;->e:[I

    aget v6, v6, v5

    sub-int/2addr v4, v6

    iget-object v6, p0, Lbsh/JavaCharStream;->e:[I

    add-int/2addr v3, p2

    aput v3, v6, v5

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v5, p0, Lbsh/JavaCharStream;->d:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v4

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    add-int/2addr p2, v3

    aput p2, p1, v4

    :goto_3
    add-int/lit8 p1, v2, 0x1

    if-lt v2, v1, :cond_3

    goto :goto_5

    :cond_3
    iget-object p2, p0, Lbsh/JavaCharStream;->d:[I

    iget v2, p0, Lbsh/JavaCharStream;->a:I

    rem-int v4, v0, v2

    aget p2, p2, v4

    iget-object v2, p0, Lbsh/JavaCharStream;->d:[I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lbsh/JavaCharStream;->a:I

    rem-int v3, v0, v3

    aget v2, v2, v3

    if-eq p2, v2, :cond_4

    iget-object p2, p0, Lbsh/JavaCharStream;->d:[I

    add-int/lit8 v2, v6, 0x1

    aput v6, p2, v4

    move v6, v2

    :goto_4
    move v2, p1

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lbsh/JavaCharStream;->d:[I

    aput v6, p2, v4

    goto :goto_4

    :cond_5
    :goto_5
    iget-object p1, p0, Lbsh/JavaCharStream;->d:[I

    aget p1, p1, v4

    iput p1, p0, Lbsh/JavaCharStream;->g:I

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    aget p1, p1, v4

    iput p1, p0, Lbsh/JavaCharStream;->f:I

    return-void
.end method

.method protected b()C
    .locals 2

    iget v0, p0, Lbsh/JavaCharStream;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->n:I

    iget v1, p0, Lbsh/JavaCharStream;->m:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lbsh/JavaCharStream;->a()V

    :cond_0
    iget-object v0, p0, Lbsh/JavaCharStream;->k:[C

    iget v1, p0, Lbsh/JavaCharStream;->n:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected b(C)V
    .locals 3

    iget v0, p0, Lbsh/JavaCharStream;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->f:I

    iget-boolean v0, p0, Lbsh/JavaCharStream;->i:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lbsh/JavaCharStream;->i:Z

    :cond_0
    iget v0, p0, Lbsh/JavaCharStream;->g:I

    iput v1, p0, Lbsh/JavaCharStream;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->g:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lbsh/JavaCharStream;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lbsh/JavaCharStream;->h:Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lbsh/JavaCharStream;->i:Z

    :cond_2
    :goto_0
    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v1, p0, Lbsh/JavaCharStream;->i:Z

    goto :goto_1

    :pswitch_1
    iget p1, p0, Lbsh/JavaCharStream;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lbsh/JavaCharStream;->f:I

    iget p1, p0, Lbsh/JavaCharStream;->f:I

    iget v0, p0, Lbsh/JavaCharStream;->f:I

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    iput p1, p0, Lbsh/JavaCharStream;->f:I

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lbsh/JavaCharStream;->h:Z

    :goto_1
    iget-object p1, p0, Lbsh/JavaCharStream;->d:[I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->g:I

    aput v1, p1, v0

    iget-object p1, p0, Lbsh/JavaCharStream;->e:[I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->f:I

    aput v1, p1, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public backup(I)V
    .locals 1

    iget v0, p0, Lbsh/JavaCharStream;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->o:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v0, :cond_0

    iget p1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    iget v0, p0, Lbsh/JavaCharStream;->b:I

    iget v1, p0, Lbsh/JavaCharStream;->a:I

    const/16 v2, 0x800

    if-ne v0, v1, :cond_2

    iget v0, p0, Lbsh/JavaCharStream;->c:I

    const/4 v1, 0x0

    if-le v0, v2, :cond_1

    iput v1, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_0
    iget v0, p0, Lbsh/JavaCharStream;->c:I

    :goto_0
    iput v0, p0, Lbsh/JavaCharStream;->b:I

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lbsh/JavaCharStream;->a(Z)V

    return-void

    :cond_2
    iget v0, p0, Lbsh/JavaCharStream;->b:I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lbsh/JavaCharStream;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lbsh/JavaCharStream;->c:I

    iget v1, p0, Lbsh/JavaCharStream;->b:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->a(Z)V

    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->e:[I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->d:[I

    iget v1, p0, Lbsh/JavaCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->e:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->e:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->d:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    iget-object v0, p0, Lbsh/JavaCharStream;->d:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .locals 7

    iget v0, p0, Lbsh/JavaCharStream;->o:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lbsh/JavaCharStream;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->o:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_0
    iget-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->b:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lbsh/JavaCharStream;->c()V

    :cond_2
    iget-object v0, p0, Lbsh/JavaCharStream;->l:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v3

    aput-char v3, v0, v2

    const/16 v0, 0x5c

    if-ne v3, v0, :cond_a

    invoke-virtual {p0, v3}, Lbsh/JavaCharStream;->b(C)V

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v3, v1

    iput v3, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v4, p0, Lbsh/JavaCharStream;->b:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lbsh/JavaCharStream;->c()V

    :cond_3
    :try_start_0
    iget-object v3, p0, Lbsh/JavaCharStream;->l:[C

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v5

    aput-char v5, v3, v4

    if-eq v5, v0, :cond_8

    invoke-virtual {p0, v5}, Lbsh/JavaCharStream;->b(C)V

    const/16 v3, 0x75

    if-ne v5, v3, :cond_7

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_7

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v4, :cond_4

    iget v4, p0, Lbsh/JavaCharStream;->a:I

    sub-int/2addr v4, v1

    iput v4, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v4

    if-eq v4, v3, :cond_6

    iget-object v3, p0, Lbsh/JavaCharStream;->l:[C

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v4}, Lbsh/JavaCharStream;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->a(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->a(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    invoke-virtual {p0}, Lbsh/JavaCharStream;->b()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->a(C)I

    move-result v6

    or-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v3, v5

    iget v3, p0, Lbsh/JavaCharStream;->f:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lbsh/JavaCharStream;->f:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v1, :cond_5

    return v4

    :cond_5
    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->backup(I)V

    return v0

    :cond_6
    :try_start_2
    iget v4, p0, Lbsh/JavaCharStream;->f:I

    add-int/2addr v4, v1

    iput v4, p0, Lbsh/JavaCharStream;->f:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid escape character at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lbsh/JavaCharStream;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lbsh/JavaCharStream;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_3
    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return v0

    :cond_8
    invoke-virtual {p0, v5}, Lbsh/JavaCharStream;->b(C)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    if-le v2, v1, :cond_9

    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->backup(I)V

    :cond_9
    return v0

    :cond_a
    invoke-virtual {p0, v3}, Lbsh/JavaCharStream;->b(C)V

    return v3
.end method
