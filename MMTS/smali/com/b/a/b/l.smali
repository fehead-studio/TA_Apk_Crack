.class public Lcom/b/a/b/l;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/l;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/b/f;Ljava/lang/String;IIZZ)I
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const-string p3, "TextBuffer.find: Invalid start position"

    invoke-static {p3}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result v0

    if-le p4, v0, :cond_2

    const-string p4, "TextBuffer.find: Invalid end position"

    invoke-static {p4}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result p4

    :cond_2
    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    :goto_0
    if-ge p3, p4, :cond_4

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/b/a/b/l;->a(Lcom/b/a/b/f;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/b/a/b/l;->a(Lcom/b/a/b/f;II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Lcom/b/a/b/l;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/l;->a:I

    goto :goto_0

    :cond_4
    :goto_1
    if-ge p3, p4, :cond_5

    return p3

    :cond_5
    return v1
.end method

.method protected a(Lcom/b/a/b/f;II)Z
    .locals 3

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, v2}, Lcom/b/a/b/f;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/b/a/b/h;->b(C)Z

    move-result v2

    :goto_0
    add-int/2addr p2, p3

    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/b/a/b/f;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b/a/b/h;->b(C)Z

    move-result p1

    :goto_1
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected a(Lcom/b/a/b/f;Ljava/lang/String;IZ)Z
    .locals 4

    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-eqz p4, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int v3, v0, p3

    invoke-virtual {p1, v3}, Lcom/b/a/b/f;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    add-int v3, v0, p3

    invoke-virtual {p1, v3}, Lcom/b/a/b/f;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
