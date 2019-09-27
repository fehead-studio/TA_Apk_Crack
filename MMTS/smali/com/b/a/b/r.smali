.class public Lcom/b/a/b/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/r$b;,
        Lcom/b/a/b/r$c;,
        Lcom/b/a/b/r$a;
    }
.end annotation


# instance fields
.field a:J

.field private b:Lcom/b/a/b/o;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/b/a/b/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/b/a/b/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b/r;->d:Z

    iput v0, p0, Lcom/b/a/b/r;->e:I

    iput v0, p0, Lcom/b/a/b/r;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/b/r;->a:J

    iput-object p1, p0, Lcom/b/a/b/r;->b:Lcom/b/a/b/o;

    return-void
.end method

.method private a(Lcom/b/a/b/r$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/r;->h()V

    iget v0, p0, Lcom/b/a/b/r;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/r;->f:I

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/b/a/b/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/b/r;->h()V

    return-void
.end method

.method static synthetic b(Lcom/b/a/b/r;)Lcom/b/a/b/o;
    .locals 0

    iget-object p0, p0, Lcom/b/a/b/r;->b:Lcom/b/a/b/o;

    return-object p0
.end method

.method private h()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/b/a/b/r;->f:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    invoke-virtual {p0}, Lcom/b/a/b/r;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v1, p0, Lcom/b/a/b/r;->f:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/r$a;

    iget v1, v0, Lcom/b/a/b/r$a;->d:I

    :goto_0
    iget-object v2, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v3, p0, Lcom/b/a/b/r;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/b/r$a;

    iget v3, v2, Lcom/b/a/b/r$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/b/a/b/r$a;->a()V

    iget v0, p0, Lcom/b/a/b/r;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/b/r;->f:I

    invoke-virtual {p0}, Lcom/b/a/b/r;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/b/a/b/r$a;->d()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public a(IIJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/b/r;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v2, p0, Lcom/b/a/b/r;->f:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/r$a;

    instance-of v2, v0, Lcom/b/a/b/r$c;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/b/a/b/r$a;->a(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/b/a/b/r$a;->c()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/b/a/b/r$c;

    iget v2, p0, Lcom/b/a/b/r;->e:I

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/b/a/b/r$c;-><init>(Lcom/b/a/b/r;III)V

    invoke-direct {p0, v0}, Lcom/b/a/b/r;->a(Lcom/b/a/b/r$a;)V

    iget-boolean p1, p0, Lcom/b/a/b/r;->d:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/b/a/b/r;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/b/a/b/r;->e:I

    :cond_2
    iput-wide p3, p0, Lcom/b/a/b/r;->a:J

    return-void
.end method

.method public b()I
    .locals 4

    invoke-virtual {p0}, Lcom/b/a/b/r;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v1, p0, Lcom/b/a/b/r;->f:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/r$a;

    iget v1, v0, Lcom/b/a/b/r$a;->d:I

    :goto_0
    iget-object v2, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v3, p0, Lcom/b/a/b/r;->f:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/b/r$a;

    iget v3, v2, Lcom/b/a/b/r$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/b/a/b/r$a;->b()V

    iget v0, p0, Lcom/b/a/b/r;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/r;->f:I

    invoke-virtual {p0}, Lcom/b/a/b/r;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/b/a/b/r$a;->e()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public b(IIJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/b/r;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    iget v2, p0, Lcom/b/a/b/r;->f:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/r$a;

    instance-of v2, v0, Lcom/b/a/b/r$b;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/b/a/b/r$a;->a(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/b/a/b/r$a;->c()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/b/a/b/r$b;

    iget v2, p0, Lcom/b/a/b/r;->e:I

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/b/a/b/r$b;-><init>(Lcom/b/a/b/r;III)V

    invoke-direct {p0, v0}, Lcom/b/a/b/r;->a(Lcom/b/a/b/r$a;)V

    iget-boolean p1, p0, Lcom/b/a/b/r;->d:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/b/a/b/r;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/b/a/b/r;->e:I

    :cond_2
    iput-wide p3, p0, Lcom/b/a/b/r;->a:J

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/b/a/b/r;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/b/a/b/r;->f:I

    iget-object v1, p0, Lcom/b/a/b/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/b/r;->d:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/r;->d:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b/r;->d:Z

    iget v0, p0, Lcom/b/a/b/r;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/r;->e:I

    return-void
.end method
