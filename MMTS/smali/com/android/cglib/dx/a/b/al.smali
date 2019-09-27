.class public final Lcom/android/cglib/dx/a/b/al;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/b/al$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/cglib/dx/a/b/al$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/al;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/ak;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ak;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/x;

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/b/al;->a(Lcom/android/cglib/dx/a/b/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/x;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/x;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/al;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/al$a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/al;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/android/cglib/dx/a/b/al$a;

    invoke-direct {v2, p1, v0}, Lcom/android/cglib/dx/a/b/al$a;-><init>(Lcom/android/cglib/dx/a/b/x;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/al$a;->a(Lcom/android/cglib/dx/a/b/x;)V

    return-void
.end method

.method public final a(Lcom/android/cglib/dx/d/a;)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/al;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\nstatistics:\n"

    invoke-interface {p1, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/al;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/al$a;

    invoke-static {v2}, Lcom/android/cglib/dx/a/b/al$a;->a(Lcom/android/cglib/dx/a/b/al$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/al$a;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/al$a;->a(Lcom/android/cglib/dx/d/a;)V

    goto :goto_1

    :cond_2
    return-void
.end method
