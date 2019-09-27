.class public final Lcom/android/cglib/dx/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/android/cglib/dx/a/a/t;

.field private c:Lcom/android/cglib/dx/a/a/b;

.field private d:Lcom/android/cglib/dx/a/a/d;

.field private e:Lcom/android/cglib/dx/a/a/u;

.field private f:Lcom/android/cglib/dx/a/a/p;

.field private g:Lcom/android/cglib/dx/a/a/i;


# direct methods
.method public constructor <init>(ILcom/android/cglib/dx/a/a/t;Lcom/android/cglib/dx/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedCatches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/android/cglib/dx/a/a/g;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/g;->c:Lcom/android/cglib/dx/a/a/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/g;->d:Lcom/android/cglib/dx/a/a/d;

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/g;->e:Lcom/android/cglib/dx/a/a/u;

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/g;->f:Lcom/android/cglib/dx/a/a/p;

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/t;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    iget v1, p0, Lcom/android/cglib/dx/a/a/g;->a:I

    invoke-static {v0, v1}, Lcom/android/cglib/dx/a/a/u;->a(Lcom/android/cglib/dx/a/a/i;I)Lcom/android/cglib/dx/a/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->e:Lcom/android/cglib/dx/a/a/u;

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/p;->a(Lcom/android/cglib/dx/a/a/i;)Lcom/android/cglib/dx/a/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->f:Lcom/android/cglib/dx/a/a/p;

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->c:Lcom/android/cglib/dx/a/a/b;

    invoke-interface {v0}, Lcom/android/cglib/dx/a/a/b;->a()Lcom/android/cglib/dx/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->d:Lcom/android/cglib/dx/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/g;->c:Lcom/android/cglib/dx/a/a/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/g$a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/g$a;)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/a/g;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/t;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->c:Lcom/android/cglib/dx/a/a/b;

    invoke-interface {v0}, Lcom/android/cglib/dx/a/a/b;->b()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->c:Lcom/android/cglib/dx/a/a/b;

    invoke-interface {v0}, Lcom/android/cglib/dx/a/a/b;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->b:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/t;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/android/cglib/dx/a/a/i;
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/g;->j()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->g:Lcom/android/cglib/dx/a/a/i;

    return-object v0
.end method

.method public g()Lcom/android/cglib/dx/a/a/d;
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/g;->j()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->d:Lcom/android/cglib/dx/a/a/d;

    return-object v0
.end method

.method public h()Lcom/android/cglib/dx/a/a/u;
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/g;->j()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->e:Lcom/android/cglib/dx/a/a/u;

    return-object v0
.end method

.method public i()Lcom/android/cglib/dx/a/a/p;
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/g;->j()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/g;->f:Lcom/android/cglib/dx/a/a/p;

    return-object v0
.end method
