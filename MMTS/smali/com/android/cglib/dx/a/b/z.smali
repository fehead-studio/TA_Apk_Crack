.class public final Lcom/android/cglib/dx/a/b/z;
.super Lcom/android/cglib/dx/a/b/ag;


# instance fields
.field private final a:Lcom/android/cglib/dx/a/b/y;

.field private final b:Lcom/android/cglib/dx/a/b/ak;

.field private final c:Lcom/android/cglib/dx/a/b/x;

.field private final d:Lcom/android/cglib/dx/a/b/x;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/android/cglib/dx/a/b/ak;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lcom/android/cglib/dx/a/b/y;->h:Lcom/android/cglib/dx/a/b/y;

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/a/b/ak;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/z;->c:Lcom/android/cglib/dx/a/b/x;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/z;->d:Lcom/android/cglib/dx/a/b/x;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/cglib/dx/a/b/z;->e:I

    return-void
.end method

.method private constructor <init>(Lcom/android/cglib/dx/a/b/y;Lcom/android/cglib/dx/a/b/ak;Lcom/android/cglib/dx/a/b/x;Lcom/android/cglib/dx/a/b/x;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/ag;-><init>(II)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "section == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p4, :cond_3

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-gtz p5, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/a/b/ak;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/z;->c:Lcom/android/cglib/dx/a/b/x;

    iput-object p4, p0, Lcom/android/cglib/dx/a/b/z;->d:Lcom/android/cglib/dx/a/b/x;

    iput p5, p0, Lcom/android/cglib/dx/a/b/z;->e:I

    return-void
.end method

.method public static a([Lcom/android/cglib/dx/a/b/ak;Lcom/android/cglib/dx/a/b/af;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/cglib/dx/a/b/af;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v12, v0, v5

    invoke-virtual {v12}, Lcom/android/cglib/dx/a/b/ak;->a()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {v14}, Lcom/android/cglib/dx/a/b/x;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v15

    if-eq v15, v7, :cond_3

    if-eqz v11, :cond_2

    new-instance v8, Lcom/android/cglib/dx/a/b/z;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/cglib/dx/a/b/z;-><init>(Lcom/android/cglib/dx/a/b/y;Lcom/android/cglib/dx/a/b/ak;Lcom/android/cglib/dx/a/b/x;Lcom/android/cglib/dx/a/b/x;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    new-instance v4, Lcom/android/cglib/dx/a/b/z;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/cglib/dx/a/b/z;-><init>(Lcom/android/cglib/dx/a/b/y;Lcom/android/cglib/dx/a/b/ak;Lcom/android/cglib/dx/a/b/x;Lcom/android/cglib/dx/a/b/x;I)V

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-ne v12, v1, :cond_6

    new-instance v4, Lcom/android/cglib/dx/a/b/z;

    invoke-direct {v4, v1}, Lcom/android/cglib/dx/a/b/z;-><init>(Lcom/android/cglib/dx/a/b/ak;)V

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/android/cglib/dx/a/b/at;

    sget-object v3, Lcom/android/cglib/dx/a/b/y;->h:Lcom/android/cglib/dx/a/b/y;

    invoke-direct {v0, v3, v2}, Lcom/android/cglib/dx/a/b/at;-><init>(Lcom/android/cglib/dx/a/b/y;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->s:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 0

    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 5

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/y;->b()I

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/z;->c:Lcom/android/cglib/dx/a/b/x;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/a/b/ak;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/ak;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/a/b/ak;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/z;->c:Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/ak;->a(Lcom/android/cglib/dx/a/b/x;)I

    move-result v0

    :goto_0
    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/z;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/y;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p2, v3, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const-string v1, "  unused: 0"

    invoke-interface {p2, v3, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/cglib/dx/a/b/z;->e:I

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  offset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->c(I)V

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/a;->c(I)V

    iget p1, p0, Lcom/android/cglib/dx/a/b/z;->e:I

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/a/b/ak;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/z;->a:Lcom/android/cglib/dx/a/b/y;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/y;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
