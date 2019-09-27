.class public final Lcom/android/cglib/dx/a/b/f;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/w;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/cglib/dx/a/b/n;",
            "Lcom/android/cglib/dx/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/android/cglib/dx/c/c/c;

.field private h:[B


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "thisClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->a:Lcom/android/cglib/dx/c/c/w;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->c:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->g:Lcom/android/cglib/dx/c/c/c;

    return-void
.end method

.method private static a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;I)V
    .locals 3

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "  %-21s %08x"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_size:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p3}, Lcom/android/cglib/dx/d/a;->e(I)I

    return-void
.end method

.method private static a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/a/b/l;",
            "Lcom/android/cglib/dx/d/a;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/android/cglib/dx/a/b/o;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/o;

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/android/cglib/dx/a/b/o;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/f;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;I)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;I)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;I)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;I)V

    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->c()V

    :cond_1
    return-void
.end method

.method private h()Lcom/android/cglib/dx/c/c/c;
    .locals 6

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/n;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/c/a;

    instance-of v2, v1, Lcom/android/cglib/dx/c/c/p;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/cglib/dx/c/c/p;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/p;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v1, Lcom/android/cglib/dx/c/c/c$a;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/c/c/c$a;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/n;

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/c/c/a;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/n;->b()Lcom/android/cglib/dx/c/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/j;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cglib/dx/c/c/y;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/c/a;

    move-result-object v4

    :cond_4
    invoke-virtual {v1, v2, v4}, Lcom/android/cglib/dx/c/c/c$a;->a(ILcom/android/cglib/dx/c/c/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/c$a;->e()V

    new-instance v0, Lcom/android/cglib/dx/c/c/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/c/c;-><init>(Lcom/android/cglib/dx/c/c/c$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->l:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method protected a(Lcom/android/cglib/dx/a/b/ak;I)V
    .locals 0

    new-instance p2, Lcom/android/cglib/dx/d/d;

    invoke-direct {p2}, Lcom/android/cglib/dx/d/d;-><init>()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ak;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/b/f;->b(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p2}, Lcom/android/cglib/dx/d/d;->f()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/f;->h:[B

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/f;->h:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/f;->a(I)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/f;->d()Lcom/android/cglib/dx/c/c/c;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/n;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/a/b/l;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/n;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/a/b/l;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/p;->a(Lcom/android/cglib/dx/a/b/l;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/p;->a(Lcom/android/cglib/dx/a/b/l;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/n;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/n;Lcom/android/cglib/dx/c/c/a;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->g:Lcom/android/cglib/dx/c/c/c;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "static fields already sorted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/b/f;->b(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/f;->h:[B

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->a([B)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/android/cglib/dx/c/c/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->g:Lcom/android/cglib/dx/c/c/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/f;->h()Lcom/android/cglib/dx/c/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/f;->g:Lcom/android/cglib/dx/c/c/c;

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/f;->g:Lcom/android/cglib/dx/c/c/c;

    return-object v0
.end method
