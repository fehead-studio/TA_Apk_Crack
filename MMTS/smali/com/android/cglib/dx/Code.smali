.class public final Lcom/android/cglib/dx/Code;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Label;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/cglib/dx/Label;

.field private d:Z

.field private final e:Lcom/android/cglib/dx/Local;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/Local<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Local<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Local<",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:Lcom/android/cglib/dx/c/b/s;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Label;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/android/cglib/dx/c/d/b;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/DexMaker$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->g:Ljava/util/List;

    sget-object v0, Lcom/android/cglib/dx/c/b/s;->a:Lcom/android/cglib/dx/c/b/s;

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->j:Ljava/util/List;

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v0, p1, Lcom/android/cglib/dx/DexMaker$b;->a:Lcom/android/cglib/dx/MethodId;

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    invoke-virtual {p1}, Lcom/android/cglib/dx/DexMaker$b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object p1, p1, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    invoke-static {p0, p1}, Lcom/android/cglib/dx/Local;->a(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object p1, p1, Lcom/android/cglib/dx/MethodId;->d:Lcom/android/cglib/dx/TypeList;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeList;->a:[Lcom/android/cglib/dx/TypeId;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/android/cglib/dx/Local;->a(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/cglib/dx/Label;

    invoke-direct {p1}, Lcom/android/cglib/dx/Label;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/cglib/dx/Label;->c:Z

    return-void
.end method

.method private a(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but was "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p1
.end method

.method private static a(Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)Lcom/android/cglib/dx/c/b/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)",
            "Lcom/android/cglib/dx/c/b/n;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/android/cglib/dx/c/b/n;

    array-length v3, p1

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Lcom/android/cglib/dx/c/b/n;-><init>(I)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    :cond_1
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_2

    add-int p0, v0, v1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/cglib/dx/c/b/n;->a(ILcom/android/cglib/dx/c/b/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private a(Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/b/p;
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/c;->c()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/d/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/cglib/dx/c/b/r;->bu:Lcom/android/cglib/dx/c/b/p;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/android/cglib/dx/c/b/r;->bt:Lcom/android/cglib/dx/c/b/p;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/cglib/dx/c/b/r;->bv:Lcom/android/cglib/dx/c/b/p;

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p2, p1}, Lcom/android/cglib/dx/c/b/r;->a(Lcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/util/List;)Lcom/android/cglib/dx/c/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;>;)",
            "Lcom/android/cglib/dx/c/d/b;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/d/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/d/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/TypeId;

    iget-object v2, v2, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v0, v1, v2}, Lcom/android/cglib/dx/c/d/b;->a(ILcom/android/cglib/dx/c/d/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/android/cglib/dx/Label;)V
    .locals 1

    iget-object v0, p1, Lcom/android/cglib/dx/Label;->b:Lcom/android/cglib/dx/Code;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/cglib/dx/Label;->b:Lcom/android/cglib/dx/Code;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot adopt label; it belongs to another Code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p0, p1, Lcom/android/cglib/dx/Label;->b:Lcom/android/cglib/dx/Code;

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/android/cglib/dx/Label;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Label;",
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Label;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/Label;

    invoke-direct {v0}, Lcom/android/cglib/dx/Label;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iput-object v0, v1, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iput-object p1, v1, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iput-object p2, p1, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/cglib/dx/Label;->c:Z

    return-void
.end method

.method private a(Lcom/android/cglib/dx/Local;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object p2, p2, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/r;->d(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object p2, p2, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/r;->c(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p2

    :goto_0
    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    sget-object v2, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/Label;)V

    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/Label;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iget-boolean v0, v0, Lcom/android/cglib/dx/Label;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iget-object v0, v0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "branch == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;Ljava/util/List;)V

    return-void

    :pswitch_1
    if-nez p2, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "branch == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    iput-object p2, p1, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected branch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    return-void

    :pswitch_3
    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected branch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected branch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/cglib/dx/Code;->j:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;Ljava/util/List;)V

    return-void

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/c/b/p;",
            "Lcom/android/cglib/dx/MethodId<",
            "TD;TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "+TD;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-static {p4, p5}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p2, Lcom/android/cglib/dx/MethodId;->f:Lcom/android/cglib/dx/c/c/s;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/Label;

    invoke-virtual {v2}, Lcom/android/cglib/dx/Label;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/cglib/dx/Label;->b()V

    add-int/lit8 v3, v1, 0x1

    iput v1, v2, Lcom/android/cglib/dx/Label;->g:I

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 13

    iget-boolean v0, p0, Lcom/android/cglib/dx/Code;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cglib/dx/Code;->d:Z

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/Local;

    invoke-virtual {v3, v2}, Lcom/android/cglib/dx/Local;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cglib/dx/Local;

    sub-int v6, v4, v2

    invoke-static {v6}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object v12

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/Local;->a(I)I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Lcom/android/cglib/dx/c/b/j;

    iget-object v7, v5, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v7, v7, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v7}, Lcom/android/cglib/dx/c/b/r;->b(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v8

    iget-object v9, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {v5}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object v10

    sget-object v11, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/cglib/dx/c/b/j;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/Label;

    iget-object v2, v2, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public addCatchClause(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/Label;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/android/cglib/dx/Label;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/Code;->a(Ljava/util/List;)Lcom/android/cglib/dx/c/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aget(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    iget-object v1, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/r;->k(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p2

    iget-object p3, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public aput(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    iget-object v1, p3, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/r;->l(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public arrayLength(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bC:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p2

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method b()I
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/Local;

    invoke-virtual {v2}, Lcom/android/cglib/dx/Local;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method c()Lcom/android/cglib/dx/c/b/c;
    .locals 3

    iget-boolean v0, p0, Lcom/android/cglib/dx/Code;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/cglib/dx/Code;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/android/cglib/dx/Code;->d()V

    new-instance v0, Lcom/android/cglib/dx/c/b/c;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/c;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/Label;

    invoke-virtual {v2}, Lcom/android/cglib/dx/Label;->c()Lcom/android/cglib/dx/c/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/cglib/dx/c/b/c;->a(ILcom/android/cglib/dx/c/b/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public cast(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->getType()Lcom/android/cglib/dx/TypeId;

    move-result-object v0

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/cglib/dx/c/b/t;

    sget-object v2, Lcom/android/cglib/dx/c/b/r;->ch:Lcom/android/cglib/dx/c/b/p;

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object p2, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v6, p2, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    iget-object v2, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v2, v2, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {p0, v1, v2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public compare(Lcom/android/cglib/dx/Comparison;Lcom/android/cglib/dx/Label;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Comparison;",
            "Lcom/android/cglib/dx/Label;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    iget-object v0, p3, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    iget-object v1, p4, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/d/b;->a(Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/Comparison;->rop(Lcom/android/cglib/dx/c/d/e;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {v0, p1, v1, p4, p3}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/Label;)V

    return-void
.end method

.method public compareFloatingPoint(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object p4, p4, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p4}, Lcom/android/cglib/dx/c/b/r;->i(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    iget-object p4, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object p4, p4, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p4}, Lcom/android/cglib/dx/c/b/r;->h(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p4

    :goto_0
    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p2

    invoke-direct {v0, p4, v1, p1, p2}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected 1 or -1 but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareLongs(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bc:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public getParameter(ILcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/Code;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/Local;

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object p1

    return-object p1
.end method

.method public getThis(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "static methods cannot access \'this\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/Code;->e:Lcom/android/cglib/dx/Local;

    invoke-direct {p0, v0, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object p1

    return-object p1
.end method

.method public iget(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/FieldId<",
            "TD;TV;>;",
            "Lcom/android/cglib/dx/Local<",
            "TV;>;",
            "Lcom/android/cglib/dx/Local<",
            "TD;>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v0, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->n(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-static {p3}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p1, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public instanceOfType(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/TypeId;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/Local<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->ci:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p3, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public varargs invokeDirect(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/MethodId<",
            "TD;TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "+TD;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/MethodId;->b(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->d(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public varargs invokeInterface(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/MethodId<",
            "TD;TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "+TD;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/MethodId;->b(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->e(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public varargs invokeStatic(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/MethodId<",
            "*TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/MethodId;->b(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->a(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public varargs invokeSuper(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/MethodId<",
            "TD;TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "+TD;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/MethodId;->b(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->c(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public varargs invokeVirtual(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/MethodId<",
            "TD;TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "-TR;>;",
            "Lcom/android/cglib/dx/Local<",
            "+TD;>;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/MethodId;->b(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->b(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public iput(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/FieldId<",
            "TD;TV;>;",
            "Lcom/android/cglib/dx/Local<",
            "TD;>;",
            "Lcom/android/cglib/dx/Local<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v0, p3, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->o(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p1, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public jump(Lcom/android/cglib/dx/Label;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->s:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    sget-object v3, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/Label;)V

    return-void
.end method

.method public loadConstant(Lcom/android/cglib/dx/Local;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/cglib/dx/c/b/r;->r:Lcom/android/cglib/dx/c/b/p;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->e(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    new-instance v0, Lcom/android/cglib/dx/c/b/j;

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    sget-object v5, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    invoke-static {p2}, Lcom/android/cglib/dx/Constants;->a(Ljava/lang/Object;)Lcom/android/cglib/dx/c/c/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/c/b/j;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/cglib/dx/c/b/t;

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    sget-object v4, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    iget-object v5, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-static {p2}, Lcom/android/cglib/dx/Constants;->a(Ljava/lang/Object;)Lcom/android/cglib/dx/c/c/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    invoke-direct {p0, p1, v7}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public mark(Lcom/android/cglib/dx/Label;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Label;)V

    iget-boolean v0, p1, Lcom/android/cglib/dx/Label;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already marked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/cglib/dx/Label;->c:Z

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/Code;->jump(Lcom/android/cglib/dx/Label;)V

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/Code;->c:Lcom/android/cglib/dx/Label;

    return-void
.end method

.method public monitorEnter(Lcom/android/cglib/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bE:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public monitorExit(Lcom/android/cglib/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bE:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public move(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/r;->a(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public newArray(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/Local<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v0, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->m(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object p2, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v5, p2, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public varargs newInstance(Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/MethodId;[Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/MethodId<",
            "TT;",
            "Ljava/lang/Void;",
            ">;[",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bY:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    sget-object v3, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v0, p2, Lcom/android/cglib/dx/MethodId;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v5, v0, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/cglib/dx/Code;->invokeDirect(Lcom/android/cglib/dx/MethodId;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;[Lcom/android/cglib/dx/Local;)V

    return-void
.end method

.method public newLocal(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/cglib/dx/Code;->d:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot allocate locals after adding instructions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/cglib/dx/Local;->a(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public op(Lcom/android/cglib/dx/BinaryOp;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/BinaryOp;",
            "Lcom/android/cglib/dx/Local<",
            "TT1;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT1;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT2;>;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    iget-object v1, p4, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/d/b;->a(Lcom/android/cglib/dx/c/d/c;Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/BinaryOp;->rop(Lcom/android/cglib/dx/c/d/e;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance p4, Lcom/android/cglib/dx/c/b/k;

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-direct {p4, p1, v0, p2, p3}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, p4}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void

    :cond_0
    new-instance p4, Lcom/android/cglib/dx/c/b/u;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {p4, p1, v1, p3, v2}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, p4}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    invoke-direct {p0, p2, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public op(Lcom/android/cglib/dx/UnaryOp;Lcom/android/cglib/dx/Local;Lcom/android/cglib/dx/Local;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/UnaryOp;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p3, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/UnaryOp;->rop(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p3

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public removeCatchClause(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Label;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/android/cglib/dx/Label;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No catch clause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->i:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/Code;->a(Ljava/util/List;)Lcom/android/cglib/dx/c/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object p1, p0, Lcom/android/cglib/dx/Code;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/Label;

    return-object p1
.end method

.method public returnValue(Lcom/android/cglib/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object v1, v1, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object v2, v2, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    iget-object v1, p1, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v1, v1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/r;->j(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public returnVoid()V
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object v0, v0, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/TypeId;->VOID:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->a:Lcom/android/cglib/dx/MethodId;

    iget-object v2, v2, Lcom/android/cglib/dx/MethodId;->b:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned void"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/c/b/k;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bw:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public sget(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/FieldId<",
            "*TV;>;",
            "Lcom/android/cglib/dx/Local<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v0, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->p(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    sget-object v3, Lcom/android/cglib/dx/c/b/n;->a:Lcom/android/cglib/dx/c/b/n;

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p1, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/Local;Z)V

    return-void
.end method

.method public sput(Lcom/android/cglib/dx/FieldId;Lcom/android/cglib/dx/Local;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/FieldId<",
            "*TV;>;",
            "Lcom/android/cglib/dx/Local<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/cglib/dx/c/b/t;

    iget-object v0, p2, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/r;->q(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p2}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p2

    invoke-static {p2}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    iget-object v5, p1, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/t;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V

    invoke-direct {p0, v6}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method

.method public throwValue(Lcom/android/cglib/dx/Local;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Local<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/c/b/u;

    sget-object v1, Lcom/android/cglib/dx/c/b/r;->bD:Lcom/android/cglib/dx/c/b/p;

    iget-object v2, p0, Lcom/android/cglib/dx/Code;->h:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p1}, Lcom/android/cglib/dx/Local;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    iget-object v3, p0, Lcom/android/cglib/dx/Code;->k:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/c/b/u;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/d/e;)V

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/Code;->a(Lcom/android/cglib/dx/c/b/f;)V

    return-void
.end method
