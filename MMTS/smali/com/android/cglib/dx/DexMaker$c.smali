.class Lcom/android/cglib/dx/DexMaker$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/android/cglib/dx/TypeList;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cglib/dx/FieldId;",
            "Lcom/android/cglib/dx/DexMaker$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cglib/dx/MethodId;",
            "Lcom/android/cglib/dx/DexMaker$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/TypeId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/DexMaker$c;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/DexMaker$c;->h:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$c;->a:Lcom/android/cglib/dx/TypeId;

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;I)I
    .locals 0

    iput p1, p0, Lcom/android/cglib/dx/DexMaker$c;->c:I

    return p1
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/TypeId;
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$c;->d:Lcom/android/cglib/dx/TypeId;

    return-object p1
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;Lcom/android/cglib/dx/TypeList;)Lcom/android/cglib/dx/TypeList;
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$c;->f:Lcom/android/cglib/dx/TypeList;

    return-object p1
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/cglib/dx/DexMaker$c;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/cglib/dx/DexMaker$c;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/DexMaker$c;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/android/cglib/dx/DexMaker$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/DexMaker$c;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/android/cglib/dx/DexMaker$c;)Lcom/android/cglib/dx/TypeId;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/DexMaker$c;->d:Lcom/android/cglib/dx/TypeId;

    return-object p0
.end method


# virtual methods
.method a()Lcom/android/cglib/dx/a/b/g;
    .locals 8

    iget-boolean v0, p0, Lcom/android/cglib/dx/DexMaker$c;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/a/b;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/b;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/cglib/dx/a/b;->a:I

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker$c;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v3, v1, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    new-instance v1, Lcom/android/cglib/dx/a/b/g;

    iget v4, p0, Lcom/android/cglib/dx/DexMaker$c;->c:I

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->d:Lcom/android/cglib/dx/TypeId;

    iget-object v5, v2, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->f:Lcom/android/cglib/dx/TypeList;

    iget-object v6, v2, Lcom/android/cglib/dx/TypeList;->b:Lcom/android/cglib/dx/c/d/b;

    new-instance v7, Lcom/android/cglib/dx/c/c/v;

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->e:Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/cglib/dx/a/b/g;-><init>(Lcom/android/cglib/dx/c/c/w;ILcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/v;)V

    iget-object v2, p0, Lcom/android/cglib/dx/DexMaker$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/DexMaker$b;

    invoke-virtual {v3, v0}, Lcom/android/cglib/dx/DexMaker$b;->a(Lcom/android/cglib/dx/a/b;)Lcom/android/cglib/dx/a/b/p;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/DexMaker$b;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/cglib/dx/a/b/g;->b(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/cglib/dx/DexMaker$c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/DexMaker$a;

    invoke-virtual {v2}, Lcom/android/cglib/dx/DexMaker$a;->a()Lcom/android/cglib/dx/a/b/n;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/cglib/dx/DexMaker$a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/android/cglib/dx/DexMaker$a;->a(Lcom/android/cglib/dx/DexMaker$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/cglib/dx/Constants;->a(Ljava/lang/Object;)Lcom/android/cglib/dx/c/c/x;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/n;Lcom/android/cglib/dx/c/c/a;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/n;)V

    goto :goto_1

    :cond_4
    return-object v1
.end method
