.class public final Lcom/android/cglib/dx/a/b/af;
.super Lcom/android/cglib/dx/a/b/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/b/af$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/cglib/dx/a/b/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/cglib/dx/a/b/ag;",
            "Lcom/android/cglib/dx/a/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/cglib/dx/a/b/af$a;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/b/af$1;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/b/af$1;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/b/af;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;ILcom/android/cglib/dx/a/b/af$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/b/ak;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/af;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/cglib/dx/a/b/af;->d:Lcom/android/cglib/dx/a/b/af$a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/a/b/af;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/x;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ag;->e()I

    move-result p1

    return p1
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/cglib/dx/a/b/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/ag;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->j()V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ag;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible item alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/b/y;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->i()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/ag;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/ag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/ag;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected a_(Lcom/android/cglib/dx/d/a;)V
    .locals 10

    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/cglib/dx/a/b/ag;

    if-eqz v0, :cond_1

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const-string v8, "\n"

    invoke-interface {p1, v4, v8}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/ag;->f()I

    move-result v8

    sub-int/2addr v8, v3

    add-int v9, v5, v8

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v9

    if-eq v5, v8, :cond_2

    sub-int v5, v8, v5

    invoke-interface {p1, v5}, Lcom/android/cglib/dx/d/a;->g(I)V

    move v5, v8

    :cond_2
    invoke-virtual {v7, v1, p1}, Lcom/android/cglib/dx/a/b/ag;->a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/ag;->b_()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/cglib/dx/a/b/af;->e:I

    if-eq v5, p1, :cond_4

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "output size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/cglib/dx/a/b/ag;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->j()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/ag;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected c()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->e()Lcom/android/cglib/dx/a/b/l;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {v3, v0}, Lcom/android/cglib/dx/a/b/ag;->a(Lcom/android/cglib/dx/a/b/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c_()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->i()V

    iget v0, p0, Lcom/android/cglib/dx/a/b/af;->e:I

    return v0
.end method

.method public d()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/af;->i()V

    sget-object v0, Lcom/android/cglib/dx/a/b/af$2;->a:[I

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/af;->d:Lcom/android/cglib/dx/a/b/af$a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/af$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/cglib/dx/a/b/af;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/ag;

    :try_start_0
    invoke-virtual {v3, p0, v2}, Lcom/android/cglib/dx/a/b/ag;->b(Lcom/android/cglib/dx/a/b/ak;I)I

    move-result v4

    if-ge v4, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus place() result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/ag;->b_()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while placing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object v0

    throw v0

    :cond_1
    iput v2, p0, Lcom/android/cglib/dx/a/b/af;->e:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
