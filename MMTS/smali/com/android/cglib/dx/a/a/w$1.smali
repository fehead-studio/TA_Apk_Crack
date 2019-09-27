.class final Lcom/android/cglib/dx/a/a/w$1;
.super Lcom/android/cglib/dx/c/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/q;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/w$1;->a:[Z

    iput p2, p0, Lcom/android/cglib/dx/a/a/w$1;->b:I

    iput p3, p0, Lcom/android/cglib/dx/a/a/w$1;->c:I

    invoke-direct {p0}, Lcom/android/cglib/dx/c/b/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->c()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/l;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/l;->e_()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/w$1;->a:[Z

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/w$1;->a:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/cglib/dx/a/a/w$1;->b:I

    iget v4, p0, Lcom/android/cglib/dx/a/a/w$1;->c:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->f()Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result p1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v1, v3

    :cond_1
    return-void
.end method
