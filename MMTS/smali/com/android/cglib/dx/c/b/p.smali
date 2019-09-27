.class public final Lcom/android/cglib/dx/c/b/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/android/cglib/dx/c/d/c;

.field private final c:Lcom/android/cglib/dx/c/d/e;

.field private final d:Lcom/android/cglib/dx/c/d/e;

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;ILjava/lang/String;)V
    .locals 8

    sget-object v4, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/cglib/dx/c/b/p;-><init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;IZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "result == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p4, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x1

    if-lt p5, v0, :cond_5

    const/4 v0, 0x6

    if-le p5, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p4}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq p5, v0, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "exceptions / branchingness mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iput p1, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    iput-object p3, p0, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    iput-object p4, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    iput p5, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    iput-boolean p6, p0, Lcom/android/cglib/dx/c/b/p;->f:Z

    iput-object p7, p0, Lcom/android/cglib/dx/c/b/p;->g:Ljava/lang/String;

    return-void

    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/cglib/dx/c/b/p;-><init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Ljava/lang/String;)V
    .locals 8

    sget-object v4, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/cglib/dx/c/b/p;-><init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;)V
    .locals 8

    sget-object v2, Lcom/android/cglib/dx/c/d/c;->i:Lcom/android/cglib/dx/c/d/c;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/cglib/dx/c/b/p;-><init>(ILcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/d/e;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/c/b/p;->f:Z

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/p;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/cglib/dx/c/b/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/c/b/p;

    iget v1, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    iget v3, p1, Lcom/android/cglib/dx/c/b/p;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    iget v3, p1, Lcom/android/cglib/dx/c/b/p;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    iget-object v3, p1, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    iget-object v3, p1, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Rop{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/cglib/dx/c/b/p;->a:I

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    sget-object v2, Lcom/android/cglib/dx/c/d/c;->i:Lcom/android/cglib/dx/c/d/c;

    if-eq v1, v2, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " <-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v1}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/cglib/dx/c/b/p;->c:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v5, v4}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/cglib/dx/c/b/p;->f:Z

    if-eqz v1, :cond_3

    const-string v1, " call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v1}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v4, " throws"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v4, v3}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v4

    sget-object v5, Lcom/android/cglib/dx/c/d/c;->r:Lcom/android/cglib/dx/c/d/c;

    if-ne v4, v5, :cond_4

    const-string v4, "<any>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/android/cglib/dx/c/b/p;->d:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v4, v3}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/cglib/dx/c/b/p;->e:I

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :pswitch_0
    const-string v1, " switches"

    goto :goto_5

    :pswitch_1
    const-string v1, " ifs"

    goto :goto_5

    :pswitch_2
    const-string v1, " gotos"

    goto :goto_5

    :pswitch_3
    const-string v1, " returns"

    goto :goto_5

    :pswitch_4
    const-string v1, " flows"

    goto :goto_5

    :cond_6
    :goto_6
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
