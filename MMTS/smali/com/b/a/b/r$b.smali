.class Lcom/b/a/b/r$b;
.super Lcom/b/a/b/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lcom/b/a/b/r;


# direct methods
.method public constructor <init>(Lcom/b/a/b/r;III)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/b/r$a;-><init>(Lcom/b/a/b/r;Lcom/b/a/b/r$1;)V

    iput p2, p0, Lcom/b/a/b/r$b;->a:I

    iput p3, p0, Lcom/b/a/b/r$b;->b:I

    iput p4, p0, Lcom/b/a/b/r$b;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/r$b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/b/r$b;->c()V

    iget-object v0, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    invoke-static {v0}, Lcom/b/a/b/r;->b(Lcom/b/a/b/r;)Lcom/b/a/b/o;

    move-result-object v0

    iget v1, p0, Lcom/b/a/b/r$b;->b:I

    invoke-virtual {v0, v1}, Lcom/b/a/b/o;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    invoke-static {v0}, Lcom/b/a/b/r;->b(Lcom/b/a/b/r;)Lcom/b/a/b/o;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/b/r$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v3, p0, Lcom/b/a/b/r$b;->a:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/o;->a([CIJZ)V

    return-void
.end method

.method public a(IIJ)Z
    .locals 5

    iget-object v0, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    iget-wide v0, v0, Lcom/b/a/b/r;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-gez v4, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    iget-wide v1, v1, Lcom/b/a/b/r;->a:J

    sub-long v3, p3, v1

    const-wide/32 p3, 0x3b9aca00

    cmp-long v1, v3, p3

    if-gez v1, :cond_1

    iget p3, p0, Lcom/b/a/b/r$b;->a:I

    iget p4, p0, Lcom/b/a/b/r$b;->b:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    const/4 p4, 0x1

    add-int/2addr p3, p4

    if-ne p1, p3, :cond_1

    iput p1, p0, Lcom/b/a/b/r$b;->a:I

    iget p1, p0, Lcom/b/a/b/r$b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/b/a/b/r$b;->b:I

    iget-object p1, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    invoke-static {p1}, Lcom/b/a/b/r;->a(Lcom/b/a/b/r;)V

    return p4

    :cond_1
    return v0
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    invoke-static {v0}, Lcom/b/a/b/r;->b(Lcom/b/a/b/r;)Lcom/b/a/b/o;

    move-result-object v1

    iget v2, p0, Lcom/b/a/b/r$b;->a:I

    iget v3, p0, Lcom/b/a/b/r$b;->b:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/b/o;->a(IIJZ)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/b/r$b;->f:Lcom/b/a/b/r;

    invoke-static {v1}, Lcom/b/a/b/r;->b(Lcom/b/a/b/r;)Lcom/b/a/b/o;

    move-result-object v1

    iget v2, p0, Lcom/b/a/b/r$b;->b:I

    invoke-virtual {v1, v2}, Lcom/b/a/b/o;->j(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/b/a/b/r$b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/b/a/b/r$b;->a:I

    iget v1, p0, Lcom/b/a/b/r$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/r$b;->a:I

    return v0
.end method
