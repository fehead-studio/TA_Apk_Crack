.class Lcom/android/cglib/dx/a/a/w$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/c/b/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/a/a/s;

.field final synthetic b:Lcom/android/cglib/dx/a/a/w;

.field private c:Lcom/android/cglib/dx/c/b/b;

.field private d:Lcom/android/cglib/dx/a/a/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/w;Lcom/android/cglib/dx/a/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/w$b;->a:Lcom/android/cglib/dx/a/a/s;

    return-void
.end method

.method private a()Lcom/android/cglib/dx/c/b/m;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/w$b;->c:Lcom/android/cglib/dx/c/b/b;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/b;->d()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-static {v2}, Lcom/android/cglib/dx/a/a/w;->e(Lcom/android/cglib/dx/a/a/w;)Lcom/android/cglib/dx/c/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/q;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/cglib/dx/c/b/c;->b(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/b;->b()Lcom/android/cglib/dx/c/b/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/g;->a(I)Lcom/android/cglib/dx/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/f;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/f;->f()Lcom/android/cglib/dx/c/b/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/android/cglib/dx/a/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/w$b;->a:Lcom/android/cglib/dx/a/a/s;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/s;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/w$b;->c:Lcom/android/cglib/dx/c/b/b;

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/w$b;->d:Lcom/android/cglib/dx/a/a/e;

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/v;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-static {v2}, Lcom/android/cglib/dx/a/a/w;->b(Lcom/android/cglib/dx/a/a/w;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->f()Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->c()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/c/l;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/l;->e_()I

    move-result p1

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-static {v3}, Lcom/android/cglib/dx/a/a/w;->c(Lcom/android/cglib/dx/a/a/w;)I

    move-result v3

    iget-object v4, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-static {v4}, Lcom/android/cglib/dx/a/a/w;->d(Lcom/android/cglib/dx/a/a/w;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    new-instance v3, Lcom/android/cglib/dx/a/a/x;

    invoke-static {v2, p1}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    new-instance v3, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/j;->c()Lcom/android/cglib/dx/c/c/a;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/android/cglib/dx/a/a/f;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/k;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/k;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/k;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/v;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/w$b;->c:Lcom/android/cglib/dx/c/b/b;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/b;->c()Lcom/android/cglib/dx/d/k;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/d/k;->a(I)I

    move-result v0

    new-instance v3, Lcom/android/cglib/dx/a/a/z;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    iget-object v4, p0, Lcom/android/cglib/dx/a/a/w$b;->b:Lcom/android/cglib/dx/a/a/w;

    invoke-static {v4}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/a/a/w;)Lcom/android/cglib/dx/a/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/cglib/dx/a/a/a;->a(I)Lcom/android/cglib/dx/a/a/e;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/a/a/e;)V

    goto :goto_0

    :pswitch_1
    return-void

    :cond_2
    :pswitch_2
    new-instance v3, Lcom/android/cglib/dx/a/a/x;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/android/cglib/dx/c/b/t;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/t;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/v;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/t;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/t;->c()Lcom/android/cglib/dx/c/c/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v4, p0, Lcom/android/cglib/dx/a/a/w$b;->d:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/t;->g()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    new-instance v2, Lcom/android/cglib/dx/a/a/f;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/android/cglib/dx/a/a/f;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/w$b;->a()Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/j;->d()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eq v6, v7, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->a()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_6

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/j;->a()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_6

    new-instance p1, Lcom/android/cglib/dx/a/a/x;

    invoke-direct {p1, v1, v0, v5}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/android/cglib/dx/a/a/f;

    invoke-direct {p1, v1, v0, v5, v3}, Lcom/android/cglib/dx/a/a/f;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/u;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/u;->e()Lcom/android/cglib/dx/c/b/s;

    move-result-object v0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/v;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/u;->d()Lcom/android/cglib/dx/c/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/w$b;->a()Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/j;->d()Z

    move-result v3

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eq v3, v4, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, p0, Lcom/android/cglib/dx/a/a/w$b;->d:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    new-instance v3, Lcom/android/cglib/dx/a/a/x;

    invoke-static {p1, v2}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/n;)V

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/a/a/w$b;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method
