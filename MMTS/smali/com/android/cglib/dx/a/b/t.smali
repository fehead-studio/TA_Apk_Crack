.class public final Lcom/android/cglib/dx/a/b/t;
.super Lcom/android/cglib/dx/a/b/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/y;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/y;->a:Lcom/android/cglib/dx/a/b/y;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->f()Lcom/android/cglib/dx/a/b/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/af;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->o()Lcom/android/cglib/dx/a/b/ak;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->p()Lcom/android/cglib/dx/a/b/ak;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/b/ak;->g()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/ak;->g()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/ak;->c_()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->a()Lcom/android/cglib/dx/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v4

    const v5, 0x12345678

    const/16 v6, 0x70

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "magic: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Lcom/android/cglib/dx/c/c/v;

    invoke-direct {v9, v2}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const-string v4, "checksum"

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/16 v4, 0x14

    const-string v9, "signature"

    invoke-interface {p2, v4, v9}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file_size:       "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->b()I

    move-result v9

    invoke-static {v9}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header_size:     "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "endian_tag:      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const-string v4, "link_size:       0"

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const-string v4, "link_off:        0"

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "map_off:         "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-interface {p2, v9}, Lcom/android/cglib/dx/d/a;->b(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/a;->g(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->b()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v6}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v5}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v7}, Lcom/android/cglib/dx/d/a;->g(I)V

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->g()Lcom/android/cglib/dx/a/b/ao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/ao;->b(Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->j()Lcom/android/cglib/dx/a/b/aq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/aq;->b(Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->k()Lcom/android/cglib/dx/a/b/aj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/aj;->b(Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->l()Lcom/android/cglib/dx/a/b/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/s;->a(Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/cglib/dx/a/b/ae;->a(Lcom/android/cglib/dx/d/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->h()Lcom/android/cglib/dx/a/b/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/a/b/h;->a(Lcom/android/cglib/dx/d/a;)V

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_size:       "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_off:        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/a;->d(I)V

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->d(I)V

    return-void
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method
