.class public final Lcom/android/cglib/dx/a/b/g;
.super Lcom/android/cglib/dx/a/b/w;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/w;

.field private final b:I

.field private final c:Lcom/android/cglib/dx/c/c/w;

.field private d:Lcom/android/cglib/dx/a/b/ar;

.field private final e:Lcom/android/cglib/dx/c/c/v;

.field private final f:Lcom/android/cglib/dx/a/b/f;

.field private g:Lcom/android/cglib/dx/a/b/m;

.field private h:Lcom/android/cglib/dx/a/b/d;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;ILcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/w;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p4, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/g;->a:Lcom/android/cglib/dx/c/c/w;

    iput p2, p0, Lcom/android/cglib/dx/a/b/g;->b:I

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    invoke-interface {p4}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    move-object p2, p3

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/cglib/dx/a/b/ar;

    invoke-direct {p2, p4}, Lcom/android/cglib/dx/a/b/ar;-><init>(Lcom/android/cglib/dx/c/d/e;)V

    :goto_0
    iput-object p2, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    iput-object p5, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    new-instance p2, Lcom/android/cglib/dx/a/b/f;

    invoke-direct {p2, p1}, Lcom/android/cglib/dx/a/b/f;-><init>(Lcom/android/cglib/dx/c/c/w;)V

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/g;->g:Lcom/android/cglib/dx/a/b/m;

    new-instance p1, Lcom/android/cglib/dx/a/b/d;

    invoke-direct {p1}, Lcom/android/cglib/dx/a/b/d;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->g:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->n()Lcom/android/cglib/dx/a/b/af;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->d()Lcom/android/cglib/dx/a/b/af;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->e()Lcom/android/cglib/dx/a/b/af;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/g;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v5}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/ap;

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/b/f;->c()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->i()Lcom/android/cglib/dx/a/b/af;

    move-result-object p1

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {p1, v5}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/f;->d()Lcom/android/cglib/dx/c/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Lcom/android/cglib/dx/a/b/m;

    invoke-direct {v5, p1}, Lcom/android/cglib/dx/a/b/m;-><init>(Lcom/android/cglib/dx/c/c/c;)V

    invoke-virtual {v1, v5}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/m;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/g;->g:Lcom/android/cglib/dx/a/b/m;

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/aq;->a(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/ap;

    :cond_1
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/ar;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v4, p1}, Lcom/android/cglib/dx/a/b/ao;->a(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/an;

    :cond_3
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/d;->c()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/d;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/a/b/af;->b(Lcom/android/cglib/dx/a/b/ag;)Lcom/android/cglib/dx/a/b/ag;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/d;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 13

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/g;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v1, v3}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/c/c/w;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    invoke-static {v3}, Lcom/android/cglib/dx/a/b/ag;->b(Lcom/android/cglib/dx/a/b/ag;)I

    move-result v3

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/b/d;->c()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/cglib/dx/a/b/g;->h:Lcom/android/cglib/dx/a/b/d;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/b/d;->e()I

    move-result v5

    :goto_1
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object p1

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/c/c/v;)I

    move-result v4

    :goto_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/f;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/f;->e()I

    move-result p1

    :goto_3
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/g;->g:Lcom/android/cglib/dx/a/b/m;

    invoke-static {v7}, Lcom/android/cglib/dx/a/b/ag;->b(Lcom/android/cglib/dx/a/b/ag;)I

    move-result v7

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/g;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/cglib/dx/a/b/g;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v8}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  class_idx:           "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x4

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  access_flags:        "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/cglib/dx/a/b/g;->b:I

    invoke-static {v9}, Lcom/android/cglib/dx/c/b/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  superclass_idx:      "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " // "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    if-nez v9, :cond_4

    const-string v9, "<none>"

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v9}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  interfaces_off:      "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/ar;->c()Lcom/android/cglib/dx/c/d/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/e;->a()I

    move-result v9

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v10}, Lcom/android/cglib/dx/c/d/e;->a(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/cglib/dx/c/d/c;->a_()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v6, v11}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  source_file_idx:     "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " // "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    if-nez v6, :cond_6

    const-string v6, "<none>"

    goto :goto_6

    :cond_6
    iget-object v6, p0, Lcom/android/cglib/dx/a/b/g;->e:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v6}, Lcom/android/cglib/dx/c/c/v;->a_()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  annotations_off:     "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  class_data_off:      "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  static_values_off:   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_7
    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/a;->d(I)V

    iget v0, p0, Lcom/android/cglib/dx/a/b/g;->b:I

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v4}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v5}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v7}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/n;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/n;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/n;Lcom/android/cglib/dx/c/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/n;Lcom/android/cglib/dx/c/c/a;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/p;)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->f:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/f;->b(Lcom/android/cglib/dx/a/b/p;)V

    return-void
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public c()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->a:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public d()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->c:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public e()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/g;->d:Lcom/android/cglib/dx/a/b/ar;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/ar;->c()Lcom/android/cglib/dx/c/d/e;

    move-result-object v0

    return-object v0
.end method
