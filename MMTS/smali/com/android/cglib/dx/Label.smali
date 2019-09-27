.class public final Lcom/android/cglib/dx/Label;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/c/b/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/android/cglib/dx/Code;

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/Label;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/android/cglib/dx/Label;

.field f:Lcom/android/cglib/dx/Label;

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cglib/dx/Label;->c:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cglib/dx/Label;->g:I

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/Label;

    invoke-virtual {v1}, Lcom/android/cglib/dx/Label;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/Label;

    iget-object v2, v2, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    invoke-virtual {v0}, Lcom/android/cglib/dx/Label;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    iget-object v0, v0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    iput-object v0, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    invoke-virtual {v0}, Lcom/android/cglib/dx/Label;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    iget-object v0, v0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    iput-object v0, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    goto :goto_3

    :cond_3
    return-void
.end method

.method c()Lcom/android/cglib/dx/c/b/b;
    .locals 5

    new-instance v0, Lcom/android/cglib/dx/c/b/g;

    iget-object v1, p0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/g;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/Label;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/android/cglib/dx/c/b/g;->a(ILcom/android/cglib/dx/c/b/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/g;->e()V

    const/4 v1, -0x1

    new-instance v2, Lcom/android/cglib/dx/d/k;

    invoke-direct {v2}, Lcom/android/cglib/dx/d/k;-><init>()V

    iget-object v3, p0, Lcom/android/cglib/dx/Label;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/Label;

    iget v4, v4, Lcom/android/cglib/dx/Label;->g:I

    invoke-virtual {v2, v4}, Lcom/android/cglib/dx/d/k;->b(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/Label;->e:Lcom/android/cglib/dx/Label;

    iget v1, v1, Lcom/android/cglib/dx/Label;->g:I

    invoke-virtual {v2, v1}, Lcom/android/cglib/dx/d/k;->b(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/cglib/dx/Label;->f:Lcom/android/cglib/dx/Label;

    iget v3, v3, Lcom/android/cglib/dx/Label;->g:I

    invoke-virtual {v2, v3}, Lcom/android/cglib/dx/d/k;->b(I)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/cglib/dx/d/k;->e()V

    new-instance v3, Lcom/android/cglib/dx/c/b/b;

    iget v4, p0, Lcom/android/cglib/dx/Label;->g:I

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/cglib/dx/c/b/b;-><init>(ILcom/android/cglib/dx/c/b/g;Lcom/android/cglib/dx/d/k;I)V

    return-object v3
.end method
